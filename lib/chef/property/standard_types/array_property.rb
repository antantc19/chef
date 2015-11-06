class Chef
  class Property
    module StandardTypes
      class ArrayProperty < Property
        def initialize(**options)
          options[:is] ||= Array
          options[:coerce] ||= proc { |v| v.is_a?(Array) ? v : Array(v) }
          super
        end
      end
    end
  end
end
