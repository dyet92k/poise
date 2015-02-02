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

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poise/version'

Gem::Specification.new do |spec|
  spec.name = 'poise'
  spec.version = Poise::VERSION
  spec.authors = ['Noah Kantrowitz']
  spec.email = %w{noah@coderanger.net}
  spec.description = "Helpers for writing extensible Chef cookbooks."
  spec.summary = spec.description
  spec.homepage = 'https://github.com/poise/poise'
  spec.license = 'Apache 2.0'

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{lib}

  spec.add_dependency 'halite', '~> 1.0.0.rc.1'

  spec.add_development_dependency 'rake', '~> 10.4.2'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.1.0'
  spec.add_development_dependency 'chefspec', '~> 4.2.0'
  spec.add_development_dependency 'fuubar', '~> 2.0.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'simplecov', '~> 0.9.1'
  spec.add_development_dependency 'test-kitchen', '~> 1.3.1'
  spec.add_development_dependency 'kitchen-vagrant'
  spec.add_development_dependency 'vagrant-wrapper'
  spec.add_development_dependency 'kitchen-docker'
  spec.add_development_dependency 'kitchen-sync'
  spec.add_development_dependency 'berkshelf'
  spec.add_development_dependency 'foodcritic'
end