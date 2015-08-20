require 'rspec'
#require 'rspec-expectations'
require 'page-object'
require 'watir-webdriver'
# require 'rspec/autorun'
require_relative '../../lib/pages/ukrser10_page'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :ie, :switches => %w[--log-level=DEBUG]
    # my_page_object = MyPageObject.new(@browser)
    # @browser.window.maximize
  end

  config.after do
    @browser.close
  end
end