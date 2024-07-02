*** Variables ***
# element xpath variable
${request_premium_list_main_page.search_button}                              xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[text() = 'ค้นหา']/..
${request_premium_list_main_page.dataInfoEmpty}                              xpath=//td[@class="dataTables_empty"]
${request_premium_list_main_page.row_count_from_requestPremiumlistTable}     xpath=//table[@id="requestPremiumlistTable"]/tbody/tr
# # searching flow xpath
# Ref No.
${request_premium_list_main_page.ref_no_text_field}                          xpath=//input[@formcontrolname="ref_no"]
# customer name
${request_premium_list_main_page.customer_first_name_text_field}             xpath=//input[@formcontrolname="first_name"]
# customer surname
${request_premium_list_main_page.customer_last_name_text_field}              xpath=//input[@formcontrolname="last_name"]
# license no
${request_premium_list_main_page.license_no_text_field}                      xpath=//input[@formcontrolname="license_no"]
# UW No.
${request_premium_list_main_page.uw_code_text_field}                         xpath=//input[@formcontrolname="uw_code"]
# insure_company
${request_premium_list_main_page.insure_company_textField}                   xpath=//input[@formcontrolname="insure_company"]

# # result table
${request_premium_list_main_page.urgent_type_filter_button}                  xpath=//div[contains(text(),'เช็คเบี้ยด่วน')]
${request_premium_list_main_page.normal_type_filter_button}                  xpath=//div[contains(text(),'เช็คเบี้ยปกติ')]
${request_premium_list_main_page.count_total_request_premium_list}           xpath=//div[@id="requestPremiumlistTable_info"]/span
${request_premium_list_main_page.status_filter_button}                       xpath=//app-request-premium-list-table/..//button[@class="ms-5 h-100 mdc-button mdc-button--outlined mat-mdc-outlined-button mat-primary mat-mdc-button-base ng-star-inserted"]/..
${request_premium_list_main_page.save_status_filter_button}                  xpath=//div/button/span[contains(text(),'บันทึก')]
${request_premium_list_main_page.action_button}                              xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[10]/..//span/img[@class="other-button"]
${request_premium_list_main_page.view_details_button}                        xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[10]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ดูรายการ')]
${request_premium_list_main_page.reply_button}                               xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[10]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ตอบกลับ')]
${request_premium_list_main_page.cancel_button}                              xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[10]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ยกเลิกรายการ')]
${request_premium_list_main_page.view_premium_result_button}                 xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[10]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ดูค่าเบี้ย')]
${request_premium_list_main_page.cancel_request_premium_modal_textField}     xpath=//app-modal-alert/..//textarea[@formcontrolname="textarea"]
${request_premium_list_main_page.confirm_cancel_request_premium_button}      xpath=//app-modal-alert/..//button/span[contains(text(),'ยกเลิกรายการนี้')]/..

# # store every value in requestPremiumlistTable column
${request_premium_list_main_page.created_date_value}                         xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[1]
${request_premium_list_main_page.ref_no_value}                               xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[2]
${request_premium_list_main_page.uw_no_value}                                xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[3]
${request_premium_list_main_page.insure_company_value}                       xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[4]
${request_premium_list_main_page.customer_value}                             xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[5]
${request_premium_list_main_page.brand_and_model_value}                      xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[6]
${request_premium_list_main_page.license_no_value}                           xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[7]
${request_premium_list_main_page.check_premium_type_value}                   xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[8]
${request_premium_list_main_page.status_value}                               xpath=//table[@id="requestPremiumlistTable"]/tbody/*[1]/td[9]

# # text variable
# element description
${text_value.status_pending}    รอดำเนินการ

*** Keywords ***
Fill Ref No
    [Arguments]                                  ${input_list.ref_no} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.ref_no_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.ref_no_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.ref_no_text_field}       ${input_list.ref_no} 
    Set Global Variable    ${value_request_premium.ref_no}    ${input_list.ref_no} 

Fill Customer first name
    [Arguments]                                  ${input_list.customer_first_name} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.customer_first_name_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.customer_first_name_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.customer_first_name_text_field}       ${input_list.customer_first_name} 
    Set Global Variable    ${value_request_premium.customer}    ${input_list.customer_first_name}

