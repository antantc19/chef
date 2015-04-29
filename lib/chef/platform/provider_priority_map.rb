
class Chef
  class Platform
    class ProviderPriorityMap
      include Singleton

      def get_priority_array(node, resource_name)
        priority_map.get(node, resource_name.to_sym)
      end

      def set_priority_array(resource_name, priority_array, *filter)
        priority(resource_name.to_sym, priority_array.to_a, *filter)
      end

      def priority(*args)
        priority_map.set(*args)
      end
    end
  end
end
