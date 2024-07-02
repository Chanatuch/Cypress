*** Variables ***
# element xpath variable
${request_premium_drafting_main_page.search_button}                              xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[text() = 'ค้นหา']/..
${request_premium_drafting_main_page.dataInfoEmpty}                              xpath=//td[@class="dataTables_empty"]
${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr
# # searching flow xpath
# Ref No.
${request_premium_drafting_main_page.ref_no_text_field}                          xpath=//input[@formcontrolname="ref_no"]
# customer name
${request_premium_drafting_main_page.customer_first_name_text_field}             xpath=//input[@formcontrolname="first_name"]
# customer surname
${request_premium_drafting_main_page.customer_last_name_text_field}              xpath=//input[@formcontrolname="last_name"]
# license no
${request_premium_drafting_main_page.license_no_text_field}                      xpath=//input[@formcontrolname="license_no"]
# UW No.
${request_premium_drafting_main_page.uw_code_text_field}                         xpath=//input[@formcontrolname="uw_code"]
# insure_company
${request_premium_drafting_main_page.insure_company_textField}                   xpath=//input[@formcontrolname="insure_company"]
# # result table
        
# # text variable
# element description

*** Keywords ***

Fill Ref No
    [Arguments]                                  ${input_draft.ref_no} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.ref_no_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.ref_no_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.ref_no_text_field}       ${input_draft.ref_no} 
    Set Global Variable    ${value_request_premium.ref_no}    ${input_draft.ref_no} 

Fill Customer first name
    [Arguments]                                  ${input_draft.customer_first_name} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.customer_first_name_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.customer_first_name_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.customer_first_name_text_field}       ${input_draft.customer_first_name} 
    Set Global Variable    ${value_request_premium.customer}    ${input_draft.customer_first_name}

Fill Customer last name
    [Arguments]                                  ${input_draft.customer_last_name} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.customer_last_name_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.customer_last_name_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.customer_last_name_text_field}       ${input_draft.customer_last_name}
    Set Global Variable    ${value_request_premium.customer}    ${input_draft.customer_last_name}

Fill License no
    [Arguments]                                  ${input_draft.license_no} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.license_no_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.license_no_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.license_no_text_field}       ${input_draft.license_no}
    Set Global Variable    ${value_request_premium.license_no}    ${input_draft.license_no}

Fill UW No
    [Arguments]                                  ${input_draft.uw_no}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.uw_code_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.uw_code_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.uw_code_text_field}       ${input_draft.uw_no}
    Set Global Variable    ${value_request_premium.UW_no}    ${input_draft.uw_no}

Fill & Select Insure company
    [Arguments]                                  @{input_draft.insure_company}
    FOR    ${insure_company_list}    IN    @{input_draft.insure_company}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.insure_company_textField}
        SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.insure_company_textField}       ${insure_company_list}
        SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[contains(text(),' ${insure_company_list} ')]
        SeleniumLibrary.Click Element                    xpath=//span[contains(text(),' ${insure_company_list} ')]
    END
    Set Global Variable    @{value_request_premium.insure_company}    @{input_draft.insure_company}

Fill UW code in Request Premium drafting
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.uw_code_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_drafting_main_page.uw_code_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_drafting_main_page.uw_code_text_field}       ${value_request_premium.UW_no}

Click Search button
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_drafting_main_page.search_button}
    SeleniumLibrary.Click Element                    ${request_premium_drafting_main_page.search_button}
    common.Wait for process 3s

