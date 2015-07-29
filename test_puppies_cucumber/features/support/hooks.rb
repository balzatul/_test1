require 'watir-webdriver'
require 'page-object'
require 'rspec'
require 'watir'


Before do
  @browser = Watir::Browser.new :chrome
  # puts @browser? "@browser Not empty" : "browser Empty"
  @browser.window.maximize
end


AfterStep do |s|
  Cucumber.wants_to_quit = false if s.failed?
end


After do
  @browser.close
end