*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    Collections
Library    DebugLibrary 
Library    DateTime


Resource    ../keyword/common.robot
# # # feature 
# # myprotection
# claim service
Resource    ../keyword/myprotection/feature/claim_service/import_claim_feature.robot
Resource    ../keyword/myprotection/feature/claim_service/gen_activity_big_query_file_feature.robot
Resource    ../keyword/myprotection/feature/claim_service/retrieve_claim_information_feature.robot
Resource    ../keyword/myprotection/feature/claim_service/retrieve_claim_appointment_feature.robot
Resource    ../keyword/myprotection/feature/claim_service/retrieve_service_zipcode_mapping_feature.robot
# report management
Resource    ../keyword/myprotection/feature/report_management/import_eir_file_feature.robot


# # octopus
Resource    ../keyword/octopus/feature/group_of_assignment_feature.robot



# # # tab 
# # myprotection
# claim service
Resource    ../keyword/myprotection/tab/claim_service/import_claim_main_page.robot
Resource    ../keyword/myprotection/tab/claim_service/gen_activity_big_query_file_page.robot
Resource    ../keyword/myprotection/tab/claim_service/retrieve_claim_information_page.robot
Resource    ../keyword/myprotection/tab/claim_service/retrieve_claim_appointment_page.robot
Resource    ../keyword/myprotection/tab/claim_service/retrieve_service_zipcode_mapping_page.robot
# report management
Resource    ../keyword/myprotection/tab/report_management/import_eir_file_main_page.robot

# # octopus
Resource    ../keyword/octopus/tab/setting_tab/group_of_assignment_main_page.robot
