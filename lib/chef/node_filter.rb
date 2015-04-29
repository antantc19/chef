class Chef
  class NodeMapValue
    def initialize(&filter)
    end

    def <=>(other)
      priority <=> other.priority
    end
    def priority
      Float::INFINITY
    end
    def value
      filter.call(run_context)
    end
  end

  class FilteredValue
    def initialize(name, os: nil, platform: nil, platform_family: nil, &filter)
      @name = name
      @os = os
      @platform = platform
      @platform_family = platform_family
      super(&filter)
    end

    def <=>(other)
      if other.is_a?(FilteredValue)
        if platform_family != other.platform_family
          return platform_family ? -1 : 1
        end
        if platform != other.platform
          return platform ? -1 : 1
        end
        if os != other.os
          return os ? -1 : 1
        end
      end
    end
  end
end
