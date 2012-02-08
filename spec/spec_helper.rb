require 'bundler'
require ::File.expand_path('../app',  File.dirname(__FILE__))

Bundler.require(:default, :test)

require 'rspec'
require 'capybara/rspec'

Capybara.app = Namespace::App

Capybara.register_driver :bypass_basic_auth do |app|
  require 'selenium/webdriver'
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['general.useragent.override'] = "GS Automated Testing"

  Capybara::Selenium::Driver.new(app, :profile => profile)
end

RSpec.configure do |config|

  config.before(:suite) do
  end

  config.before(:all) do
  end

  config.before(:each) do
  end

end

