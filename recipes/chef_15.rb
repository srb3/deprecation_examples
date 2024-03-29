#
# Cookbook:: deprecation_examples
# Recipe:: default
#
# Copyright:: 2019, Steve Brown
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

sysctl_param 'vm.swappiness' do
  value 20
end

if node['filesystem']
  Chef::Log.info 'filesystem'
end

if node['cloud']
  Chef::Log.info 'cloud'
end

util_new 'test' do
  my_content 'will this work'
  action :doit
end

shell_out!('ls', ['-l'])
