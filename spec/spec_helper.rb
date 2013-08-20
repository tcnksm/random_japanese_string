require "moji"

# Code coverage
# See https://github.com/colszowka/simplecov
require 'simplecov'
SimpleCov.start 

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
end

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'random_japanese_string'

