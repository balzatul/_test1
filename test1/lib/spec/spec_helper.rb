require 'rspec'
#require 'rspec-expectations'
require 'page-object'
require 'watir-webdriver'
require_relative '../../lib/pages/google_page'
#require_relative '../../lib/pages/vk_page'
require_relative '../../lib/pages/vk_inside_page'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
  end

  config.after do
    @browser.close
  end
end