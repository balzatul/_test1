# require 'rubygems'
# require 'watir-webdriver'
#require 'rspec/expectations'
# require 'rspec'

require_relative 'spec_helper'

describe 'Open google' do
  before(:each) do
    visit GooglePage
  end
    it 'and find dogs' do
      on(GooglePage) do |page|
        #page.txtSearch
        page.txtSearch = 'dogs'
        #page.txtSearch.
        page.btnSubmit
        #page.btnLuck
        sleep 5

      end
      # @browser.goto 'http://pre.boconcept.com/'

    end
    # it 'Open site 2' do
    #   @browser.link(:class => 'global-site-link').click
    #   @browser.url.should include('sitechooser=false')
    #   sleep 5
    # end

    # //div[@id='ij_sex_row']//ul//li[text()='мужской']


end