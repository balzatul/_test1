require_relative 'spec_helper'

describe 'Open VKontakte' do
  before(:each) do
    visit VKInsidePage
  end
  it 'create an account' do
    on(VKInsidePage) do |page|
      page.txtQuickEmail = '+380950088360'
      page.txtIJLastName = 'von Lemberg'
      page.btnIJSubmit

      page.select_gender('Male','Female')

      page.btnIJSubmit

      # sleep 2
      # page.btnIJSubmit_element.wait_while_present
      # page.btnIJSubmit_element.when_not_visible

      page.btnGetCode_element.when_visible(15)

      # expect(page.nbrCode_element.visible?).to be_truthy
      expect(page.txtCode_element.text).to be == '+380'

      page.txtJoinPhone = '950088360'



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