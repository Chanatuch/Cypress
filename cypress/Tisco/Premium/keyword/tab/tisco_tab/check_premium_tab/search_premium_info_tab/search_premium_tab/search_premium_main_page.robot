*** Variables ***
# value input of existing customer searching
# Existing customer valiable
${value_premium_main.FirstName}      พันจ่าเอกฺBOO
${value_premium_main.LastName}      BII
${value_premium_main.License_no}      แพง 4002
${value_premium_main.ExistingCustomer}     ${value_premium_main.App_code} ${value_premium_main.Account}


# element xpath variable
${search_premium_main_page.dashboard_labelLink}                         xpath=//li[contains(text(),'หน้าหลัก')]
${search_premium_main_page.check_premium_labelLink}                     xpath=//li[contains(text(),'ค้นหาเบี้ยประกันภัยรถยนต์')]
${search_premium_main_page.reset_button}                                xpath=//button[@class="me-3 mdc-button mdc-button--outlined mat-mdc-outlined-button mat-warn mat-mdc-button-base"]
${search_premium_main_page.search_button_check_visible}                 xpath=//span[contains(text(),'ค้นหา')]
${search_premium_main_page.search_button}                               xpath=//button[@class="mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]
${search_premium_main_page.tiscoCustomer_radioButton}                   xpath=//label[text() = 'ลูกค้าทิสโก้']
${search_premium_main_page.newCustomer_radioButton}                     xpath=//label[text() = 'ลูกค้าใหม่']
${search_premium_main_page.dataInfoEmpty}                               xpath=//td[@class="dataTables_empty"]
${search_premium_main_page.appCode_dropdown}                            xpath=//mat-select[@aria-haspopup="listbox"]
${search_premium_main_page.appCode_list}                                xpath=//span[contains(text(),'${value_premium_main.App_code}')]
${search_premium_main_page.account_textField}                           xpath=//input[@formcontrolname="acc_no"]
${search_premium_main_page.firstName_textField}                         xpath=//input[@formcontrolname="first_name"]
${search_premium_main_page.lastName_textField}                          xpath=//input[@formcontrolname="last_name"]
${search_premium_main_page.license_no_textField}                        xpath=//input[@formcontrolname="license_no"]
${search_premium_main_page.existingCustomer_record}                     xpath=//td[contains(text(),'${value_premium_main.ExistingCustomer}')]
${search_premium_main_page.customer_name_value_from_table}              xpath=//table[@id="searchCustomerTable"]/tbody/*[1]/td[contains(text(),'${value_premium_main.App_code} ${value_premium_main.Account}')]/../td[3]
${search_premium_main_page.appCode_account_value_from_table}            xpath=//table[@id="searchCustomerTable"]/tbody/*[1]/td[contains(text(),'${value_premium_main.App_code} ${value_premium_main.Account}')]/../td[1]

# # text variable
# element description
${value.tisco_customer_description}   มีข้อมูลรถยนต์อยู่ในระบบ TISCO
*** Keywords ***

Check Search premium description label
    SeleniumLibrary.Wait Until Page Contains    ${value.tisco_customer_description}

Check Dashboard label link
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.dashboard_labelLink} 

Check Search Premium label link
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.check_premium_labelLink} 

Check Reset button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.reset_button}

Check Search button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.search_button_check_visible}

Click Search button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.search_button}
    SeleniumLibrary.Click Button    ${search_premium_main_page.search_button}

Select Existing Customer
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.tiscoCustomer_radioButton} 
    SeleniumLibrary.Click Element   ${search_premium_main_page.tiscoCustomer_radioButton}
    search_premium_main_page.Check Search premium description label

Select New Customer
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.newCustomer_radioButton} 
    SeleniumLibrary.Click Element   ${search_premium_main_page.newCustomer_radioButton}

Check found existing customer
    Element Should Not Be Visible       ${search_premium_main_page.dataInfoEmpty}

Check not found existing customer
    Element Should Be Visible       ${search_premium_main_page.dataInfoEmpty}

Select App code
    [Arguments]                 ${value_premium_main.App_code}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.appCode_dropdown}
    SeleniumLibrary.Click Element   ${search_premium_main_page.appCode_dropdown}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.appCode_list}
    SeleniumLibrary.Click Element   ${search_premium_main_page.appCode_list}

Fill Account
    [Arguments]                 ${value_premium_main.Account}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.account_textField} 
    SeleniumLibrary.Input Text  ${search_premium_main_page.account_textField}       ${value_premium_main.Account}

Fill First name
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.firstName_textField}
    SeleniumLibrary.Input Text  ${search_premium_main_page.firstName_textField}       ${value_premium_main.FirstName}

Fill Last name
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.lastName_textField}
    SeleniumLibrary.Input Text  ${search_premium_main_page.lastName_textField}       ${value_premium_main.LastName}

Fill License no
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.license_no_textField}
    SeleniumLibrary.Input Text  ${search_premium_main_page.license_no_textField}       ${value_premium_main.License_no}

Click Reset button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.reset_button}
    SeleniumLibrary.Click Button    ${search_premium_main_page.reset_button}

Select desired Existing Customer 
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.existingCustomer_record} 
    SeleniumLibrary.Click Element    ${search_premium_main_page.existingCustomer_record} 

Get customer name from searchCustomer Table
    ${get_customer_name_value}=    Get Text    ${search_premium_main_page.customer_name_value_from_table}
    Set Global Variable    ${value_premium_main.customer_name_value_from_searchCustomerTable}    ${get_customer_name_value}

Get app code/account from searchCustomer Table
    ${get_appCode_account_value}=    Get Text    ${search_premium_main_page.appCode_account_value_from_table}
    ${appCode_account_value}=         evaluate       '${get_appCode_account_value}'.replace(' ','-')
    Set Global Variable    ${value_premium_main.appCode_account_value_from_searchCustomerTable}    ${appCode_account_value}

Check found existing customer by App Code / Account
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${search_premium_main_page.dataInfoEmpty}
    ${column_app_code_account_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="searchCustomerTable"]/tbody/tr
        # store all Customer value every row from search customer table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to first result row
            ${column_app_code_account_value}    Get Text    xpath=//table[@id="searchCustomerTable"]/tbody/tr[${row_index}]/td[1]
            Append To List    ${column_app_code_account_values}    ${column_app_code_account_value}
        END
        Log     all existing customer values: ${column_app_code_account_values}
        # check every value in ${column_app_code_account_values} contains ${value_premium_main.ExistingCustomer}
        FOR    ${app_code_account}    IN    @{column_app_code_account_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${app_code_account}    ${value_premium_main.ExistingCustomer}
            IF  '${Result}' == 'True'
                Log     ${app_code_account} contain: ${value_premium_main.ExistingCustomer}
            ELSE
                Fail    ${app_code_account}, ${value_premium_main.ExistingCustomer} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูลลูกค้าทิสโก้ โดย App Code / Account : ${value_premium_main.ExistingCustomer}
    END        

Verify back to Search premium main page correctly
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.appCode_dropdown}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_main_page.account_textField} 
