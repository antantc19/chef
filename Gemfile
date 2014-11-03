source "https://rubygems.org"
gemspec :name => "chef"

gem "activesupport", "< 4.0.0", :group => :compat_testing, :platform => "ruby"

gem "ipaddress", :git => "https://github.com/bluemonk/ipaddress.git",
                 :ref => "27a4d39661507bd068f50cc9cb3f652772ff56a3"

gem "ohai", :git => "https://github.com/opscode/ohai.git", :branch => "shain/ipaddress"

group(:docgen) do
  gem "yard"
end

group(:development, :test) do
  gem "simplecov"
  gem 'rack', "~> 1.5.1"

  gem 'ruby-shadow', :platforms => :ruby unless RUBY_PLATFORM.downcase.match(/(aix|cygwin)/)
end

# If you want to load debugging tools into the bundle exec sandbox,
# add these additional dependencies into chef/Gemfile.local
eval(IO.read(__FILE__ + '.local'), binding) if File.exists?(__FILE__ + '.local')