Fill Customer last name
    [Arguments]                                  ${input_list.customer_last_name} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.customer_last_name_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.customer_last_name_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.customer_last_name_text_field}       ${input_list.customer_last_name}
    Set Global Variable    ${value_request_premium.customer}    ${input_list.customer_last_name}

Fill License no
    [Arguments]                                  ${input_list.license_no} 
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.license_no_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.license_no_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.license_no_text_field}       ${input_list.license_no}
    Set Global Variable    ${value_request_premium.license_no}    ${input_list.license_no}

Fill UW No
    [Arguments]                                  ${input_list.uw_no}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.uw_code_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.uw_code_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.uw_code_text_field}       ${input_list.uw_no}
    Set Global Variable    ${value_request_premium.UW_no}    ${input_list.uw_no}

Fill & Select Insure company
    [Arguments]                                  @{input_list.insure_company}
    FOR    ${insure_company_list}    IN    @{input_list.insure_company}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.insure_company_textField}
        SeleniumLibrary.Input Text                       ${request_premium_list_main_page.insure_company_textField}       ${insure_company_list}
        SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[contains(text(),' ${insure_company_list} ')]
        SeleniumLibrary.Click Element                    xpath=//span[contains(text(),' ${insure_company_list} ')]
    END
    Set Global Variable    @{value_request_premium.insure_company}    @{input_list.insure_company}

Fill UW code in Request Premium list
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.uw_code_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.uw_code_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.uw_code_text_field}       ${value_request_premium.UW_no}

Click Search button
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.search_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.search_button}
    common.Wait for process 3s

