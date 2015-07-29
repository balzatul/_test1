require 'rspec'
require_relative 'puppies_spec_helper'

describe 'Open Puppies Heroku page and' do
  before(:each) do
    visit AdoptPuppyPage
  end

  # it 'should open Adopt a Puppy page' do
  #   on(AdoptPuppyPage) do |page|
  #
  #     expect(@browser.title).to eq("Sally's Puppy Adoption Agency")
  #
  #     expect(page.lblIntroH1?).to be_truthy
  #     expect(page.lblIntroSpan?).to be_truthy
  #     expect(page.lblSBTop?).to be_truthy
  #     expect(page.lblIntroH1PuppyList?).to be_truthy
  #
  #     expect(page.puppyBrookName?).to be_truthy
  #     expect(page.puppyBrookBreed?).to be_truthy
  #     expect(page.puppyBrookSex?).to be_truthy
  #     expect(page.btnBrookViewDetails?).to be_truthy
  #
  #   # true.should == false
  #   #   sleep 3
  #   end
  # end


  # it '6 menu elements must exist' do
  #   on(AdoptPuppyPage) do |page|
  #     expect(page.menuAdoptAPuppy?).to be_truthy
  #     expect(page.menuLearn?).to be_truthy
  #     expect(page.menuAnimalShelters?).to be_truthy
  #     expect(page.menuClassifieds?).to be_truthy
  #     expect(page.menuMessageBoards?).to be_truthy
  #     expect(page.menuPetNews?).to be_truthy
  #
  #     # true.should == false
  #     # sleep 3
  #   end
  # end


  # it 'click on puppy details button' do
  #   on(AdoptPuppyPage) do |page|
  #     page.btnBrookViewDetails
  #     # puts(page.lblFeesSpan)
  #     puppy_price = page.lblFeesSpan[/[1-9]\.[1-9]/]
  #
  #
  #     sleep 1
  #     page.lnkReturnToList
  #     sleep 1
  #
  #     page.linkPage2
  #     sleep 1
  #
  #     page.linkPage1
  #     sleep 1
  #
  #     page.linkPage3
  #     sleep 1
  #
  #     page.linkPrevious
  #     sleep 1
  #
  #     page.linkPrevious
  #     sleep 1
  #
  #     page.linkNext
  #     sleep 1
  #
  #     #expect(page.menuAdoptAPuppy?).to be_truthy
  #     # sleep 3
  #   end
  # end


