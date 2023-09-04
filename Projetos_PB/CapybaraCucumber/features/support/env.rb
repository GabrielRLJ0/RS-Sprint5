require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br'
