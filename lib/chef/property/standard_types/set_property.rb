class Chef
  class Property
    module StandardTypes
      class SetProperty < Property
        def initialize(**options)
          options[:is] ||= Set
          options[:coerce] ||= proc { |v| v.is_a?(Set) ? v : Set.new(v) }
          super
        end
      end
    end
  end
end
