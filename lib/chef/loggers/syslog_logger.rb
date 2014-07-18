require 'syslog'
require 'logger'

class Chef
  module Loggers
    class SyslogLogger < Logger

      def initialize(args)
        @progname = 'chef-client'
        @level = DEBUG
        @facility = SysLog::LOG_USER
        @formatter = nil
        @logdev = STDOUT
        unless Syslog.opened?
          @logdev = Syslog.open(progname, nil, facility)
        end
      end
    end

    # class LocklessLogDevice < Logger::LogDevice
    #   def initialize(log = nil)
    #     @dev = @filename = @shift_age = @shift_size = nil
    #     if log.respond_to?(:write) and log.respond_to?(:close)
    #       @dev = log
    #     else
    #       @dev = open_logfile(log)
    #       @filename = log
    #     end
    #     @dev.sync = true
    #   end
    #
    #   def write(message)
    #     @dev.write(message)
    #   rescue Exception => ignored
    #     warn("log writing failed. #{ignored}")
    #   end
    #
    #   def close
    #     @dev.close rescue nil
    #   end
    #
    # private
    #
    #   def open_logfile(filename)
    #     if (FileTest.exist?(filename))
    #       open(filename, (File::WRONLY | File::APPEND))
    #     else
    #       create_logfile(filename)
    #     end
    #   end
    #
    #   def create_logfile(filename)
    #     logdev = open(filename, (File::WRONLY | File::APPEND | File::CREAT))
    #     add_log_header(logdev)
    #     logdev
    #   end
    #
    #   def add_log_header(file)
    #     file.write(
    #       "# Logfile created on %s by %s\n" % [Time.now.to_s, Logger::ProgName]
    #     )
    #   end
    # end
  end
end
