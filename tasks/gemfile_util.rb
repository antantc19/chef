require "bundler"
require "set"

module GemfileUtil
  # gemspec and gem need to use absolute paths for things in order for our Gemfile
  # to be *included* in another. This works around some issues in bundler 1.11.2.
  def gemspec(options = {})
    options[:path] = File.expand_path(options[:path] || ".", Bundler.default_gemfile.dirname)
    super
  end

  #
  # gemspec and gem need to use absolute paths for things in order for our Gemfile
  # to be *included* in another. This works around some issues in bundler 1.11.2.
  # Also adds `override: true`, which allows your statement to override any other
  # gem statement about the same gem in the Gemfile.
  #
  def gem(name, *args)
    Bundler.ui.debug "gem #{name}, #{args.join(", ")}"
    current_dep = dependencies.find { |dep| dep.name == name }

    # Set path to absolute in case this is an included Gemfile in bundler 1.11.2 and below
    options = args[-1].is_a?(Hash) ? args[-1] : {}
    if options[:path]
      # path sourced gems are assumed to be overrides.
      options[:override] = true
      options[:path] = File.expand_path(options[:path], Bundler.default_gemfile.dirname)
    end
    # Handle override
    if options[:override]
      override = true
      options.delete(:override)
      if current_dep
        dependencies.delete(current_dep)
      end
    else
      # If an override gem already exists, and we're not an override gem,
      # ignore this gem in favor of the override (but warn if they don't match)
      if overridden_gems.include?(name)
        args.pop if args[-1].is_a?(Hash)
        version = args || [">=0"]
        desired_dep = Bundler::Dependency.new(name, version, options.dup)
        if desired_dep =~ current_dep
          Bundler.ui.debug "Replaced Gemfile dependency #{desired_dep} (#{desired_dep.source}) with override gem #{current_dep} (#{current_dep.source})"
        else
          Bundler.ui.warn "Replaced Gemfile dependency #{desired_dep} (#{desired_dep.source}) with incompatible override gem #{current_dep} (#{current_dep.source})"
        end
        return
      end
    end

    # Add the gem normally
    super

    overridden_gems << name if override

    # Emit a warning if we're replacing a dep that doesn't match
    if current_dep && override
      added_dep = dependencies.find { |dep| dep.name == name }
      if added_dep =~ current_dep
        Bundler.ui.debug "Replaced Gemfile dependency #{current_dep} (#{current_dep.source}) with override gem #{added_dep} (#{added_dep.source})"
      else
        Bundler.ui.warn "Replaced Gemfile dependency #{current_dep} (#{current_dep.source}) with incompatible override gem #{added_dep} (#{added_dep.source})"
      end
    end
  end

  def overridden_gems
    @overridden_gems ||= Set.new
  end

  #
  # Include all gems in the locked gemfile.
  #
  # @param gemfile Path to the Gemfile to load
  # @param groups A list of groups to include (whitelist). If not passed (or set
  #               to nil), all gems will be selected.
  # @param gems A list of gems to include above and beyond the given groups.
  #             Gems in this list must be explicitly included in the Gemfile
  #             with a `gem "gem_name", ...` line or they will be silently
  #             ignored.
  #
  def include_locked_gemfile(gemfile, groups: nil, gems: [])
    Bundler.ui.info "Loading locks from #{gemfile} ..."
    gemfile = File.expand_path(gemfile, Bundler.default_gemfile.dirname)

    #
    # Read the gemfile and inject its locks as first-class dependencies
    #
    old_gemfile = ENV["BUNDLE_GEMFILE"]
    old_frozen = Bundler.settings[:frozen]
    begin
      # Set frozen to true so we don't try to install stuff.
      Bundler.settings[:frozen] = true
      # Set BUNDLE_GEMFILE to the new gemfile temporarily so all bundler's things work
      # This works around some issues in bundler 1.11.2.
      ENV["BUNDLE_GEMFILE"] = gemfile
      bundle = Bundler::Definition.build(gemfile, "#{gemfile}.lock", nil)
      # Narrow it down to just the dependencies in the desired groups
      dependencies = bundle.dependencies.select do |dep|
        groups.nil? || (dep.groups & groups).any? || gems.include?(dep.name)
      end
      # Get the resolved specs descended from our dependencies, from the lockfile
      # This is sacrilege: figure out a way we can grab the list of dependencies *without*
      # requiring everything to be installed or calling private methods ...
      specs = bundle.resolve.for(bundle.send(:expand_dependencies, dependencies))

      # Go through and create the actual gemfile from the given locks and
      # groups.
      specs.sort_by { |spec| spec.name }.each do |spec|
        # bundler can't be installed by bundler so don't pin it.
        next if spec.name == "bundler"

        # Copy groups and platforms from included Gemfile
        gem_metadata = {}
        dep = bundle.dependencies.find { |d| d.name == spec.name }
        if dep
          gem_metadata[:groups] = dep.groups unless dep.groups == [:default]
          gem_metadata[:platforms] = dep.platforms unless dep.platforms.empty?
        end
        gem_metadata[:override] = true

        # Copy source information from included Gemfile
        use_version = false
        case spec.source
        when Bundler::Source::Rubygems
          gem_metadata[:source] = spec.source.remotes.first.to_s
          use_version = true
        when Bundler::Source::Git
          gem_metadata[:git] = spec.source.uri.to_s
          gem_metadata[:ref] = spec.source.revision
        when Bundler::Source::Path
          gem_metadata[:path] = spec.source.path.to_s
        else
          raise "Unknown source #{spec.source} for gem #{spec.name}"
        end

        # Emit the dep
        if use_version
          Bundler.ui.debug("Adding #{spec.name}, #{spec.version}, #{gem_metadata} from #{gemfile}")
          gem spec.name, spec.version, gem_metadata
        else
          Bundler.ui.debug("Adding #{spec.name}, #{gem_metadata} from #{gemfile}")
          gem spec.name, gem_metadata
        end
      end

      Bundler.ui.info "Loaded #{bundle.resolve.count} locked gem versions #{groups ? "from groups #{groups.join(", ")}" : ""}#{gems.empty? ? "" : " (including #{gems.join(", ")})"} from #{gemfile}"
    rescue Exception
      # Bundler does a bad job of rescuing.
      Bundler.ui.info $!
      Bundler.ui.info $!.backtrace
      raise
    ensure
      Bundler.settings[:frozen] = old_frozen
      ENV["BUNDLE_GEMFILE"] = old_gemfile
    end
  end
end
