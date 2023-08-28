require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'

ENVIRONMENT = ENV['ENVIRONMENT']
puts ENVIRONMENT
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']
puts URL

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--incognito"]})
    options = { browser: :chrome, desired_capabilities: caps}
    Capybara::Selenium::Driver.new(app, options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL