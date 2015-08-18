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

  # == Pop-up menu table
  # == Pop-up menu table -> Preferences section
  # span(:lblMenuPreferences, :xpath => "//span[contains(text(),'Preferences') and @id='btnMenuitem5525']")
  # span(:btnMenuMyProfile, :xpath => "//span[contains(text(),'My Profile')]") #'btnMenuitem5538')
  # span(:btnMenuMySubscriptions, :xpath => "//span[contains(text(),'My Subscriptions')]")
  # span(:btnMenuMyOrganization, :xpath => "//span[contains(text(),'My Organization')]")
  # span(:btnMenuExtManager, :xpath => "//span[contains(text(),'Ext Manager')]")
  #  == Pop-up menu table -> Administration section
  # span(:lblMenuAdministration, :xpath => "//div[@id='dvItem1']/h4[contains(text(),'Administration')]")
  # span(:btnMenuNavigationMenu, :xpath => "//span[contains(text(),'Navigation Menu')]")
  # span(:btnMenuUsers, :xpath => "//span[contains(text(),'Users')]")
  # span(:btnMenuSCAnalyzer, :xpath => "//span[contains(text(),'SC Analyzer')]")
  # span(:btnMenuRoles, :xpath => "//span[contains(text(),'Roles')]")
  # span(:btnMenuAnalyticalReports, :xpath => "//span[contains(text(),'Analytical Reports')]")
  # span(:btnMenuServiceTasks, :xpath => "//span[contains(text(),'Service Tasks')]")
  # span(:btnMenuScheduledTasks, :xpath => "//span[contains(text(),'Scheduled Tasks')]")
  # # == Pop-up menu table -> TPO Administration section
  # span(:btnMenuUser, :xpath => "//span[contains(text(),'User')]")
  # span(:btnMenuAPL, :xpath => "//span[contains(text(),'APL')]")
  # span(:btnMenuAccounts, :xpath => "//span[contains(text(),'Accounts')]")
  # span(:btnMenuCustomersHierarchy, :xpath => "//span[contains(text(),'Customers Hierarchy')]")
  # span(:btnMenuCostPriceEditor, :xpath => "//span[contains(text(),'Cost Price Editor')]")
  # span(:btnMenuDefaultshippingCaseManager, :xpath => "//span[contains(text(),'Default shipping Case Manager')]")
  # span(:btnMenuFundBudgetPeriod, :xpath => "//span[contains(text(),'Fund Budget Period')]")
  # # == Pop-up menu -> TPO Planner
  # span(:lblMenuTPOPlanner, :xpath => "//span[contains(text(),'TPO Planner') and @id='btnMenuitem5527']")
  # span(:btnMenuTacticalPlanList, :xpath => "//span[contains(text(),'Tactical Plan List')]")
  # span(:btnMenuFundManagement, :xpath => "//span[contains(text(),'Fund Managment')]") # Should be ManagEment
  # span(:btnMenuDefaultShippingCaseManager, :xpath => "//span[contains(text(),'DefaultShippingCaseManager')]") # Should be spaces here
  # span(:btnMenuProductManager, :xpath => "//span[contains(text(),'Product Manager')]")
  # span(:btnMenuProductHierarchyViewer, :xpath => "//span[contains(text(),'Product Hierarchy Viewer')]")
  # span(:btnMenuFundBulkImport, :xpath => "//span[contains(text(),'Fund Bulk Import')]")
  # # == Pop-up menu -> Data Manager
  # span(:lblMenuDataManager, :xpath => "//span[contains(text(),'Data Manager') and @id='btnMenuitem5528']")
  # span(:btnMenuControlPanel, :xpath => "//span[contains(text(),'Control Panel')]")
  # # == Pop-up menu -> Strategy Planning
  # span(:lblMenuStrategyPlanning, :xpath => "//span[contains(text(),'Strategy Planning') and @id='btnMenuitem5543']")
  # span(:btnMenuStrategyPlanList, :xpath => "//span[contains(text(),'Strategy Plan List')]")
  # span(:btnMenuSCAManager, :xpath => "//span[contains(text(),'SCA Manager')]")
  # span(:btnMenuStudyList, :xpath => "//span[contains(text(),'Study List')]")
  # # == Pop-up menu -> SCHEDULER
  # span(:lblMenuSCHEDULER, :xpath => "//span[contains(text(),'SCHEDULER') and @id='btnMenuitem9550']")
  # span(:btnMenuSCHEDULER, :xpath => "//span[contains(text(),'SCHEDULER') and @id='btnMenuitem9551']")
  # # == Pop-up menu -> Payments
  # span(:lblMenuPayments, :xpath => "//span[contains(text(),'Payments') and @id = 'btnMenuitem9563']")
  # span(:btnMenuPaymentWorkBench, :xpath => "//span[contains(text(),'Payment WorkBench')]")
  # span(:btnMenuChargeTypeAccountMappingManager, :xpath => "//span[contains(text(),'Charge Type Account Mapping Manager')]")
  # # == Pop-up menu -> Calendar
  # span(:lblMenuCalendar, :xpath => "//span[contains(text(),'Calendar') and @id='btnMenuitem9572']")
  # span(:btnMenuCalendar, :xpath => "//span[contains(text(),'Calendar') and @id='btnMenuitem9573']")
  # # == Pop-up menu -> New tab
  # span(:lblMenuNewTab, :xpath => "//span[contains(text(),'New tab') and @id='btnMenuitem9594']")
  # span(:btnMenuFNFundManager, :xpath => "//span[contains(text(),'FN_Fund_Manager')]")


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


    # Confirmation dialog
    in_iframe({:id => 'YesNoCancelDialog0PopupContainer_CIF-1'}, frame) do |frame|
      button(:btnOK, :id => 'btnOK', :frame => frame)
    end
  end

  # in_iframe(:id => 'ContentAreaFrame') do |frame|
  #   # Confirmation dialog
  #   in_iframe({:id => 'YesNoCancelDialog0PopupContainer_CIF-1'}, frame) do |frame|
  #     button(:btnOKYesNoCancelDialog0PopupContainerCIF1, :id => 'btnOK', :frame => frame)
  #   end
  # end





end