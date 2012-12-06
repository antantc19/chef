#
# Author:: Daniel DeLeo (<dan@opscode.com>)
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

require 'spec_helper'
require 'chef/scan_access_control/windows'

describe Chef::ScanAccessControl::WindowsMask do

  def description_of(mask)
    Chef::ScanAccessControl::WindowsMask.new(mask).rights
  end

  it "finds 'generic read' in a mask" do
    # 0x80_000_000
    description_of(0xff_fff_fff).should include("generic read")
    description_of(0x7f_fff_fff).should_not include("generic read")
  end

  it "finds 'generic write' in a mask" do
    # 0x40_000_000
    description_of(0xff_fff_fff).should include("generic write")
    description_of(0xbf_fff_fff).should_not include("generic write")
  end

  it "finds 'generic execute' in a mask" do
    # 0x20_000_000
    description_of(0xff_fff_fff).should include("generic execute")
    description_of(0xdf_fff_fff).should_not include("generic execute")
  end

  it "finds 'generic all' in a mask" do
    # 0x10_000_000
    description_of(0xff_fff_fff).should include("generic all")
    description_of(0xef_fff_fff).should_not include("generic all")
  end

  it "finds 'delete' in a mask" do
    # 0x00_010_000
    description_of(0xff_fff_fff).should include("delete")
    description_of(0xff_fef_fff).should_not include("delete")
  end

  it "finds 'read permissions' in a mask" do
    # 0x00_020_000
    description_of(0xff_fff_fff).should include("read permissions")
    description_of(0xff_fdf_fff).should_not include("read permissions")
  end

  it "finds 'change permissions' in a mask" do
    # 0x00_040_000
    description_of(0xff_fff_fff).should include("change permissions")
    description_of(0xff_fbf_fff).should_not include("change permissions")
  end

  it "finds 'take ownership' in a mask" do
    # 0x00_080_000
    description_of(0xff_fff_fff).should include("take ownership")
    description_of(0xff_f7f_fff).should_not include("take ownership")
  end

  it "finds 'synchronize' in a mask" do
    # 0x00_100_000
    description_of(0xff_fff_fff).should include("synchronize")
    description_of(0xff_eff_fff).should_not include("synchronize")
  end

  it "finds 'access system security' in a mask" do
    # 0x_01_000_000
    description_of(0xff_fff_fff).should include("access system security")
    description_of(0xfe_fff_fff).should_not include("access system security")
  end

  it "finds 'read data / list directory' in a mask" do
    # 0x00_000_001
    description_of(0xff_fff_fff).should include("read data / list directory")
    description_of(0xff_fff_ffe).should_not include("read data / list directory")
  end

  it "finds 'write data / add file' in a mask" do
    # 0x00_000_002
    description_of(0xff_fff_fff).should include("write data / add file")
    description_of(0xff_fff_ffd).should_not include("write data / add file")
  end

  it "finds 'append data / add subdirectory' in a mask" do
    # 0x00_000_004
    description_of(0xff_fff_fff).should include("append data / add subdirectory")
    description_of(0xff_fff_ffb).should_not include("append data / add subdirectory")
  end

  it "finds 'read extended attributes' in  a mask" do
    # 0x00_000_008
    description_of(0xff_fff_fff).should include("read extended attributes")
    description_of(0xff_fff_ff7).should_not include("read extended attributes")
  end

  it "finds 'write extended attributes' in a mask" do
    # 0x00_000_010
    description_of(0xff_fff_fff).should include("write extended attributes")
    description_of(0xff_fff_fef).should_not include("write extended attributes")
  end

  it "finds 'execute / traverse' in a mask" do
    # 0x00_000_020
    description_of(0xff_fff_fff).should include("execute / traverse")
    description_of(0xff_fff_fdf).should_not include("execute / traverse")
  end

  it "finds 'delete child' in a mask" do
    # 0x00_000_040
    description_of(0xff_fff_fff).should include("delete child")
    description_of(0xff_fff_fbf).should_not include("delete child")
  end

  it "finds 'read attributes' in a mask" do
    # 0x00_000_080
    description_of(0xff_fff_fff).should include("read attributes")
    description_of(0xff_fff_f7f).should_not include("read attributes")
  end

  it "finds 'write attributes' in a mask" do
    # 0x00_000_100
    description_of(0xff_fff_fff).should include("write attributes")
    description_of(0xff_fff_eff).should_not include("write attributes")
  end

end

