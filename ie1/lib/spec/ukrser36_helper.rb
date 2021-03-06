require 'rspec'
#require 'rspec-expectations'
require 'page-object'
require 'watir-webdriver'
require_relative '../../lib/pages/ukrser36_page'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :ie
    # my_page_object = MyPageObject.new(@browser)
    # @browser.window.maximize
  end

  config.after do
    @browser.close
  end
end