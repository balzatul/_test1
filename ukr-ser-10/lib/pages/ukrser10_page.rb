class UkrSer10Page
  include PageObject
  # include WatirHelper
  # require_relative '../../lib/spec/ukrser10_helper'
  # @strFloatingMenuItem = 'ppp'
  page_url "http://ukr-ser-10.globalsoftapps.com/G4/G4.MTE.Web/Security/Login.aspx"


  # Login page

  text_field(:txtLogin1_UserName, :xpath => "//input[@id='Login1_UserName']")
  text_field(:txtLogin1_Password, :xpath => "//input[@id='Login1_Password']")
  checkbox(:chkLogin1_RememberMe, :xpath => "//input[@id='Login1_RememberMe']")
  button(:btnLogin1_Login, :xpath => "//input[@id='Login1_Login']")







  # Home page
  link(:lnkLogout, :xpath => "//a[contains(text(),'Logout')]")

    # Home page -> Upper menu
  in_iframe(:id => 'PortalSubmenuFrame') do |frame|
    # page buttons
    span(:btnHome, :xpath => "//span[@id='btnHome']", :frame => frame)
    span(:btnMenu, :xpath => "//span[@id='btnMenu']", :frame => frame)
    # pop-up menu table
    # span(:lblMenuPreferences, :xpath => "//span[@id='btnMenuitem5525']", :frame => frame)
  end


  in_iframe(:id => 'ContentAreaFrame') do |frame|
    # page buttons
    span(:btnResetPassword, :xpath => "//span[@id='btnResetPassword']/span", :frame => frame)
    text_field(:cntrLastName, :xpath => "//input[@id='cntrLastName']", :frame => frame)
    span(:spanTextcntrEMail, :xpath => "//span[@id='spanTextcntrEMail']", :frame => frame)
  end

  # Home page -> Central floating menu
  in_iframe(:id => 'ContentAreaFrame') do |frame|
    h4(:btnPreferences, :xpath => "//h4[text()='Preferences']", :frame => frame)
    h4(:btnAdministration, :xpath => "//h4[text()='Administration']", :frame => frame)

    # Administration page
    td(:tblcellGMI24, :xpath => "//td[contains(text(),'GMI 24')]", :frame => frame)
    td(:tblcellSCJ98UkrSer10, :xpath => "//td[contains(text(),'SCJ98 on ukr-ser-36')]", :frame => frame)
    span(:btnEnlistInOrg, :id => 'btnEnlistInOrg', :frame => frame)

    # Plans list page
    span(:mnuDefinePlan, :xpath => "//span[contains(text(), 'Define Plan')]", :frame => frame)


  end


  # Confirmation dialog
  in_iframe(:id => 'ContentAreaFrame') do |frame|
    in_iframe({:id => 'YesNoCancelDialog0PopupContainer_CIF-1'}, frame) do |frame1|
      button(:btnOK, :id => 'btnOK', :frame => frame1)
    end
  end


  in_iframe(:id => 'ContentAreaFrame') do |frame|
    in_iframe({:id => 'STR_AddPlanDialogPopupContainer_CIF-1'}, frame) do |frame1|
      # Plans list
      # Add New Plan dialog
      button(:btnOK_AddNewPlan_Dialog, :xpath => "//input[@id='btnOK']", :frame => frame1)
    end
  end



  in_iframe(:id => 'PortalSidebarMenuFrame') do |frame|
    # Upper menu level in left panel
    span(:liStrategyPlanning, :xpath => "//span[contains(text(), 'Strategy Planning')]", :frame => frame)

    # Second menu level in left panel
    span(:liPlansList, :xpath => "//span[contains(text(), 'Plans list')]", :frame => frame)
    span(:liStudyList, :xpath => "//span[contains(text(), 'Study list')]", :frame => frame)
    span(:liPlanCycleList, :xpath => "//span[contains(text(), 'Plan Cycle list')]", :frame => frame)
  end





end