# Generated by cucumber-sinatra. (2015-01-20 22:04:13 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'pair_or_not.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = PairOrNot

class PairOrNotWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  PairOrNotWorld.new
end
