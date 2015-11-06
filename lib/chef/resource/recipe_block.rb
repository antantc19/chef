#
# Author:: John Keiser (<jkeiser@chef.io)
# Copyright:: Copyright (c) 2015 Opscode, Inc.
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
    #
    # A converge-time recipe.
    #
    # Resources inside the block behave exactly the same as resources
    # in a Chef::Resource#action block.
    #
    # Example:
    #
    #   file '/x.txt' do
    #     content 'hi'
    #   end
    #   recipe_block 'make a file with the length of /x.txt in it' do
    #     block do
    #       # Since we are in a recipe_block, the file '/x.txt' block has
    #       # already converged and we can do this calculation here!
    #       length_of_file = IO.read('/x.txt').length
    #       file '/x-length.txt' do
    #         content "Length: #{length_of_file}"
    #       end
    #       # However, if we tried to IO.read('/x-length.txt') here, it would
    #       # fail, because the entire block is first compiled and then converged.
    #     end
    #   end
    #
    class RecipeBlock < Chef::Resource
      resource_name :recipe_block

      #
      # A ruby block containing the recipe that will be run.
      #
      # All recipe DSL is valid here too.
      #
      # @example Using a block argument
      #   recipe_block 'hi' do
      #     block do
      #       file '/x.txt'
      #     end
      #   end
      #
      # @example Passing the proc directly
      #   recipe_block 'hi' do
      #     x = proc { file '/x.txt '}
      #     block x
      #   end
      #
      property :block, ProcProperty

      #
      # Compiles and converges the block as a recipe. The resource will be
      # marked updated (and notify) if any of the resources in the recipe update.
      # Behavior is identical to Chef::Resource#action.
      #
      action :run do
        instance_eval(&recipe_block)
      end
    end
  end
end
