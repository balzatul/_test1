require 'rspec'
#require 'rspec-expectations'
require 'page-object'
require 'watir-webdriver'

require_relative '../../lib/pages/ukr_ser_36_page'


RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :ie
    # @browser.window.maximize
    # puts @browser.driver.to_s

  end

  config.after do
    @browser.close
  end
end