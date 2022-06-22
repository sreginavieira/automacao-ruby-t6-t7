require 'capybara/cucumber' 
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT is runner >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "environments/#{ENVIRONMENT}.yml") #CONFIG é uma variável estática, não pode mudar

Capybara.configre do |config| #capybara faz interação do código com a tela. O Capybara nesta linha é uma classe
    config.default.driver = :selenium_chrome
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 10
end