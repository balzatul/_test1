require 'rspec'
#require 'rspec-expectations'
require 'page-object'
require 'watir-webdriver'

require_relative '../../lib/pages/puppies_adopt_a_puppy_page'


RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :ie
    @browser.window.maximize
  end

  config.after do
    @browser.close
  end
end