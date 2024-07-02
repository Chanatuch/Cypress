*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to Partner Check Premium application    ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.partner_url}                        https://user-management.tbeta.co/partner-login/login?ptid=Insurance_Portal
${value.partner_username}                   lmgStaff1@tisco.co.th
${value.partner_password}                   P@$$w0rd01
${value.partner_search}                     app_isp_partner_state2
# # xpath of "okta Beta" login
${xpath.partner_username_inputField}        xpath=//input[@id="username"]
${xpath.partner_password_inputField}        xpath=//input[@id="password"]
${xpath.submit_username_button}             xpath=//button[@data-testid="submit-username"]
${xpath.password_login_button}              xpath=//button[@data-testid="password-login-btn"]
${xpath.sign_in_button}                     xpath=//button[@data-testid="submit-username"]
${xpath.partner_search_textField}           xpath=//input[@name="search"]


# # value input of Parter request premium list

*** Test Cases ***
# # ||----- Searching draft flow -----||
Dashboard_VerifyValueflow(Partner) - ตรวจสอบจำนวนค่าต่างๆในแต่ละ card
    common.Click (Partner) Dashboard tab
    partner_dashboard_feature.Verify "all values" in "New items" card