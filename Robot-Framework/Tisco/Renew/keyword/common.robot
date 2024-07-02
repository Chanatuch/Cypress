*** Variables ***
## value input of "okta beta" login
${value.state2_url}     https://beta-tisco.okta.com/login/login.htm
${Browsers}    chrome
${value.state2_username}    puangkae
${value.state2_password}    Aum711467345

# # xpath of "okta Beta" login
${xpath.state2_username_inputField}     xpath=//input[@autocomplete="username"]
${xpath.state2_password_inputField}     xpath=//input[@autocomplete="current-password"]
${xpath.state2_submitutton}             xpath=//input[@id="okta-signin-submit"]

${xpath.state2_1269}                    xpath=//span[contains(text(),'${value.checkISP}')]
${common.app_license_expired_dialog_header}            xpath=//app-license-expired-dialog/..//h4[contains(text(),'แจ้งเตือนไม่มีใบอนุญาตนายหน้าประกันภัย!')]
${common.confirm_app_license_expired_dialog_button}    xpath=//app-license-expired-dialog/..//span[contains(text(),'รับทราบ')]
${xpath.telesale_searchcustomer_button}    xpath=//span[contains(text(),'ค้นหาข้อมูลลูกค้า')]
#value
${value.isp_title}      Insurance Sale Portal                


*** Keywords ***
Access to "okta Beta" login
    [Arguments]                                  ${value.state2_username}      ${value.state2_password}     ${value.state2_url}       ${xpath.state2_username_inputField}     ${xpath.state2_password_inputField}      ${xpath.state2_submitutton}      ${value.checkISP}
    Open Browser                              ${value.state2_url}     Chrome
    SeleniumLibrary.Maximize Browser Window
    sleep    10s
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.state2_username_inputField}
    SeleniumLibrary.Input Text                          ${xpath.state2_username_inputField}     ${value.state2_username}
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.state2_password_inputField}
    SeleniumLibrary.Input Text                          ${xpath.state2_password_inputField}      ${value.state2_password}
    SeleniumLibrary.Click Element                       ${xpath.state2_submitutton}
    sleep    10s
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.state2_search}
    SeleniumLibrary.Input Text                          ${xpath.state2_search}      ${value.checkISP}
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.state2_1269}
    SeleniumLibrary.Click Element                       ${xpath.state2_1269}
    sleep    5s
    SeleniumLibrary.Switch Window                       ${value.isp_title}
    sleep    13s
    common.Verify App License expired dialog are display or not
    Set Global Variable    ${value_common.email}            ${value.state2_username}
    
Verify App License expired dialog are display or not
    ${Result_app_license_expired_dialog}=      Run Keyword And Return Status    Should Not Be Empty       ${common.confirm_app_license_expired_dialog_button}
    IF  '${Result_app_license_expired_dialog}' == 'True'
        common.Click confirm app license expired dialog button
    END

Click confirm app license expired dialog button
    SeleniumLibrary.Wait Until Element Is Visible    ${common.confirm_app_license_expired_dialog_button}
    SeleniumLibrary.Click Element   ${common.confirm_app_license_expired_dialog_button}
    SeleniumLibrary.click Element   ${xpath.telesale_searchcustomer_button}
    Sleep    5s