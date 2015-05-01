ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'

require 'knapsack'

# CUSTOM_CONFIG_GOES_HERE

knapsack_adapter = Knapsack::Adapters::MinitestAdapter.bind
knapsack_adapter.set_test_helper_path(__FILE__)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
