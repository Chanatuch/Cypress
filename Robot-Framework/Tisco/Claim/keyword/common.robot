*** Variables ***
${common.search_textField}                             xpath=//input[@name="dashboard-search-input"]
${common.MyProtection}                                 xpath=//span[contains(text(),'${value.MyProtection}')]
${common.app_isp_partner}                              xpath=//li[@role="menuitem"]/..//p[contains(text(),'${value.partner_search}')]
${common.scrolldowntotable}                            xpath=//div[contains(text(),'ข้อมูลทั้งหมด']
${common.search_button}                                xpath=//button[@class="mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]
${common.dataInfoEmpty}                                xpath=//td[@class="dataTables_empty"]
${common.dashboard_labelLink}                          xpath=//li[contains(text(),'หน้าหลัก')]
${common.filter_text}                                  xpath=//li[contains(text(),'ตัวกรองการค้นหา')]
# claim service
${common.claim_service_tab}                                     xpath=//div[@tc-menu-id="P369"]/..//span[contains(text(),'Claim Service')]
${common.import_claim_tab}                                      xpath=//div[@tc-child-menu-id="P369"]/div[@tc-child-id="3010953f-a916-4c25-ad38-7a082b0ed859"]/..//span[contains(text(),'นำเข้าข้อมูล Claim')]
${common.retrieve_claim_information_tab}                        xpath=//div[@tc-child-menu-id="P369"]/div[@tc-child-id="3010953f-a916-4c25-ad38-7a082b0ed859"]/..//span[contains(text(),'เรียกดูข้อมูล Claim Information')]
${common.retrieve_claim_appointment_tab}                        xpath=//div[@tc-child-menu-id="P369"]/div[@tc-child-id="4fd07a96-a1c7-4413-a61b-5af2eade6877"]/..//span[contains(text(),'เรียกดูข้อมูล Claim Appointment')]
${common.retrieve_service_zipcode_mapping_tab}                  xpath=//div[@tc-child-menu-id="P369"]/div[@tc-child-id="67bde59c-d728-4dc4-b675-459804602530"]/..//span[contains(text(),'เรียกดูข้อมูล Service Zipcode Mapping')]
${common.generate_claim_activity_report_layout_big_query_tab}   xpath=//div[@tc-child-menu-id="P369"]/div[@tc-child-id="1ae9ce4a-da6e-4703-b124-cbe488f65fe0"]/..//span[contains(text(),'Generate Claim Activity Report & Layout Big Query')]
# report management
${common.report_management_tab}                                 xpath=//div[@tc-menu-id="P568"]/..//span[contains(text(),'Report Management')]
${common.import_eir_file_tab}                                   xpath=//div[@tc-child-menu-id="P568"]/div[@tc-child-id="9584a55d-5a1e-4301-932b-94accc79e741"]/..//span[contains(text(),'File Import')]


# # value
${value.MyProtection_title}         Launcher : 124

*** Keywords ***
Wait for process 1s
    Sleep   1s

Wait for process 2s
    Sleep   2s

Wait for process 3s
    Sleep   3s

Wait for process 4s
    Sleep   4s

Wait for process 5s
    Sleep   5s

Wait for process 6s
    Sleep   6s

Wait for process 7s
    Sleep   7s

Wait for process 8s
    Sleep   8s

Wait for process 10s
    Sleep   10s

Wait for process 3 mins
    Sleep   180s

Wait for process 4 mins
    Sleep   240s

Wait for process 5 mins
    Sleep   300s

Wait for process 8 mins
    Sleep   480s

Wait for process 9 mins
    Sleep   540s

Wait for process 10 mins
    Sleep   600s

Scroll up to 400
    Execute JavaScript    window.scrollTo(400,0)

Scroll up to 600
    Execute JavaScript    window.scrollTo(600,0)

Scroll up to 800
    Execute JavaScript    window.scrollTo(800,0)

Scroll down to 400
    Execute JavaScript    window.scrollTo(0,400)

Scroll down to 600
    Execute JavaScript    window.scrollTo(0,600)

Scroll down to 800
    Execute JavaScript    window.scrollTo(0,800) 

Scroll down to 1200
    Execute JavaScript    window.scrollTo(0,1200) 

Convert Year to Gregorian Calender
    [Arguments]                   ${buddist_year}
    ${gregorian_year}=    Evaluate    ${buddist_year} - 543
    [Return]    ${gregorian_year}

 #  https://alpha-tisco.okta.com/oauth2/v1/authorize?client_id=okta.2b1959c8-bcc0-56eb-a589-cfcfb7422f26&code_challenge=xfDpMUJ7OZWS4-uCZ4pB7LNBOEB8m7wNDH4D62alSic&code_challenge_method=S256&nonce=zMNzgGT1RGPnNWNKere6zrCNNU2EMiad5t3keuQS4pnxlRwEzGw7UttRhpOPv4UH&redirect_uri=https%3A%2F%2Falpha-tisco.okta.com%2Fenduser%2Fcallback&response_type=code&state=3xDLRTTUWphOid6gcjLDfelWE6L1VBLre6GbqYqhYur3bQV0PasYFULWvsSCkaTd&scope=openid%20profile%20email%20okta.users.read.self%20okta.users.manage.self%20okta.internal.enduser.read%20okta.internal.enduser.manage%20okta.enduser.dashboard.read%20okta.enduser.dashboard.manage
