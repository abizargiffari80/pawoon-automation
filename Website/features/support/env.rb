#library untuk action capybara
require 'capybara/cucumber'

#library untuk cara untuk mengeskpetasi
require 'capybara/rspec'

#set driver
Capybara.default_driver = :selenium

#set browser
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end