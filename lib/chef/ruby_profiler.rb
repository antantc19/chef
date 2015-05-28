#
# Author:: Ryan Cragun (<ryan@chef.io>)
# Copyright:: Copyright (c) 2015 Chef, Inc.
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

require 'ruby-prof'

class Chef
  module RubyProfiler
    def self.profile(config = {}, &block)
      if config[:ruby_profile] || Chef::Config[:ruby_profile]
        measure_mode = config[:ruby_profile_measure_mode] || Chef::Config[:ruby_profile_measure_mode]
        measure_mode = RubyProf.const_get("RubyProf::#{measure_mode.upcase}")

        profile_printer = config[:ruby_profile_printer] || Chef::Config[:ruby_profile_printer]
        profile_printer = profile_printer.split('_').map { |c| c.capitalize }.join
        profile_printer = RubyProf.const_get("RubyProf::#{profile_printer}")

        if file = config[:ruby_profile_outfile] || Chef::Config[:ruby_profile_outfile]
          profile_out = File.open(file, 'w+')
        end
        profile_out ||= $stdout

        RubyProf.measure_mode = measure_mode

        res = RubyProf.profile { block.call }
        printer = profile_printer.new(res)
        printer.print(profile_out)
      else
        block.call
      end
    end
  end
end
