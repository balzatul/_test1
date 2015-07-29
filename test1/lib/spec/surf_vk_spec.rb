require_relative 'spec_helper'

describe 'Open VKontakte and' do
  before(:each) do
    visit VKInsidePage
  end
  it 'log in' do
    on(VKInsidePage) do |page|
      page.txtQuickEmail = '+380950088360'
      page.txtQuickPass = '0okMNJi9'
      page.btnQuickLoginButton

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