require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber'
require 'rspec'
require 'capybara/rspec' #validar necessidade


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host       = 'http://automationpractice.com'
end
