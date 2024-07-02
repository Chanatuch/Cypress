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
# Generate Claim Activity Report & Layout Big Query
${value_gen_activity_bigQuery_file.start_date}                2024-03-14
${value_gen_activity_bigQuery_file.end_date}                  2024-03-14

*** Test Cases ***
# # ||----- Generate Claim Activity Report & Layout Big Query flow -----||
Generate Claim Activity Report & Layout Big Query flow
    common.Click 'Generate Claim Activity Report & Layout Big Query' tab
    Sleep  5s
    gen_activity_big_query_file_feature.Input and Click Generate Claim Activity Report & Layout Big Query               ${value_gen_activity_bigQuery_file.start_date}   ${value_gen_activity_bigQuery_file.end_date}
