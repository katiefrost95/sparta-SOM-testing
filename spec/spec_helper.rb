require 'rspec'
require_relative '../lib/joke'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
