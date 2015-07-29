#coding: UTF-8
#encoding: UTF-8

class VKPage
  include PageObject

  page_url("http://www.vkontakte.ru")

  text_field(:txtIJFirstName, :id => 'ij_first_name')
  text_field(:txtIJLastName, :id => 'ij_last_name')

  button(:btnIJSubmit, :id => 'ij_submit')
  cell(:drpGender, :id => 'dropdown1')

  button(:btnGetCode, :id => 'join_send_phone')
  elements(:nbrCode, :nobr, :xpath => "//nobr[text()='+380']")
  cell(:txtCode, :xpath => "//td[@id='join_phone_prefix']")

  text_field(:txtJoinPhone, :id => 'join_phone')
  button(:btnGetCode, :id => 'join_send_phone')



  def select_gender(v_gender,v_gender2)
    if !self.list_item_element(:xpath => "//div[@id='ij_sex_row']//ul//li[contains(text(),'#{v_gender}')]").visible?
      self.drpGender_element.click
    end
    self.list_item_element(:xpath => "//div[@id='ij_sex_row']//ul//li[contains(text(),'#{v_gender}')]").click
  end





end