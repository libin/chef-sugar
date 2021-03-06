#
# Copyright 2013, Seth Vargo <sethvargo@gmail.com>
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
  class Node
    #
    # Determine if the current node is in the given Chef environment
    # (or matches the given regular expression).
    #
    # @param [String, Regex] environment
    #
    # @return [Boolean]
    #
    def in?(environment)
      environment === chef_environment
    end

    #
    # Determine if the current node includes the given recipe name.
    #
    # @param [String] recipe_name
    #
    def includes_recipe?(recipe_name)
      run_list.include?(recipe_name)
    end
    alias_method :include_recipe?, :includes_recipe?
  end
end
