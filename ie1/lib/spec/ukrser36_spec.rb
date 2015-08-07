require 'rspec'
require_relative 'ukrser36_helper'


describe 'Open UkrSer36 page and' do
  before(:each) do
    visit UkrSer36Page

  end

  it 'log in' do
    on(UkrSer36Page) do |page|
      # visit UkrSer36Page
      page.txtLogin1_UserName = "p.i@gsapps.com"
      page.txtLogin1_Password = "1qazXSW@"
      page.check_chkLogin1_RememberMe
      page.btnLogin1_Login

      # Central floating menu verification
      # page.btnPreferences_element.click
      # page.btnHome_element.click
      # page.btnAdministration_element.click
      # page.btnHome_element.click
      # page.btnTPOAdministration_element.click
      # page.btnHome_element.click
      # page.btnTPOPlanner_element.click
      # page.btnHome_element.click
      # page.btnDataManager_element.click
      # page.btnHome_element.click
      # page.btnStrategyPlanning_element.click
      # page.btnHome_element.click
      # page.btnScheduler_element.click
      # page.btnHome_element.click
      # page.btnPayments_element.click
      # page.btnHome_element.click
      # page.btnCalendar_element.click
      # page.btnHome_element.click
      # page.btnNewTab_element.click
      # page.btnHome_element.click



      # == Pop-up menu verification
      # == Pop-up menu -> Preferences section
      # page.btnMenu_element.click
      # page.btnMenuMyProfile_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuMySubscriptions_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuMyOrganization_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuExtManager_element.click
      # == Pop-up menu -> Administration section
      # page.btnMenu_element.click
      # page.btnMenuNavigationMenu_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuUsers_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuSCAnalyzer_element.click # not working now
      #
      # page.btnMenu_element.click
      # page.btnMenuRoles_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuAnalyticalReports_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuServiceTasks_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuScheduledTasks_element.click
      # # == Pop-up menu -> TPO Administration section
      # page.btnMenu_element.click
      # page.btnMenuUser_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuAPL_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuAccounts_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuCustomersHierarchy_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuCostPriceEditor_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuDefaultshippingCaseManager_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuFundBudgetPeriod_element.click
      # == Pop-up menu -> TPO Planner
      # page.btnMenu_element.click
      # page.btnMenuTacticalPlanList_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuFundManagement_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuDefaultShippingCaseManager_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuProductManager_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuProductHierarchyViewer_element.click
      #
      # page.btnMenu_element.click
      # page.btnMenuFundBulkImport_element.click
      # == Pop-up menu -> Data Manager
      # page.btnMenu_element.click
      # page.btnMenuControlPanel_element.click
      # == Pop-up menu -> Strategy Planning
      page.btnMenu_element.click
      page.btnMenuStrategyPlanList_element.click

      # page.btnMenu_element.click
      # page.btnMenuSCAManager_element.click # Not working

      page.btnMenu_element.click
      page.btnMenuStudyList_element.click
      # == Pop-up menu -> SCHEDULER
      page.btnMenu_element.click
      page.btnMenuSCHEDULER_element.click
      # == Pop-up menu -> Payments
      page.btnMenu_element.click
      page.btnMenuPaymentWorkBench_element.click

      page.btnMenu_element.click
      page.btnMenuChargeTypeAccountMappingManager_element.click
      # == Pop-up menu -> Calendar
      page.btnMenu_element.click
      page.btnMenuCalendar_element.click
      # == Pop-up menu -> New tab
      page.btnMenu_element.click
      page.btnMenuFNFundManager_element.click


      page.btnHome_element.click



      expect(page.lnkLogout?).to be_truthy
    end
  end

end