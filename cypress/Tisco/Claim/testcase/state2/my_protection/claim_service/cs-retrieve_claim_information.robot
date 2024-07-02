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
# Retrieve Claim Information
${value_claim_info.accident_no}                             AD_FD20240313_1011
@{value_claim_info.accident_no_date_first}                  4   ตุลาคม   2566
@{value_claim_info.accident_no_date_last}                   5   ตุลาคม   2566
${value_claim_info.claim_no}                                CL_06_0021
@{value_claim_info.claim_no_date_first}                     4   ตุลาคม   2566
@{value_claim_info.claim_no_date_last}                      5   ตุลาคม   2566
${value_claim_info.brand}                                   FORD
${value_claim_info.model}                                   RANGER DOUBLE CAB 1.6 - 2.0 CC
${value_claim_info.customer_id}                             5717660027179
${value_claim_info.customer_full_name}                      driver test15
${value_claim_info.accident_province}                       Nakhon Sawan
${value_claim_info.accident_zipcode}                        60130
${value_claim_info.license_no}                              ทบ 011
${value_claim_info.customer_zipcode}                        11130
${value_claim_info.customer_province}                       Rayong
${value_claim_info.app_code}                                HP
${value_claim_info.account}                                 5238609
${value_claim_info.phone_number_at_accident}                0846422332


*** Test Cases ***
# # ||----- Retrieve Claim Information flow -----||
RetrieveClaimInformation_flow - Search Claim information
    common.Click 'Retrieve Claim Information' tab
    Sleep  5s
    retrieve_claim_information_feature.Input All field in 'Retrieve Claim Information'  ${value_claim_info.accident_no}
                                                                                ...     ${value_claim_info.accident_no_date_first}
                                                                                ...     ${value_claim_info.accident_no_date_last}
                                                                                ...     ${value_claim_info.claim_no}
                                                                                ...     ${value_claim_info.claim_no_date_first}
                                                                                ...     ${value_claim_info.claim_no_date_last}
                                                                                ...     ${value_claim_info.brand}
                                                                                ...     ${value_claim_info.model}
                                                                                ...     ${value_claim_info.customer_id}
                                                                                ...     ${value_claim_info.customer_full_name}
                                                                                ...     ${value_claim_info.accident_province}
                                                                                ...     ${value_claim_info.accident_zipcode}
                                                                                ...     ${value_claim_info.license_no}
                                                                                ...     ${value_claim_info.customer_zipcode}
                                                                                ...     ${value_claim_info.customer_province}
                                                                                ...     ${value_claim_info.app_code}
                                                                                ...     ${value_claim_info.account}
                                                                                ...     ${value_claim_info.phone_number_at_accident}
    retrieve_claim_information_page.Click 'Search' Button
    retrieve_claim_information_page.Verify "Claim Information" details
