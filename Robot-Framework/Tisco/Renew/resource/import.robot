*** Setting ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    Collections
Library    DebugLibrary 
Library    DateTime


Resource   ../keyword/common.robot
# # feature (Tisco flow)
Resource    ../keyword/feature/feature.robot
# # Page 
Resource    ../keyword/tab/Search_customer_data_page.robot
Resource    ../keyword/tab/Letter_customer_data_page.robot