Access to My Protection
    [Arguments]                                  ${value.email}      ${value.password}     ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}       ${xpath.signIn_button}      ${value.MyProtection}
    Open Browser                              ${value.okta_url}     Chrome
    SeleniumLibrary.Maximize Browser Window
    sleep    10s
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.email_inputField}
    SeleniumLibrary.Input Text                          ${xpath.email_inputField}     ${value.email}
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.password_inputField}
    SeleniumLibrary.Input Text                          ${xpath.password_inputField}      ${value.password}
    SeleniumLibrary.Click Element                       ${xpath.signIn_button}
    sleep    10s
    SeleniumLibrary.Wait Until Element Is Visible       ${common.search_textField}
    SeleniumLibrary.Input Text                          ${common.search_textField}      ${value.MyProtection}
    SeleniumLibrary.Wait Until Element Is Visible       ${common.MyProtection}
    SeleniumLibrary.Click Element                       ${common.MyProtection}
    common.Wait for process 2s
    SeleniumLibrary.Switch Window       ${value.MyProtection_title}
    sleep    15s
    Set Global Variable    ${value_common.email}            ${value.email}
    # removeScreenshot.Remove Screenshot Files

Click 'Import Claim' tab
    common.Wait for process 7s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.claim_service_tab}
    SeleniumLibrary.Click Element                    ${common.claim_service_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.import_claim_tab}
    SeleniumLibrary.Click Element                    ${common.import_claim_tab}
    common.Wait for process 5s

Click 'Retrieve Claim Information' tab
    common.Wait for process 7s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.claim_service_tab}
    SeleniumLibrary.Click Element                    ${common.claim_service_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.retrieve_claim_information_tab}
    SeleniumLibrary.Click Element                    ${common.retrieve_claim_information_tab}
    common.Wait for process 5s

Click 'Retrieve Claim Appointment' tab
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.claim_service_tab}
    SeleniumLibrary.Click Element                    ${common.claim_service_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.retrieve_claim_appointment_tab}
    SeleniumLibrary.Click Element                    ${common.retrieve_claim_appointment_tab}
    common.Wait for process 5s

Click 'Retrieve Service Zipcode Mapping' tab
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.claim_service_tab}
    SeleniumLibrary.Click Element                    ${common.claim_service_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.retrieve_service_zipcode_mapping_tab}
    SeleniumLibrary.Click Element                    ${common.retrieve_service_zipcode_mapping_tab}
    common.Wait for process 5s

Click 'Generate Claim Activity Report & Layout Big Query' tab
    common.Wait for process 7s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.claim_service_tab}
    SeleniumLibrary.Click Element                    ${common.claim_service_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.generate_claim_activity_report_layout_big_query_tab}
    SeleniumLibrary.Click Element                    ${common.generate_claim_activity_report_layout_big_query_tab}
    common.Wait for process 5s

Click 'Import EIR File' tab
    common.Wait for process 7s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.report_management_tab}
    SeleniumLibrary.Click Element                    ${common.report_management_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.import_eir_file_tab}
    SeleniumLibrary.Click Element                    ${common.import_eir_file_tab}
    common.Wait for process 5s

Convert Month to Month Abbreviation
    [Arguments]             ${value_claim.process_date_month}
    @{month_abbreviation}                 Create List        Jan    Feb    Mar    Apr    May    Jun    Jul    Aug    Sep    Oct    Nov    Dec
    ${months_list_length}     Get Length      ${month_abbreviation} 
    FOR    ${index}    IN RANGE     ${months_list_length}
        ${count_year_group} =    Evaluate    ${index} + 1
        ${check_month_name}=      Run Keyword And Return Status    Should Contain Any    ${value_claim.process_date_month}      ${month_abbreviation}[${index}]
        IF    '${check_month_name}' == 'True'
            Set Global Variable    ${value_claim.month_abbreviation}            ${month_abbreviation}[${index}]
        END
    END

Access to Octopus
    [Arguments]                                  ${value.email}   ${value.pin}   ${value.okta_url}   ${xpath.email_inputField}   ${value.all_pin_field}   ${xpath.signIn_button}
    Open Browser                                    ${value.okta_url}     Chrome
    SeleniumLibrary.Maximize Browser Window
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.email_inputField}
    SeleniumLibrary.Input Text                          ${xpath.email_inputField}     ${value.email}
    SeleniumLibrary.Click Element                       ${xpath.signIn_button}
    common.Wait for process 5s
    ${pin_length}     Get Length      ${value.pin}
    FOR    ${index}    IN RANGE     ${pin_length}
        SeleniumLibrary.Input Text                      ${value.all_pin_field}[${index}]     ${value.pin}[${index}]
    END
    common.Wait for process 7s

