*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to My Protection    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.MyProtection}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}      xpath=//input[@name="identifier"]
${xpath.password_inputField}   xpath=//input[@name="credentials.passcode"]
${xpath.signIn_button}         xpath=//input[@value="Sign in"]
${value.MyProtection}          (RDBMS) Protection Platform - State2 (OpenID)



# # # || ----- Value Input ----- ||
# Service Zipcode Mapping
${value_zipcode_map.brand}          MAZDA
${value_zipcode_map.zipcode}        10130
${value_zipcode_map.province}       Samut Prakan
${value_zipcode_map.oem_code}       A101


*** Test Cases ***
# # ||----- Retrieve Service Zipcode Mapping flow -----||
RetrieveServiceZipcodeMapping_flow - Search Service Zipcode Mapping
    common.Click 'Retrieve Service Zipcode Mapping' tab
    Sleep  5s
    retrieve_service_zipcode_mapping_feature.Input All field in 'Retrieve Service Zipcode Mapping'      ${value_zipcode_map.brand}   
                                                                                    ...                 ${value_zipcode_map.zipcode}
                                                                                    ...                 ${value_zipcode_map.province}
                                                                                    ...                 ${value_zipcode_map.oem_code}
    Sleep  5s
