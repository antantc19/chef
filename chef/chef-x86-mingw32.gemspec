#
# Author:: Mark Mzyk (<mmzyk@opscode.com>)
# Copyright:: Copyright (c) 2012 Opscode, Inc.
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

require 'pathname'
path = Pathname.new('.').join('chef.gemspec')
gemspec = eval(path.read)

gemspec.platform = "x86-mingw32"

gemspec.add_dependency "ffi", "1.0.9"
gemspec.add_dependency "rdp-ruby-wmi", "0.3.1"
gemspec.add_dependency "windows-api", "0.4.0"
gemspec.add_dependency "windows-pr", "1.2.1"
gemspec.add_dependency "win32-api", "1.4.8"
gemspec.add_dependency "win32-dir", "0.3.7"
gemspec.add_dependency "win32-event", "0.5.2"
gemspec.add_dependency "win32-mutex", "0.3.1"
gemspec.add_dependency "win32-process", "0.6.5"
gemspec.add_dependency "win32-service", "0.7.2"

gemspec
