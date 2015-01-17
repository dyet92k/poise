#
# Copyright 2013-2015, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/mixin/convert_to_class_name'

module Poise
  module Resource
    # Helper module to automatically set @resource_name
    module ResourceName
      def initialize(*args)
        super
        @resource_name ||= Chef::Mixin::ConvertToClassName.convert_to_snake_case(self.class.name, 'Chef::Resource').to_sym if self.class.name
      end
    end
  end
end
