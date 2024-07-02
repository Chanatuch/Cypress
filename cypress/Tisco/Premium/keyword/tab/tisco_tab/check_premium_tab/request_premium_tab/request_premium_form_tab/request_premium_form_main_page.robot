*** Variables ***
# value input of existing customer searching
# Existing customer valiable
${value_premium_form_main.ExistingCustomer}     ${input_form.App_code} ${input_form.Account}


# element xpath variable
${request_premium_form_main_page.reset_button}                                xpath=//button[@class="me-3 mdc-button mdc-button--outlined mat-mdc-outlined-button mat-warn mat-mdc-button-base"]
${request_premium_form_main_page.search_button_check_visible}                 xpath=//span[contains(text(),'ค้นหา')]
${request_premium_form_main_page.search_button}                               xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'ค้นหา')]/..
${request_premium_form_main_page.tiscoCustomer_radioButton}                   xpath=//label[text() = 'ลูกค้าทิสโก้']
${request_premium_form_main_page.newCustomer_radioButton}                     xpath=//label[text() = 'ลูกค้าใหม่']
${request_premium_form_main_page.dataInfoEmpty}                               xpath=//td[@class="dataTables_empty"]
${request_premium_form_main_page.appCode_dropdown}                            xpath=//mat-select[@aria-haspopup="listbox"]
${request_premium_form_main_page.appCode_list}                                xpath=//span[contains(text(),'${input_form.App_code}')]
${request_premium_form_main_page.account_textField}                           xpath=//input[@formcontrolname="acc_no"]
${request_premium_form_main_page.firstName_textField}                         xpath=//input[@formcontrolname="first_name"]
${request_premium_form_main_page.lastName_textField}                          xpath=//input[@formcontrolname="last_name"]
${request_premium_form_main_page.license_no_textField}                        xpath=//input[@formcontrolname="license_no"]
${request_premium_form_main_page.existingCustomer_record}                     xpath=//td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]
${request_premium_form_main_page.customer_name_value_from_table}              xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/*[1]/td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]/../td[3]
${request_premium_form_main_page.appCode_account_value_from_table}            xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/*[1]/td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]/../td[1]
${request_premium_form_main_page.car_details_value_from_table}                xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/*[1]/td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]/../td[2]
${request_premium_form_main_page.license_no_value_from_table}                 xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/*[1]/td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]/../td[4]
${request_premium_form_main_page.motor_expiry_date_value_from_table}          xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/*[1]/td[contains(text(),'${value_premium_form_main.ExistingCustomer}')]/../td[5]


# # text variable
# element description

*** Keywords ***

Select Existing Customer
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.tiscoCustomer_radioButton} 
    SeleniumLibrary.Click Element                    ${request_premium_form_main_page.tiscoCustomer_radioButton}

Click Search button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.search_button}
    SeleniumLibrary.Click Element                     ${request_premium_form_main_page.search_button}

Select New Customer
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.newCustomer_radioButton} 
    SeleniumLibrary.Click Element                    ${request_premium_form_main_page.newCustomer_radioButton}
    common.Wait for process 2s

Select App code
    [Arguments]                 ${input_form.App_code}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.appCode_dropdown}
    SeleniumLibrary.Click Element                    ${request_premium_form_main_page.appCode_dropdown}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.appCode_list}
    SeleniumLibrary.Click Element                    ${request_premium_form_main_page.appCode_list}

Fill Account
    [Arguments]                 ${input_form.Account}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.account_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_main_page.account_textField}       ${input_form.Account}

Select desired Existing Customer 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_main_page.existingCustomer_record} 
    SeleniumLibrary.Click Element                    ${request_premium_form_main_page.existingCustomer_record} 

Get "All values" from searchCustomerRequestCompany Table
    ${get_appCode_account_value}=    Get Text    ${request_premium_form_main_page.appCode_account_value_from_table}
    ${appCode_account_value}=         evaluate       '${get_appCode_account_value}'.replace(' ','-')
    ${get_car_details_value}=    Get Text    ${request_premium_form_main_page.car_details_value_from_table}
    ${get_customer_value}=    Get Text    ${request_premium_form_main_page.customer_name_value_from_table}
    ${get_license_no_value}=    Get Text    ${request_premium_form_main_page.license_no_value_from_table}
    ${get_motor_expiry_date_value}=    Get Text    ${request_premium_form_main_page.motor_expiry_date_value_from_table}

    Set Global Variable    ${value_request_premium.ref_no}                                  ${appCode_account_value}
    Set Global Variable    ${value_request_premium_tisco_customer.appcode_account}          ${get_appCode_account_value}
    Set Global Variable    ${value_request_premium_tisco_customer.car_details}              ${get_car_details_value}
    Set Global Variable    ${value_request_premium_tisco_customer.customer}                 ${get_customer_value}
    Set Global Variable    ${value_request_premium_tisco_customer.license_no}               ${get_license_no_value}
    Set Global Variable    ${value_request_premium_tisco_customer.motor_expiry_date}        ${get_motor_expiry_date_value}

Check found existing customer by App Code / Account
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_form_main_page.dataInfoEmpty}
    ${column_app_code_account_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/tr
        # store all Customer value every row from search customer table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to first result row
            ${column_app_code_account_value}    Get Text    xpath=//table[@id="searchCustomerRequestCompanyTable"]/tbody/tr[${row_index}]/td[1]
            Append To List    ${column_app_code_account_values}    ${column_app_code_account_value}
        END
        Log     all existing customer values: ${column_app_code_account_values}
        # check every value in ${column_app_code_account_values} contains ${value_premium_form_main.ExistingCustomer}
        FOR    ${app_code_account}    IN    @{column_app_code_account_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${app_code_account}    ${value_premium_form_main.ExistingCustomer}
            IF  '${Result}' == 'True'
                Log     ${app_code_account} contain: ${value_premium_form_main.ExistingCustomer}
            ELSE
                Fail    ${app_code_account}, ${value_premium_form_main.ExistingCustomer} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูลลูกค้าทิสโก้ โดย App Code / Account : ${value_premium_form_main.ExistingCustomer}
    END        

