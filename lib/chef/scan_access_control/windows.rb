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

class Chef
  class ScanAccessControl
    class WindowsMask

      # Maps descriptions similar to those provided by the Windows GUI to
      # Windows Access Mask Bits.
      #
      # Descriptions of the masks are here:
      # http://msdn.microsoft.com/en-us/library/windows/desktop/gg258116(v=vs.85).aspx
      # http://msdn.microsoft.com/en-us/library/windows/desktop/aa379607(v=vs.85).aspx
      #
      # The descriptions are taken from the Windows GUI.
      MASK_BY_DESCRIPTION = {

        # Generic Access Rights
        "generic read"                      => 0x80_000_000,
        "generic write"                     => 0x40_000_000,
        "generic execute"                   => 0x20_000_000,
        "generic all"                       => 0x10_000_000,
        # Standard Access Rights
        "delete"                            => 0x00_010_000,
        "read permissions"                  => 0x00_020_000,
        "change permissions"                => 0x00_040_000,
        "take ownership"                    => 0x00_080_000,
        "synchronize"                       => 0x00_100_000,
        # Access System Security Right
        "access system security"            => 0x01_000_000,
        # File/Directory Specific Rights
        "read data / list directory"        => 0x00_000_001,
        "write data / add file"             => 0x00_000_002,
        "append data / add subdirectory"    => 0x00_000_004,
        # Chef doesn't support named pipe
        # "create pipe instance"              => 0x00000004,
        "read extended attributes"          => 0x00_000_008,
        "write extended attributes"         => 0x00_000_010,
        "execute / traverse"                => 0x00_000_020,
        "delete child"                      => 0x00_000_040,
        "read attributes"                   => 0x00_000_080,
        "write attributes"                  => 0x00_000_100
      }

      def initialize(mask)
        @mask = mask
      end

      def rights
        rights = []
        MASK_BY_DESCRIPTION.each do |description, mask_bits|
          rights << description.dup if mask_bits & @mask == mask_bits
        end
        rights
      end
    end
  end
end
