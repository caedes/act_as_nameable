require 'rspec'

require 'act_as_nameable'

RSpec.configure do |config|
  config.color_enabled = true
  config.mock_with :rspec
  config.order = 'random'
end