Verify matching UW No from in Request Premium list
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Page Contains    ค้นหารายการสอบถามเบี้ย
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_uw_code_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_uw_code_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/*[${row_index}]/td[3]
            Append To List    ${column_uw_code_values}    ${column_uw_code_value}
        END
        Log     all UW No values: ${column_uw_code_values}
        # check every value in ${uw_code} contains ${value_request_premium.UW_no}
        FOR    ${uw_code}    IN    @{column_uw_code_values}
            ${Result_uw_code}=      Run Keyword And Return Status    Should Contain Any    ${uw_code}    ${value_request_premium.UW_no}
            IF  '${Result_uw_code}' == 'True'
                Log     ${uw_code} contain: ${value_request_premium.UW_no}
            ELSE
                Fail    uw_no: ${uw_code}, ${value_request_premium.UW_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.UW_no}
    END        

Verify "FOUND / NOT FOUND" Request Premium list result for Customer column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_customer_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${customer_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[5]
            Append To List    ${column_customer_values}    ${customer_value}
        END
        Log     all Customer values: ${column_customer_values}
        # check every value in ${column_customer_values} contains ${value_request_premium.customer}
        FOR    ${customer}    IN    @{column_customer_values}
            ${Result_customer}=      Run Keyword And Return Status    Should Contain Any    ${customer}    ${value_request_premium.customer}
            IF  '${Result_customer}' == 'True'
                Log     ${customer} contain: ${value_request_premium.customer}
            ELSE
                Fail    ชื่อลูกค้า: ${customer}, ${value_request_premium.customer} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.customer}
    END        

Verify "FOUND / NOT FOUND" Request Premium list result for Brand / Model column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_brand_and_model_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Brand / Model value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${brand_and_model_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[6]
            Append To List    ${column_brand_and_model_values}    ${brand_and_model_value}
        END
        Log     all Brand / Model values: ${column_brand_and_model_values}
        # check every value in ${column_brand_and_model_values} contains ${value_request_premium.brand_and_model}
        FOR    ${brand_and_model}    IN    @{column_brand_and_model_values}
            ${Result_brand_and_model}=      Run Keyword And Return Status    Should Contain Any    ${brand_and_model}    ${value_request_premium.brand_and_model}
            IF  '${Result_brand_and_model}' == 'True'
                Log     ${brand_and_model} contain: ${value_request_premium.brand_and_model}
            ELSE
                Fail    ยี่ห้อรถ: ${brand_and_model}, ${value_request_premium.brand_and_model} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.brand_and_model}
    END        

Verify "FOUND / NOT FOUND" Request Premium list result for License No column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_license_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${license_no_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[7]
            Append To List    ${column_license_no_values}    ${license_no_value}
        END
        Log     all Customer values: ${column_license_no_values}
        # check every value in ${column_license_no_values} contains ${value_request_premium.license_no}
        FOR    ${license_no}    IN    @{column_license_no_values}
            ${Result_license_no}=      Run Keyword And Return Status    Should Contain Any    ${license_no}    ${value_request_premium.license_no}
            IF  '${Result_license_no}' == 'True'
                Log     ${license_no} contain: ${value_request_premium.license_no}
            ELSE
                Fail    เลขทะเบียนรถ: ${license_no}, ${value_request_premium.license_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.license_no}
    END  

Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_check_premium_type_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${check_premium_type_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[8]
            Append To List    ${column_check_premium_type_values}    ${check_premium_type_value}
        END
        Log     all Customer values: ${column_check_premium_type_values}
        # check every value in ${column_check_premium_type_values} contains ${value_request_premium.check_premium_type}
        FOR    ${check_premium_type}    IN    @{column_check_premium_type_values}
            ${Result_check_premium_type}=      Run Keyword And Return Status    Should Contain Any    ${check_premium_type}    ${value_request_premium.check_premium_type}
            IF  '${Result_check_premium_type}' == 'True'
                Log     ${check_premium_type} contain: ${value_request_premium.check_premium_type}
            ELSE
                Fail    ประเภทเช็คเบี้ย: ${check_premium_type}, ${value_request_premium.check_premium_type} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.check_premium_type}
    END              

Verify Request Premium status column is "Pending" 
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_status_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_status_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/*[${row_index}]/td[9]
            Append To List    ${column_status_values}    ${column_status_value}
        END
        Log     all UW No values: ${column_status_values}
        # check every value in ${status} contains บันทึกแบบร่าง
        FOR    ${status}    IN    @{column_status_values}
            ${Result_status}=      Run Keyword And Return Status    Should Contain Any    ${status}    ${text_value.status_pending}
            IF  '${Result_status}' == 'True'
                Log     ${status} contain: ${text_value.status_pending}
            ELSE
                Fail    สถานะรายการ: ${status}, ${text_value.status_pending} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${text_value.status_pending}
    END        

Verify "FOUND / NOT FOUND" Request Premium list result for Ref No column 
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_ref_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Contract number value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${ref_no_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[2]
            Append To List    ${column_ref_no_values}    ${ref_no_value}
        END
        Log     all Contract number values: ${column_ref_no_values}
        # check every value in ${column_ref_no_values} contains ${value_request_premium.ref_no}
        FOR    ${ref_no}    IN    @{column_ref_no_values}
            ${Result_ref_no}=      Run Keyword And Return Status    Should Contain Any    ${ref_no}    ${value_request_premium.ref_no}
            IF  '${Result_ref_no}' == 'True'
                Log     ${ref_no} contain: ${value_request_premium.ref_no}
            ELSE
                Fail    ref_no: ${ref_no}, ${value_request_premium.ref_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.ref_no}
    END        

Verify "FOUND / NOT FOUND" Request Premium list result for Insure company column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_insure_company_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Contract number value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${insure_company_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_insure_company_values}    ${insure_company_value}
        END
        Log     all Contract number values: ${column_insure_company_values}
        # check every value in ${column_insure_company_values} contains ${input_insure_company_list}
        FOR    ${insure_company}    IN    @{column_insure_company_values}
            # เอา array บริษัทประกันที่ input เข้ามา มาวนเช็คทีลัตัวว่ามีบริษัทที่ตรงกันไหม
            FOR     ${input_insure_company_list}    IN    @{value_request_premium.insure_company}
                ${Result_insure_company}=      Run Keyword And Return Status    Should Contain Any    ${insure_company}    ${input_insure_company_list}
                IF  '${Result_insure_company}' == 'True'
                    Log     ${insure_company} contain: ${input_insure_company_list}
                END
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = @{value_request_premium.insure_company}
    END        

Click "Urgent" filter button
    [Arguments]                                  ${input_list.urgent_type_filter_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.urgent_type_filter_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.urgent_type_filter_button}
    Set Global Variable    ${value_request_premium.check_premium_type}    ${input_list.urgent_type_filter_button}

Click "Normal" filter button
    [Arguments]                                  ${input_list.normal_type_filter_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.normal_type_filter_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.normal_type_filter_button}
    Set Global Variable    ${value_request_premium.check_premium_type}    ${input_list.normal_type_filter_button}

Verify total request premium list result by "Urgent" filter button
    request_premium_list_main_page.Get "Urgent" total result from filter button
    request_premium_list_main_page.Get total result from Request premium table
    request_premium_list_main_page.Compare total request premium list from "filter" and "table"

Verify total request premium list result by "Normal" filter button
    request_premium_list_main_page.Get "Normal" total result from filter button
    request_premium_list_main_page.Get total result from Request premium table
    request_premium_list_main_page.Compare total request premium list from "filter" and "table"

Get "Normal" total result from filter button
    ${value.count1}=    Set Variable    0 
    ${get_total_normal_request_premium_value}=   Get Text  ${request_premium_list_main_page.normal_type_filter_button}
    ${get_total_normal_request_premium_value} =     Split String    ${get_total_normal_request_premium_value}    ${SPACE} 
    FOR    ${item}    IN    @{get_total_normal_request_premium_value}
        Log     ${value.count1} = ${item}
        ${value.count1} =    Evaluate    ${value.count1} + 1
    END
    ${get_total_normal_request_premium_value} =         evaluate       '${get_total_normal_request_premium_value}[1]'.replace('(','').replace(')','')
    ${total_normal_request_premium_from_filter_button}=    evaluate       '${get_total_normal_request_premium_value}'.replace(',','') if ',' in '${get_total_normal_request_premium_value}' else '${get_total_normal_request_premium_value}'
    Set Global Variable    ${value_request_premium.total_request_premium_from_filter_button}    ${total_normal_request_premium_from_filter_button}

Get "Urgent" total result from filter button
    ${value.count1}=    Set Variable    0 
    ${get_total_urgent_request_premium_value}=   Get Text  ${request_premium_list_main_page.urgent_type_filter_button}
    ${get_total_urgent_request_premium_value} =     Split String    ${get_total_urgent_request_premium_value}    ${SPACE} 
    FOR    ${item}    IN    @{get_total_urgent_request_premium_value}
        Log     ${value.count1} = ${item}
        ${value.count1} =    Evaluate    ${value.count1} + 1
    END
    ${get_total_urgent_request_premium_value} =         evaluate       '${get_total_urgent_request_premium_value}[1]'.replace('(','').replace(')','')
    ${total_urgent_request_premium_from_filter_button}=    evaluate       '${get_total_urgent_request_premium_value}'.replace(',','') if ',' in '${get_total_urgent_request_premium_value}' else '${get_total_urgent_request_premium_value}'
    Set Global Variable    ${value_request_premium.total_request_premium_from_filter_button}    ${total_urgent_request_premium_from_filter_button}

Get total result from Request premium table
    ${get_total_request_premium_from_table}=   Get Text  ${request_premium_list_main_page.count_total_request_premium_list} 
    ${total_request_premium_from_table}=    evaluate       '${get_total_request_premium_from_table}'.replace(',','') if ',' in '${get_total_request_premium_from_table}' else '${get_total_request_premium_from_table}'
    Set Global Variable    ${value_request_premium.total_request_premium_from_table}    ${total_request_premium_from_table}

Compare total request premium list from "filter" and "table"
    IF  '${value_request_premium.total_request_premium_from_filter_button}' != '${value_request_premium.total_request_premium_from_table}'
        Fail    จำนวนข้อมูลไม่ตรงกัน
    END

Select "Status" by status filter button
    [Arguments]                                  ${input_list.status}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.status_filter_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.status_filter_button}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-checkbox/..//label[contains(text(),' ${input_list.status} ')]
    SeleniumLibrary.Click Element                    xpath=//mat-checkbox/..//label[contains(text(),' ${input_list.status} ')]
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.save_status_filter_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.save_status_filter_button}
    common.Wait for process 1s
    Set Global Variable    ${value_request_premium.request_premium_status}    ${input_list.status}

Click "Status" filter button & Verify "Status" column
    [Arguments]                                  @{input_list.request_premium_status}
    FOR    ${request_premium_status}    IN    @{input_list.request_premium_status}
        request_premium_list_main_page.Select "Status" by status filter button      ${request_premium_status}
        request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
        request_premium_list_main_page.Select "Status" by status filter button      ${request_premium_status}
    END

Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_status_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${request_premium_list_main_page.row_count_from_requestPremiumlistTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_status_value}    Get Text    xpath=//table[@id="requestPremiumlistTable"]/tbody/*[${row_index}]/td[9]
            Append To List    ${column_status_values}    ${column_status_value}
        END
        Log     all status values: ${column_status_values}
        # check every value in ${status} contains บันทึกแบบร่าง
        FOR    ${status}    IN    @{column_status_values}
            # ในกรณี สถานะรายการ = 'เกินกำหนดรอบเช็คเบี้ย' status column ใช้คำสั้น
            IF    '${value_request_premium.request_premium_status}' != 'เกินกำหนดรอบเช็คเบี้ย'
                ${Result_status}=      Run Keyword And Return Status    Should Contain Any    ${status}    ${value_request_premium.request_premium_status}
            ELSE
                ${Result_status}=      Run Keyword And Return Status    Should Contain Any    ${value_request_premium.request_premium_status}      ${status}
            END

            IF  '${Result_status}' == 'True'
                Log     ${status} contain: ${value_request_premium.request_premium_status}
            ELSE
                Fail    สถานะรายการ: ${status}, ${value_request_premium.request_premium_status} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย = ${value_request_premium.request_premium_status}
    END        

Click "Action" button in request premium list
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.action_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.action_button}

Click "View details" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.view_details_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.view_details_button}
    common.Wait for process 5s

Click "Reply" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.reply_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.reply_button}
    common.Wait for process 5s

Click "Cancel" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.cancel_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.cancel_button}
    common.Wait for process 5s

Click "View premium result" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.view_premium_result_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.view_premium_result_button}
    common.Wait for process 5s

Fill "Cancel message" in Canceled Modal
    [Arguments]                                  ${input_list.cancel_message}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.cancel_request_premium_modal_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_main_page.cancel_request_premium_modal_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_list_main_page.cancel_request_premium_modal_textField}       ${input_list.cancel_message}

Click "Confirm cancel" button
    [Arguments]                                  ${input_list.canceled_status}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_main_page.confirm_cancel_request_premium_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_main_page.confirm_cancel_request_premium_button}
    Set Global Variable    ${value_request_premium.request_premium_status}    ${input_list.canceled_status}
    common.Wait for process 5s

Get "All column values" in Request premium table
    ${column_created_date_value}            Get Text    ${request_premium_list_main_page.created_date_value}
    ${column_ref_no_value}                  Get Text    ${request_premium_list_main_page.ref_no_value}
    ${column_uw_no_value}                   Get Text    ${request_premium_list_main_page.uw_no_value}
    ${column_insure_company_value}          Get Text    ${request_premium_list_main_page.insure_company_value}
    ${column_customer_value}                Get Text    ${request_premium_list_main_page.customer_value}
    ${column_brand_and_model_value}         Get Text    ${request_premium_list_main_page.brand_and_model_value}
    ${column_license_no_value}              Get Text    ${request_premium_list_main_page.license_no_value}
    ${column_check_premium_type_value}      Get Text    ${request_premium_list_main_page.check_premium_type_value}
    ${column_status_value}                  Get Text    ${request_premium_list_main_page.status_value}

    Set Global Variable    ${value_request_premium.created_date}                    ${column_created_date_value}
    Set Global Variable    ${value_request_premium_list.ref_no_value}               ${column_ref_no_value} 
    Set Global Variable    ${value_request_premium_list.uw_no_value}                ${column_uw_no_value}
    Set Global Variable    ${value_request_premium_list.insure_company_value}       ${column_insure_company_value}
    Set Global Variable    ${value_request_premium_list.customer_value}             ${column_customer_value}
    Set Global Variable    ${value_request_premium_list.brand_and_model_value}      ${column_brand_and_model_value}
    # Set Global Variable    ${value_request_premium_list.license_no_value}           ${column_license_no_value}    
    Set Global Variable    ${value_request_premium_list.check_premium_type_value}   ${column_check_premium_type_value}
    Set Global Variable    ${value_request_premium_list.status_value}               ${column_status_value}