Verify "FOUND / NOT FOUND" searching result for Ref No column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_ref_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Contract number value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${ref_no_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[2]
            Append To List    ${column_ref_no_values}    ${ref_no_value}
        END
        Log     all Contract number values: ${column_ref_no_values}
        # check every value in ${column_ref_no_values} contains ${value_request_premium.ref_no}
        FOR    ${ref_no}    IN    @{column_ref_no_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${ref_no}    ${value_request_premium.ref_no}
            IF  '${Result}' == 'True'
                Log     ${ref_no} contain: ${value_request_premium.ref_no}
            ELSE
                Fail    ${ref_no}, ${value_request_premium.ref_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        

Verify "FOUND / NOT FOUND" searching result for Customer column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_customer_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${customer_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[5]
            Append To List    ${column_customer_values}    ${customer_value}
        END
        Log     all Customer values: ${column_customer_values}
        # check every value in ${column_customer_values} contains ${value_request_premium.customer}
        FOR    ${customer}    IN    @{column_customer_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${customer}    ${value_request_premium.customer}
            IF  '${Result}' == 'True'
                Log     ${customer} contain: ${value_request_premium.customer}
            ELSE
                Fail    ${customer}, ${value_request_premium.customer} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        

Verify "FOUND / NOT FOUND" searching result for Brand / Model column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_brand_and_model_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Brand / Model value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${brand_and_model_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[6]
            Append To List    ${column_brand_and_model_values}    ${brand_and_model_value}
        END
        Log     all Brand / Model values: ${column_brand_and_model_values}
        # check every value in ${column_brand_and_model_values} contains ${value_request_premium.brand_and_model}
        FOR    ${brand_and_model}    IN    @{column_brand_and_model_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${brand_and_model}    ${value_request_premium.brand_and_model}
            IF  '${Result}' == 'True'
                Log     ${brand_and_model} contain: ${value_request_premium.brand_and_model}
            ELSE
                Fail    ${brand_and_model}, ${value_request_premium.brand_and_model} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        

Verify "FOUND / NOT FOUND" searching result for License No column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_license_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${license_no_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[7]
            Append To List    ${column_license_no_values}    ${license_no_value}
        END
        Log     all Customer values: ${column_license_no_values}
        # check every value in ${column_license_no_values} contains ${value_request_premium.license_no}
        FOR    ${license_no}    IN    @{column_license_no_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${license_no}    ${value_request_premium.license_no}
            IF  '${Result}' == 'True'
                Log     ${license_no} contain: ${value_request_premium.license_no}
            ELSE
                Fail    ${license_no}, ${value_request_premium.license_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END  

Verify "FOUND / NOT FOUND" searching result for Check premium type column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_check_premium_type_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${check_premium_type_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[8]
            Append To List    ${column_check_premium_type_values}    ${check_premium_type_value}
        END
        Log     all Customer values: ${column_check_premium_type_values}
        # check every value in ${column_check_premium_type_values} contains ${value_request_premium.check_premium_type}
        FOR    ${check_premium_type}    IN    @{column_check_premium_type_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${check_premium_type}    ${value_request_premium.check_premium_type}
            IF  '${Result}' == 'True'
                Log     ${check_premium_type} contain: ${value_request_premium.check_premium_type}
            ELSE
                Fail    ${check_premium_type}, ${value_request_premium.check_premium_type} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END              

Verify matching UW No from in Request Premium drafting
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Page Contains    ค้นหารายการสอบถามเบี้ย (แบบร่าง)
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_uw_code_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_uw_code_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/*[${row_index}]/td[3]
            Append To List    ${column_uw_code_values}    ${column_uw_code_value}
        END
        Log     all UW No values: ${column_uw_code_values}
        # check every value in ${uw_code} contains ${value_request_premium.UW_no}
        FOR    ${uw_code}    IN    @{column_uw_code_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${uw_code}    ${value_request_premium.UW_no}
            IF  '${Result}' == 'True'
                Log     ${uw_code} contain: ${value_request_premium.UW_no}
            ELSE
                Fail    ${uw_code}, ${value_request_premium.UW_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        

Verify Request Premium status column is "Drafting" 
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_status_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_status_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/*[${row_index}]/td[9]
            Append To List    ${column_status_values}    ${column_status_value}
        END
        Log     all UW No values: ${column_status_values}
        # check every value in ${status} contains บันทึกแบบร่าง
        FOR    ${status}    IN    @{column_status_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${status}    บันทึกแบบร่าง
            IF  '${Result}' == 'True'
                Log     ${status} contain: บันทึกแบบร่าง
            ELSE
                Fail    ${status}, บันทึกแบบร่าง มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        

Verify "FOUND / NOT FOUND" searching result for Insure company column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_drafting_main_page.dataInfoEmpty}
    ${column_insure_company_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_drafting_main_page.row_count_from_requestPremiumdraftTable}
        # store all Contract number value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${insure_company_value}    Get Text    xpath=//table[@id="requestPremiumdraftTable"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_insure_company_values}    ${insure_company_value}
        END
        Log     all Contract number values: ${column_insure_company_values}
        # check every value in ${column_insure_company_values} contains ${input_insure_company_list}
        FOR    ${insure_company}    IN    @{column_insure_company_values}
            # เอา array บริษัทประกันที่ input เข้ามา มาวนเช็คทีลัตัวว่ามีบริษัทที่ตรงกันไหม
            FOR     ${input_insure_company_list}    IN    @{value_request_premium.insure_company}
                ${Result}=      Run Keyword And Return Status    Should Contain Any    ${insure_company}    ${input_insure_company_list}
                IF  '${Result}' == 'True'
                    Log     ${insure_company} contain: ${input_insure_company_list}
                END
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย (แบบร่าง)   
    END        
