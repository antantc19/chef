#
# Author:: Bryan McLellan (btm@loftninjas.org)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2009 Bryan McLellan
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/resource'

class Chef
  class Resource
    class Cron < Chef::Resource

      identity_attr :command

      state_attrs :minute, :hour, :day, :month, :weekday, :user

      default_action :create
      allowed_actions :create, :delete

      # TODO these can be DRY'd a *lot*.  Consider the type [ 0..59, '*' ]
      property :minute, String, default: '*', coerce: proc do |arg|
        arg = arg.to_s if arg.is_a?(Integer)
        begin
          if integerize(arg) > 59 then raise RangeError end
        rescue ArgumentError
        end
        arg
      end
      property :hour, String, default: '*', coerce: proc do |arg|
        arg = arg.to_s if arg.is_a?(Integer)
        begin
          if integerize(arg) > 23 then raise RangeError end
        rescue ArgumentError
        end
        arg
      end
      property :day, String, default: '*', coerce: proc do |arg|
        arg = arg.to_s if arg.is_a?(Integer)
        begin
          if integerize(arg) > 31 then raise RangeError end
        rescue ArgumentError
        end
        arg
      end
      property :month, String, default: '*', coerce: proc do |arg|
        arg = arg.to_s if arg.is_a?(Integer)
        begin
          if integerize(arg) > 12 then raise RangeError end
        rescue ArgumentError
        end
        arg
      end
      # Consider the type [ 0..7, Provider::Cron::WEEKDAY_SYMBOLS, '*' ]
      property :weekday, String, default: '*', coerce: proc do |arg|
        arg = arg.to_s if arg.is_a?(Integer)
        begin
          error_message = "You provided '#{arg}' as a weekday, acceptable values are "
          error_message << Provider::Cron::WEEKDAY_SYMBOLS.map {|sym| ":#{sym.to_s}"}.join(', ')
          error_message << " and a string in crontab format"
          if (arg.is_a?(Symbol) && !Provider::Cron::WEEKDAY_SYMBOLS.include?(arg)) ||
            (!arg.is_a?(Symbol) && integerize(arg) > 7) ||
            (!arg.is_a?(Symbol) && integerize(arg) < 0)
            raise RangeError, error_message
          end
        rescue ArgumentError
        end
        arg
      end
      property :command, String
      property :user, String, default: 'root'
      property :mailto, String
      property :path, String
      property :shell, String
      property :home, String
      property :time, Chef::Provider::Cron::SPECIAL_TIME_VALUES
      property :environment, Hash, default: lazy { {} }

      private

      # On Ruby 1.8, Kernel#Integer will happily do this for you. On 1.9, no.
      def integerize(integerish)
        Integer(integerish)
      rescue TypeError
        0
      end
    end
  end
end
