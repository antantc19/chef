require 'chef/chef_fs/parallelizer'

class Chef
  module ChefFS
    class ChefFSAlgorithm
      def initialize(ui: nil, dry_run: dry_run, format_path: format_path)
        @ui = ui
        @dry_run = dry_run
        @format_path = format_path
      end

      attr_reader :ui

      def dry_run?
        @dry_run
      end

      def options
        {
          dry_run: dry_run?,
          format_path: @format_path
        }
      end

      def converge(description, dry_run_text: nil, dry_run_block: nil, action: nil, &block)
        if dry_run?
          dry_run_text ||= "Would have #{description[0..0].downcase}#{description[1..-1]}"
          begin
            result = dry_run_block.call if dry_run_block
            output dry_run_text
            return result
          rescue
            error "Error during attempt to #{description}"
            raise
          end

        else
          action ||= block
          begin
            result = action.call if action
            output description
            return result
          rescue
            error "Error during attempt to #{description}"
            raise
          end
        end
      end

      def parallel_do(enum, options = {}, &block)
        Chef::ChefFS::Parallelizer.parallel_do(enum, options, &block)
      end

      def output(string)
        ui.output string if ui
      end
      def warn(string)
        ui.warn string if ui
      end
      def error(string)
        ui.error string if ui
      end

      def format_path(entry)
        @format_path ? @format_path.call(entry) : entry.path
      end
    end
  end
end
