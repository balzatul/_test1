class AdoptPuppyPage
  include PageObject

  page_url("http://puppies.herokuapp.com/")

  # Intro
  h1(:lblIntroH1, :xpath => "//div[@id='intro']//h1[contains(text(),'Happy Puppy')]")
  element(:lblIntroSpan, :span, :xpath => "//div[@id='intro']//span[contains(text(),'Home of the')]")
  paragraph(:lblSBTop, :xpath => "//div[@id='sb_top']/p[contains(text(), 'Home of the Happy Puppy')]")
  image(:imgHome, :xpath => "//div[@id='sb_top']//img")
  #h1(:lblIntroH1PuppyList, :xpath => "//div[@id='intro']//h1[contains(text(),'Happy Puppy')]")
  h1(:lblIntroH1PuppyList, :xpath => "//descendant::div[@id='content']/h1[contains(text(),'Puppy List')]")

  #label(:, :xpath => )  //div[@class='puppy_list']//h3['Brook']


  # Left Menu

  link(:menuAdoptAPuppy, :xpath => "//ul[@id='navlist']//a[contains(text(),'Adopt a Puppy')]")
  link(:menuLearn, :xpath => "//ul[@id='navlist']//a[contains(text(),'Learn')]")
  link(:menuAnimalShelters, :xpath => "//ul[@id='navlist']//a[contains(text(),'Animal Shelters')]")
  link(:menuClassifieds, :xpath => "//ul[@id='navlist']//a[contains(text(),'Classifieds')]")
  link(:menuMessageBoards, :xpath => "//ul[@id='navlist']//a[contains(text(),'Message Boards')]")
  link(:menuPetNews, :xpath => "//ul[@id='navlist']//a[contains(text(),'Pet News')]")


  # Puppy list

  # Fisrt puppy

  h3(:puppyBrookName, :xpath => "//div[@class='puppy_list']//h3[contains(text(),'Brook')]")
  h4(:puppyBrookBreed, :xpath => "//div[@class='puppy_list']//h3['Brook']/../..//div[@class='details']/h4[contains(text(),'Golden Retriever')]")
  h4(:puppyBrookSex, :xpath => "//div[@class='puppy_list']//h3['Brook']/../..//div[@class='details']/h4[contains(text(),'Female')]")
  button(:btnBrookViewDetails, :xpath => "//div[@class='name']/h3[text()='Brook']/../..//input[@value='View Details']")

  # second puppy

  button(:btnHannaViewDetails, :xpath => "//div[@class='name']/h3[text()='Hanna']/../..//input[@value='View Details']")


  # Pagination

  link(:linkPrevious, :xpath => "//div[@class='pagination']//a[contains(text(),'Previous')]" )
  link(:linkPage1, :xpath => "//div[@class='pagination']//a[text()='1']" )
  link(:linkPage2, :xpath => "//div[@class='pagination']//a[text()='2']" )
  link(:linkPage3, :xpath => "//div[@class='pagination']//a[text()='3']" )
  link(:linkNext, :xpath => "//div[@class='pagination']//a[contains(text(),'Next')]" )



  # Adopt me page

  h2(:puppyAdoptMeBrookName, :xpath => "//h2[contains(text(), 'Brook')]")
  button(:btnAdoptMe, :xpath => "//input[@value='Adopt Me!']")
  link(:lnkReturnToList, :xpath => "//a[text()='Return to List']")
  element(:lblFeesSpan, :span, :xpath => "//span[contains(text(),'The fees to adopt me are $')]")



  # Your Litter

  h2(:lblYourLitterPriceNetto, :xpath => "//tr//h2[contains(text(),'Brook')]/../..//td[@class='item_price']/h2")
  checkbox(:chkYourLitterCollarCheckbox, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//input[@id='collar']")
  cell(:chkYourLitterCollarCelltext, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//input[@id='collar']/..")
  div(:lblYourLitterCollarPriceNetto, :xpath => "//tr//h2[contains(text(),'Brook')]/../../..//div[@class='collar-amount']")

  button(:btnYourLitterCompleteAdoption, :xpath => "//input[@value='Complete the Adoption']")
  button(:btnYourLitterAdoptAnotherPuppy, :xpath => "//input[@value='Adopt Another Puppy']")
  button(:btnYourLitterChangeYourMind, :xpath => "//input[@value='Adopt Another Puppy']")



  # Please Enter Your Details page

  text_field(:txtEnterOrderDetails_Name, :xpath => "//input[@name='order[name]']")
  text_area(:txtEnterOrderDetails_Address, :xpath => "//textarea[@name='order[address]']")
  text_field(:txtEnterOrderDetails_Email, :xpath => "//input[@id='order_email']")
  select_list(:lstEnterOrderDetails_PayMethod, :xpath => "//select[@id='order_pay_type']")
  button(:btnEnterOrderDetails_Submit, :xpath => "//input[@value='Place Order']")





end