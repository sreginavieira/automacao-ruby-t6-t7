require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

Capybara.configre do |config|
    config.default.driver = :selenium_chrome
    config.app_host = "http://www.google.com.br"
    config.default_max_wait_time = 10
end