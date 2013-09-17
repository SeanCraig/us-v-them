require 'simplecov'
require 'coveralls'

SimpleCov.start do
  add_filter   '/spec'
  add_filter   '/vendor'
  add_filter   '/features'
  coverage_dir 'reports/coverage'
end

RSpec.configure do |config|
  config.order = "random"
end
