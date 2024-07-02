*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    Collections
Library    DebugLibrary 
Library    DateTime


Resource    ../keyword/common.robot
Resource    ../testcase/removeScreenshot.robot
# # feature (Tisco flow)
Resource    ../keyword/feature/tisco_feature/check_premium_feature/search_premium_feature/search_premium_feature.robot
Resource    ../keyword/feature/tisco_feature/check_premium_feature/search_premium_feature/quotation_history_feature.robot
Resource    ../keyword/feature/tisco_feature/check_premium_feature/request_premium_feature/request_premium_feature.robot
Resource    ../keyword/feature/tisco_feature/check_premium_feature/request_premium_feature/request_premium_draft_feature.robot
Resource    ../keyword/feature/tisco_feature/check_premium_feature/request_premium_feature/request_premium_list_feature.robot
# # feature (Partner flow)
Resource    ../keyword/feature/partner_feature/partner_request_premium_feature/partner_request_premium_list_feature.robot
Resource    ../keyword/feature/partner_feature/partner_dashboard_feature/partner_dashboard_feature.robot


# # tab (Tisco flow)
# search_premium_tab
Resource    ../keyword/tab/tisco_tab/check_premium_tab/search_premium_info_tab/search_premium_tab/search_premium_main_page.robot
Resource    ../keyword/tab/tisco_tab/check_premium_tab/search_premium_info_tab/search_premium_tab/search_premium_filter_campaign_page.robot
Resource    ../keyword/tab/tisco_tab/check_premium_tab/search_premium_info_tab/search_premium_tab/search_premium_calculation_page.robot
# quotation_history_tab
Resource    ../keyword/tab/tisco_tab/check_premium_tab/search_premium_info_tab/quotation_history_tab/quotation_history_main_page.robot
# request_premium_form_tab
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_form_tab/request_premium_form_main_page.robot
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_form_tab/request_premium_form_fill_page.robot
# request_premium_drafting_tab
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_drafting_tab/request_premium_drafting_main_page.robot
# request_premium_list_tab
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_list_tab/request_premium_list_main_page.robot
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_list_tab/request_premium_list_details_page.robot
Resource    ../keyword/tab/tisco_tab/check_premium_tab/request_premium_tab/request_premium_list_tab/request_premium_list_premium_result_page.robot

# # tab (Partner flow)
Resource    ../keyword/tab/partner_tab/request_premium_list_tab/partner_request_premium_list_main_page.robot
Resource    ../keyword/tab/partner_tab/request_premium_list_tab/partner_request_premium_list_details_page.robot
Resource    ../keyword/tab/partner_tab/request_premium_list_tab/partner_request_premium_list_result_page.robot
Resource    ../keyword/tab/partner_tab/dashboard_tab/partner_dashboard_main_page.robot
