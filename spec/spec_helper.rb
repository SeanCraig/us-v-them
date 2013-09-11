require 'simplecov'
SimpleCov.start do
  add_filter   '/spec'
  add_filter   '/features'
  coverage_dir 'reports/coverage'
end

RSpec.configure do |config|
  config.mock_with :mocha
  config.order = "random"
end