#   it 'get puppy price' do
#     on(AdoptPuppyPage) do |page|
#       page.btnBrookViewDetails
#       # puts(page.lblFeesSpan)
#
#       puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
#
#       #expect(page.menuAdoptAPuppy?).to be_truthy
#       # sleep 3
#     end
#   end
#
#
#   it 'compare price on Adopt me and Your Litter' do
#     on(AdoptPuppyPage) do |page|
#       page.btnBrookViewDetails
#       puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
#       page.btnAdoptMe
#
#       expect(page.lblYourLitterPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(puppy_price)
#
#       #expect(page.menuAdoptAPuppy?).to be_truthy
#       # sleep 3
#     end
#   end
#
#
#   it 'verify accessories prices on Your Litter page' do
#     on(AdoptPuppyPage) do |page|
#       page.btnBrookViewDetails
#       puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
#       page.btnAdoptMe
#       expect(page.lblYourLitterPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(puppy_price)
#
#       # page.chkYourLitterCollarCheckbox # .check_active()
#       # expect(page.chkYourLitterCollarCheckbox?).to be_truthy # .check_active()
#       page.check_chkYourLitterCollarCheckbox
#       # expect(page.chkYourLitterCollarCheckbox_checked?).to be_truthy
#       # puts(page.chkYourLitterCollarCelltext)
#
#       collar_price = page.chkYourLitterCollarCelltext[/[1-9]+\.[1-9]{2}/]
#       expect(page.lblYourLitterCollarPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(collar_price)
#
#
# # ============== not finished
#
#       #expect(page.menuAdoptAPuppy?).to be_truthy
#       # sleep 3
#     end
#   end
#
#
#   it 'verify price calculation on Your Litter page for one puppy + accesories' do
#     on(AdoptPuppyPage) do |page|
#       page.btnBrookViewDetails
#       puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
#       page.btnAdoptMe
#
# # ======= not finished
#
#
#       # sleep 3
#     end
#   end

  # it 'adopt one puppy' do
  #   on(AdoptPuppyPage) do |page|
  #     page.btnBrookViewDetails
  #     # puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
  #     page.btnAdoptMe
  #
  #     page.btnYourLitterCompleteAdoption
  #
  #     page.txtEnterOrderDetails_Name = "Balzatul von Lemberg"
  #     page.txtEnterOrderDetails_Address = "210b, Baker Street, London"
  #     page.txtEnterOrderDetails_Email = "q@w.ua"
  #     page.lstEnterOrderDetails_PayMethod = "Check"
  #     page.btnEnterOrderDetails_Submit
  #
  #     # page.should include("Thank you for adopting a puppy!")
  #     expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
  #
  #
  #     # expect(page.lblYourLitterPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(puppy_price)
  #
  #     #expect(page.menuAdoptAPuppy?).to be_truthy
  #     sleep 3
  #   end
  # end
  #
  #
  # it 'adopt two puppies' do
  #   on(AdoptPuppyPage) do |page|
  #     page.btnBrookViewDetails
  #     # puppy_price = page.lblFeesSpan[/[1-9]+\.[1-9]{2}/]
  #     page.btnAdoptMe
  #     page.btnYourLitterAdoptAnotherPuppy
  #     page.btnHannaViewDetails
  #     page.btnAdoptMe
  #
  #     page.btnYourLitterCompleteAdoption
  #
  #     page.txtEnterOrderDetails_Name = "Balzatul von Lemberg"
  #     page.txtEnterOrderDetails_Address = "210b, Baker Street, London"
  #     page.txtEnterOrderDetails_Email = "q@w.ua"
  #     page.lstEnterOrderDetails_PayMethod = "Check"
  #     page.btnEnterOrderDetails_Submit
  #
  #     # page.should include("Thank you for adopting a puppy!")
  #     expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
  #
  #
  #     # expect(page.lblYourLitterPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(puppy_price)
  #
  #     #expect(page.menuAdoptAPuppy?).to be_truthy
  #     sleep 3
  #   end
  # end


  # it 'change mind' do
  #   on(AdoptPuppyPage) do |page|
  #     page.btnBrookViewDetails
  #     page.btnAdoptMe
  #     sleep 1
  #     page.btnYourLitterAdoptAnotherPuppy
  #     sleep 1
  #     page.btnHannaViewDetails
  #     sleep 1
  #     page.btnAdoptMe
  #     sleep 1
  #
  #     page.btnYourLitterChangeYourMind
  #     sleep 3
  #     # expect(@browser.alert.exists?).to be_truthy
  #       # page.txtEnterOrderDetails_Name = "Balzatul von Lemberg"
  #       # page.txtEnterOrderDetails_Address = "210b, Baker Street, London"
  #       # page.txtEnterOrderDetails_Email = "q@w.ua"
  #       # page.lstEnterOrderDetails_PayMethod = "Check"
  #       # page.btnEnterOrderDetails_Submit
  #       #
  #       # # page.should include("Thank you for adopting a puppy!")
  #       # expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
  #
  #
  #       # expect(page.lblYourLitterPriceNetto[/[1-9]+\.[1-9]{2}/]).to eq(puppy_price)
  #
  #       #expect(page.menuAdoptAPuppy?).to be_truthy
  #     sleep 3
  #   end
  # end



  it 'bulk adoption' do
    on(AdoptPuppyPage) do |page|
      puppies = ['Brook','Sparky','Ruby Sue','Twinkie']
      action = 'adopt'
      accessories = ['collar','vet'] # 'collar', 'toy', 'carrier', ' vet'
      page.puppy_action(puppies,action,accessories)
      sleep 3
      expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
    end
  end


  it 'bulk change mind' do
    on(AdoptPuppyPage) do |page|
      puppies = ['Tipsy','Hanna','Spud','Twinkie']
      action = 'change mind'
      accessories = ['carrier','toy']
      page.puppy_action(puppies,action,accessories)
      sleep 3
      expect(page.text.include?('Your car is currently empty')).to be_truthy
    end
  end





end