class UkrSer36Page
  include PageObject

  page_url('http://ukr-ser-36.globalsoftapps.com/G4/G4.MTE.Web/Security/Login.aspx')

  # Login page

  text_field(:txtLogin1_UserName, :xpath => "//input[@id='Login1_UserName']")
  text_field(:txtLogin1_Password, :xpath => "//input[@id='Login1_Password']")
  checkbox(:chkLogin1_RememberMe, :xpath => "//input[@id='Login1_RememberMe']")
  button(:btnLogin1_Login, :xpath => "//input[@id='Login1_Login']")

  # Landing page
  link(:lnkLogout, :xpath => "//a[contains(text(),'Logout')]")


  # Intro
  # h1(:lblIntroH1, :xpath => "//div[@id='intro']//h1[contains(text(),'Happy Puppy')]")
  #
  # paragraph(:lblSBTop, :xpath => "//div[@id='sb_top']/p[contains(text(), 'Home of the Happy Puppy')]")
  # image(:imgHome, :xpath => "//div[@id='sb_top']//img")
  # # h1(:lblIntroH1PuppyList, :xpath => "//div[@id='intro']//h1[contains(text(),'Happy Puppy')]")
  # h1(:lblIntroH1PuppyList, :xpath => "//descendant::div[@id='content']/h1[contains(text(),'Puppy List')]")
  #
  # #label(:, :xpath => )  //div[@class='puppy_list']//h3['Brook']
  #
  #
  # # Left Menu
  #
  # link(:menuAdoptAPuppy, :xpath => "//ul[@id='navlist']//a[contains(text(),'Adopt a Puppy')]")
  # link(:menuLearn, :xpath => "//ul[@id='navlist']//a[contains(text(),'Learn')]")
  # link(:menuAnimalShelters, :xpath => "//ul[@id='navlist']//a[contains(text(),'Animal Shelters')]")
  # link(:menuClassifieds, :xpath => "//ul[@id='navlist']//a[contains(text(),'Classifieds')]")
  # link(:menuMessageBoards, :xpath => "//ul[@id='navlist']//a[contains(text(),'Message Boards')]")
  # link(:menuPetNews, :xpath => "//ul[@id='navlist']//a[contains(text(),'Pet News')]")
  #
  #
  # # Puppy list
  #
  # # Fisrt puppy
  #
  # h3(:puppyBrookName, :xpath => "//div[@class='puppy_list']//h3[contains(text(),'Brook')]")
  # h4(:puppyBrookBreed, :xpath => "//div[@class='puppy_list']//h3['Brook']/../..//div[@class='details']/h4[contains(text(),'Golden Retriever')]")
  # h4(:puppyBrookSex, :xpath => "//div[@class='puppy_list']//h3['Brook']/../..//div[@class='details']/h4[contains(text(),'Female')]")
  # button(:btnBrookViewDetails, :xpath => "//div[@class='name']/h3[text()='Brook']/../..//input[@value='View Details']")
  #
  # # second puppy
  #
  # button(:btnHannaViewDetails, :xpath => "//div[@class='name']/h3[text()='Hanna']/../..//input[@value='View Details']")
  #
  #
  # # Pagination
  #
  # link(:linkPrevious, :xpath => "//div[@class='pagination']//a[contains(text(),'Previous')]" )
  # link(:linkPage1, :xpath => "//div[@class='pagination']//a[text()='1']" )
  # link(:linkPage2, :xpath => "//div[@class='pagination']//a[text()='2']" )
  # link(:linkPage3, :xpath => "//div[@class='pagination']//a[text()='3']" )
  # link(:linkNext, :xpath => "//div[@class='pagination']//a[contains(text(),'Next')]" )
  # element(:spanNext, :span, :xpath => "//div[@class='pagination']//span[contains(text(),'Next')]" )
  #
  #
  # # Adopt me page
  #
  # h2(:puppyAdoptMeBrookName, :xpath => "//h2[contains(text(), 'Brook')]")
  # button(:btnAdoptMe, :xpath => "//input[@value='Adopt Me!']")
  # link(:lnkReturnToList, :xpath => "//a[text()='Return to List']")
  # element(:lblFeesSpan, :span, :xpath => "//span[contains(text(),'The fees to adopt me are $')]")
  #
  #
  #
  # # Your Litter
  #
  # h2(:lblYourLitterPriceNetto, :xpath => "//tr//h2[contains(text(),'Brook')]/../..//td[@class='item_price']/h2")
  # checkbox(:chkYourLitterCollarCheckbox, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//input[@id='collar']")
  # cell(:chkYourLitterCollarCelltext, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//input[@id='collar']/..")
  # div(:lblYourLitterCollarPriceNetto, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//div[@class='collar-amount']")
  #
  # button(:btnYourLitterCompleteAdoption, :xpath => "//input[@value='Complete the Adoption']")
  # button(:btnYourLitterAdoptAnotherPuppy, :xpath => "//input[@value='Adopt Another Puppy']")
  # button(:btnYourLitterChangeYourMind, :xpath => "//input[@value='Adopt Another Puppy']")
  #
  #
  #
  # # Please Enter Your Details page
  #
  # text_field(:txtEnterOrderDetails_Name, :xpath => "//input[@name='order[name]']")
  # text_area(:txtEnterOrderDetails_Address, :xpath => "//textarea[@name='order[address]']")
  # text_field(:txtEnterOrderDetails_Email, :xpath => "//input[@id='order_email']")
  # select_list(:lstEnterOrderDetails_PayMethod, :xpath => "//select[@id='order_pay_type']")
  # button(:btnEnterOrderDetails_Submit, :xpath => "//input[@value='Place Order']")
  #
  #
  # # # Puppies list
  # # button(:btnViewDetails, :xpath => "//div[@class='name']/h3[text()=#{puppy_name.to_s}]/../..//input[@value='View Details']")
  # #
  # # # Adopt me page
  # # h2(:puppyAdoptMeName, :xpath => "//h2[contains(text(), #{puppy_name.to_s})]")
  # #
  # # # Your Litter page elements
  # # h2(:lblYourLitterPriceNetto, :xpath => "//tr//h2[contains(text(),#{puppy_name.to_s})]/../..//td[@class='item_price']/h2")
  # # checkbox(:chkYourLitterCollarCheckbox, :xpath => "//tr//h2[contains(text(),#{puppy_name.to_s})]/../../..//input[@id='collar']")
  # # cell(:chkYourLitterCollarCelltext, :xpath => "//tr//h2[contains(text(),#{puppy_name.to_s})]/../../..//input[@id='collar']/..")
  # # div(:lblYourLitterCollarPriceNetto, :xpath => "//tr//h2[contains(text(),#{puppy_name.to_s})]/../../..//div[@class='collar-amount']")
  #
  #
  # def puppy_action(puppies_array, action, accessories_array=[])
  #   x = 0
  #   puppies_array.each do |puppy_name|
  #
  #     browser.a(xpath: "//ul[@id='navlist']//a[contains(text(),'Adopt a Puppy')]").click if (x.even?)
  #     self.btnYourLitterAdoptAnotherPuppy if x.odd?
  #
  #     until browser.h1(xpath: "//h1[contains(text(),'Puppy List')]").exists? do
  #     end
  #
  #     # Puppies list
  #     until browser.button(xpath: "//div[@class='name']/h3[text()='#{puppy_name.to_s}']/../..//input[@value='View Details']").exists?
  #       self.linkNext
  #     end
  #     browser.button(xpath: "//div[@class='name']/h3[text()='#{puppy_name.to_s}']/../..//input[@value='View Details']").click
  #
  #     # Adopt me page
  #     until browser.button(xpath: "//input[@value='Adopt Me!']").exists? do
  #     end
  #     browser.button(xpath: "//input[@value='Adopt Me!']").click
  #
  #     until browser.button(xpath: "//input[@value='Adopt Another Puppy']").exists? do
  #     end
  #
  #     x +=1
  #
  #   end
  #
  #   puppies_array.each do |puppy_name|
  #
  #     # Your Litter page
  #     until browser.checkbox(xpath: "//tr//h2[contains(text(),'#{puppy_name.to_s}')]/../..//following-sibling::tr[2]//input[@id='collar']").exists? do
  #     end
  #
  #     if accessories_array.length > 0
  #       accessories_array.each do |accessory|
  #         case accessory
  #           when 'collar'
  #             browser.checkbox(xpath: "//tr//h2[contains(text(),'#{puppy_name.to_s}')]/../..//following-sibling::tr[2]//input[@id='collar']").click
  #           when 'toy'
  #             browser.checkbox(xpath: "//tr//h2[contains(text(),'#{puppy_name.to_s}')]/../..//following-sibling::tr[3]//input[@id='toy']").click
  #           when 'carrier'
  #             browser.checkbox(xpath: "//tr//h2[contains(text(),'#{puppy_name.to_s}')]/../..//following-sibling::tr[4]//input[@id='carrier']").click
  #           when 'vet'
  #             browser.checkbox(xpath: "//tr//h2[contains(text(),'#{puppy_name.to_s}')]/../..//following-sibling::tr[5]//input[@id='vet']").click
  #         end
  #       end
  #     end
  #
  #   end
  #
  #   case action
  #     when 'adopt'
  #       self.adopt
  #     when 'change mind'
  #       self.change_mind
  #   end
  #
  #
  # end
  #
  #
  #
  # def adopt
  #   browser.button(xpath: "//input[@value='Complete the Adoption']").click
  #   until browser.button(xpath: "//input[@value='Place Order']").exists?
  #   end
  #   # browser.text_field(xpath: "//input[@name='order[name]']").set 'Pasha'
  #   self.txtEnterOrderDetails_Name = 'PI'
  #   # browser.textarea(xpath: "//textarea[@name='order[address]']").set 'some address 111'
  #   self.txtEnterOrderDetails_Address = 'some address 111'
  #   # browser.text_field(xpath: "//input[@id='order_email']").set 'q@w.ua'
  #   self.txtEnterOrderDetails_Email = 'q@w.ua'
  #   # browser.select_list(xpath: "//select[@id='order_pay_type']").select 'Check'
  #   self.lstEnterOrderDetails_PayMethod = 'Check'
  #   # browser.button(xpath: "//input[@value='Place Order']").click
  #   self.btnEnterOrderDetails_Submit
  # end
  #
  # def change_mind
  #   browser.button(xpath: "//input[@value='Change your mind']").click
  #   sleep 1
  #   until browser.alert.exists?
  #   end
  #   browser.alert.ok
  #   sleep 1
  #   until browser.alert.exists?
  #   end
  #   browser.alert.ok
  # end



end