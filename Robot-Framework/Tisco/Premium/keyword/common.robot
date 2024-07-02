*** Variables ***
${common.search_textField}                             xpath=//input[@name="search"]
${common.1269_appLabel}                                xpath=//span[contains(text(),'${value.checkPremium}')]
${common.app_isp_partner}                              xpath=//li[@role="menuitem"]/..//p[contains(text(),'${value.partner_search}')]
${common.scrolldowntotable}                            xpath=//div[contains(text(),'ข้อมูลทั้งหมด']
${common.search_button}                                xpath=//button[@class="mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]
${common.dataInfoEmpty}                                xpath=//td[@class="dataTables_empty"]
${common.dashboard_labelLink}                          xpath=//li[contains(text(),'หน้าหลัก')]
${common.filter_text}                                  xpath=//li[contains(text(),'ตัวกรองการค้นหา')]
${common.app_license_expired_dialog_header}            xpath=//app-license-expired-dialog/..//h4[contains(text(),'แจ้งเตือนไม่มีใบอนุญาตนายหน้าประกันภัย!')]
${common.confirm_app_license_expired_dialog_button}    xpath=//app-license-expired-dialog/..//span[contains(text(),'รับทราบ')]

${common.check_premium_information_tab}                xpath=//span[contains(text(),'เช็คข้อมูลเบี้ยประกันรถยนต์')]
# # check_premium_tab
${common.check_premium_tab}                            xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[1]/div/a/mat-icon/../span[contains(text(),'ค้นหาเบี้ยในระบบ')]/..
${common.search_premium_tab}                           xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[1]/div/div/*//span[text()='ค้นหาเบี้ยประกันภัยรถยนต์']
${common.quotation_history_tab}                        xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[1]/div/div/*//span[text()='ประวัติการค้นหา']
# # request_premium_tab
${common.request_premium_tab}                          xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[2]/div/a/mat-icon/../span[contains(text(),'สอบถามเบี้ย')]/..
${common.request_premium_form_tab}                     xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[2]/div/div/*//span[text()='สอบถามเบี้ย']
${common.request_premium_draft_tab}                    xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[2]/div/div/*//span[text()='บันทึกแบบร่าง']
${common.request_premium_list_tab}                     xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[2]/div/div/*//span[text()='รายการสอบถามเบี้ย']
# # # partner premium tab
${common.partner_request_premium_list_tab}             xpath=//div[@class="item-menu show-menu"]/..//span[contains(text(),'รายการสอบถามเบี้ย')]
${common.partner_dashboard_tab}                        xpath=//div[@class="item-menu show-menu"]/..//span[contains(text(),'แดชบอร์ด')]
# # value
${value.premium_title}      Insurance Sale Portal
@{months}                     January  February  March  April  May  June  July  August  September  October  November  December

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

Refresh Request Premium list page
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_list_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_list_tab}
    common.Wait for process 5s

Scroll up to top & click search button and check found/not found check premium list
    # Scroll Element Into View    ${common.filter_text}
    search_premium_filter_campaign_page.Get "Car information" after search premium 
    Execute JavaScript    window.scrollTo(0,400)
    common.Wait for process 4s
    Execute JavaScript    window.scrollTo(0,0)
    common.Wait for process 4s
    SeleniumLibrary.Click Button    ${common.search_button}
    common.Wait for process 7s
    Execute JavaScript    window.scrollTo(0,800)
    ${Result}=      Run Keyword And Return Status    Element Should Not Be Visible       ${common.dataInfoEmpty}
    IF  '${Result}' == 'True'
        Log    Search premium result = Found.
    ELSE
        Log    Search premium result = Not Found.
    END
    common.Wait for process 4s

Logic check how many times to click "Previous 24 button" linked to input desired year
    [Arguments]                 ${input_year}
    IF  '${input_year}' <= '2039' and '${input_year}' >= '2016'
        ${count_year_group} =    Evaluate    0
    ELSE 
        Set Global Variable    ${year_date}    ${input_year}
        IF  '${input_year}' < '2016'
            common.Verify year length group logic and Click previous 24 count button    ${year_date}
        ELSE
            Fail    กรุณาระบุ Date ให้ถูกต้อง **ไม่สามารถเลือกวันที่เกินปัจจุบันได้**
        END
    END

Logic check how many times to click "Previous or Next 24 button" linked to input desired year
    [Arguments]                 ${input_year}
    IF  '${input_year}' <= '2039' and '${input_year}' >= '2016'
        ${count_year_group} =    Evaluate    0
    ELSE 
        Set Global Variable    ${year_date}    ${input_year}
        IF       '${input_year}' < '2016'
            common.Verify year length group logic and Click previous 24 count button    ${year_date}
        ELSE IF  '${input_year}' > '2039'
            common.Verify year length group logic and Click next 24 count button        ${year_date}
        END
    END

Verify year length group logic and Click previous 24 count button
    [Arguments]                 ${year_date}
        ${year_ranges} =    Create List    1992-2015   1968-1991   1944-1967   1920-1943   1896-1919   1872-1895   1848-1871   1824-1847   1800-1823   1776-1799
        ${year_list_length}     Get Length      ${year_ranges} 
    FOR    ${index}    IN RANGE     ${year_list_length}
        ${range} =    Get From List    ${year_ranges}    ${index}
        ${min_year}    ${max_year} =    Evaluate    [int(x) for x in "${range}".split('-')]
        ${count_year_group} =    Evaluate    ${index} + 1
        IF    ${year_date} <= ${max_year} and ${year_date} >= ${min_year}
            FOR    ${row_index}    IN RANGE    ${count_year_group}
                SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.previous_24_years_button} 
                SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.previous_24_years_button}
            END
        END
    END

Verify year length group logic and Click next 24 count button
    [Arguments]                 ${year_date}
        ${year_ranges} =    Create List    2040-2063   2064-2087   2088-2111   2112-2135   2136-2159   2160-2183   2184-2207   2208-2231   2232-2255   2256-2279
        ${year_list_length}     Get Length      ${year_ranges} 
    FOR    ${index}    IN RANGE     ${year_list_length}
        ${range} =    Get From List    ${year_ranges}    ${index}
        ${min_year}    ${max_year} =    Evaluate    [int(x) for x in "${range}".split('-')]
        ${count_year_group} =    Evaluate    ${index} + 1
        IF    ${year_date} <= ${max_year} and ${year_date} >= ${min_year}
            FOR    ${row_index}    IN RANGE    ${count_year_group}
                SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.next_24_years_button} 
                SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.next_24_years_button}
            END
        END
    END

Convert Month Name to Number
    [Arguments]                 ${month_date}
    ${month_name}    Set Variable    ${month_date}
    ${month_index}    Evaluate    "${months.index('${month_name}')}"    # Get the index as a string
    ${get_month_index}=    convert to number   ${month_index}     
    ${month_number}    Evaluate    ${get_month_index} + 1  
    ${integer_month_number}    Evaluate    int(${month_number})
    Log    ${month_name} is month position number : ${integer_month_number}
    Set Global Variable    ${value.get_integer_month_number}    ${integer_month_number}

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

Click Request premium draft tab (for drafting)
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_draft_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_draft_tab}

Verify App License expired dialog are display or not
    ${Result_app_license_expired_dialog}=      Run Keyword And Return Status    Should Not Be Empty       ${common.confirm_app_license_expired_dialog_button}
    IF  '${Result_app_license_expired_dialog}' == 'True'
        common.Click confirm app license expired dialog button
    END

Click confirm app license expired dialog button
    SeleniumLibrary.Wait Until Element Is Visible    ${common.confirm_app_license_expired_dialog_button}
    SeleniumLibrary.Click Element   ${common.confirm_app_license_expired_dialog_button}

                                                #  https://alpha-tisco.okta.com/oauth2/v1/authorize?client_id=okta.2b1959c8-bcc0-56eb-a589-cfcfb7422f26&code_challenge=xfDpMUJ7OZWS4-uCZ4pB7LNBOEB8m7wNDH4D62alSic&code_challenge_method=S256&nonce=zMNzgGT1RGPnNWNKere6zrCNNU2EMiad5t3keuQS4pnxlRwEzGw7UttRhpOPv4UH&redirect_uri=https%3A%2F%2Falpha-tisco.okta.com%2Fenduser%2Fcallback&response_type=code&state=3xDLRTTUWphOid6gcjLDfelWE6L1VBLre6GbqYqhYur3bQV0PasYFULWvsSCkaTd&scope=openid%20profile%20email%20okta.users.read.self%20okta.users.manage.self%20okta.internal.enduser.read%20okta.internal.enduser.manage%20okta.enduser.dashboard.read%20okta.enduser.dashboard.manage
Access to Check Premium application (Okta Alpha/Beta)
    [Arguments]                                  ${value.email}      ${value.password}     ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}       ${xpath.signIn_button}      ${value.checkPremium}
    Open Browser                              ${value.okta_url}     Chrome
    SeleniumLibrary.Maximize Browser Window
    sleep    10s
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.email_inputField}
    SeleniumLibrary.Input Text                          ${xpath.email_inputField}     ${value.email}
    SeleniumLibrary.Wait Until Element Is Visible       ${xpath.password_inputField}
    SeleniumLibrary.Input Text                          ${xpath.password_inputField}      ${value.password}
    SeleniumLibrary.Click Element                       ${xpath.signIn_button}
    sleep    16s
    SeleniumLibrary.Wait Until Element Is Visible       ${common.search_textField}
    SeleniumLibrary.Input Text                          ${common.search_textField}      ${value.checkPremium}
    SeleniumLibrary.Wait Until Element Is Visible       ${common.1269_appLabel}
    SeleniumLibrary.Click Element                       ${common.1269_appLabel}
    common.Wait for process 2s
    SeleniumLibrary.Switch Window       ${value.premium_title}
    sleep    13s
    common.Verify App License expired dialog are display or not
    Set Global Variable    ${value_common.email}            ${value.email}
    # removeScreenshot.Remove Screenshot Files

Click search premium tab
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_information_tab} 
    SeleniumLibrary.Click Element                    ${common.check_premium_information_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_tab} 
    SeleniumLibrary.Click Element                    ${common.check_premium_tab} 
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.search_premium_tab} 
    SeleniumLibrary.Click Element                    ${common.search_premium_tab} 
    Sleep       5s

Click Quotation history tab (Main flow)
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_information_tab} 
    SeleniumLibrary.Click Element                    ${common.check_premium_information_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_tab} 
    SeleniumLibrary.Click Element                    ${common.check_premium_tab} 
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.quotation_history_tab}
    SeleniumLibrary.Click Element                    ${common.quotation_history_tab}
    common.Wait for process 5s

Click Request Premium form tab
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_information_tab}
    SeleniumLibrary.Click Element                    ${common.check_premium_information_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_form_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_form_tab}
    common.Wait for process 5s

Click Request Premium draft tab
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_information_tab}
    SeleniumLibrary.Click Element                    ${common.check_premium_information_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_draft_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_draft_tab}
    common.Wait for process 5s

Click Request Premium list tab
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.check_premium_information_tab}
    SeleniumLibrary.Click Element                    ${common.check_premium_information_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_tab}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.request_premium_list_tab}
    SeleniumLibrary.Click Element                    ${common.request_premium_list_tab}
    common.Wait for process 5s

Access to Partner Check Premium application
    [Arguments]                                  ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    Open Browser                                 ${value.partner_url}     Chrome
    SeleniumLibrary.Maximize Browser Window
    common.Wait for process 8s
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.partner_username_inputField}
    SeleniumLibrary.Input Text                       ${xpath.partner_username_inputField}    ${value.partner_username}
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.submit_username_button}
    SeleniumLibrary.Click Button                     ${xpath.submit_username_button}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.password_login_button}
    SeleniumLibrary.Click Button                     ${xpath.password_login_button}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.partner_password_inputField}
    SeleniumLibrary.Input Text                       ${xpath.partner_password_inputField}    ${value.partner_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.sign_in_button}
    SeleniumLibrary.Click Button                     ${xpath.sign_in_button}
    common.Wait for process 8s
    common.Search and open Partner check premium browser

Search and open Partner check premium browser
    SeleniumLibrary.Wait Until Element Is Visible    ${xpath.partner_search_textField}
    SeleniumLibrary.Input Text                       ${xpath.partner_search_textField}    ${value.partner_search}
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${common.app_isp_partner}
    SeleniumLibrary.Click Element                    ${common.app_isp_partner}
    common.Wait for process 10s
    SeleniumLibrary.Switch Window       ${value.premium_title}
    common.Wait for process 5s
    # common.Verify App License expired dialog are display or not

Click (Partner) Request premium list tab
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.partner_request_premium_list_tab}
    SeleniumLibrary.Click Element                    ${common.partner_request_premium_list_tab}
    common.Wait for process 5s

Click (Partner) Dashboard tab
    common.Wait for process 4s
    SeleniumLibrary.Wait Until Element Is Visible    ${common.partner_dashboard_tab}
    SeleniumLibrary.Click Element                    ${common.partner_dashboard_tab}
    common.Wait for process 5s
