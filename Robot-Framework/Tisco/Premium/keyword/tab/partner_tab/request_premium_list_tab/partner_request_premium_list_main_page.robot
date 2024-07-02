*** Variables ***
# element xpath variable
${partner_request_premium_list_main_page.dataInfoEmpty}                             xpath=//td[@class="dataTables_empty"]
${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}       xpath=//table[@id="partnerListlistTable"]/tbody/tr
${partner_request_premium_list_main_page.choose_month_and_year_button}              xpath=//button[@aria-label="Choose month and year"]
${partner_request_premium_list_main_page.list_search_field}                         xpath=/html/body/app-root/app-template/div[3]/app-pc-list-table/div/div/div[1]/form/div/div/div/div[2]/div/mat-form-field/div[1]/div/div[2]/input
${partner_request_premium_list_main_page.ok_button_in_searchField}                  xpath=//span[contains(text(),'บันทึกข้อมูล')]
${partner_request_premium_list_main_page.search_button}                             xpath=//span[contains(text(),'ค้นหารายการ')]
# input xpath
${partner_request_premium_list_main_page.policy_number_textField}                   xpath=//input[@formcontrolname="policy_no"]
${partner_request_premium_list_main_page.license_no_textField}                      xpath=//input[@formcontrolname="license_no"]
${partner_request_premium_list_main_page.customer_first_name_textField}             xpath=//input[@formcontrolname="first_name"]
${partner_request_premium_list_main_page.customer_last_name_textField}              xpath=//input[@formcontrolname="last_name"]
${partner_request_premium_list_main_page.uw_no_textField}                           xpath=//input[@formcontrolname="uw_no"]
${partner_request_premium_list_main_page.range_date_datepicker}                     xpath=//mat-form-field[@class="mat-mdc-form-field w-100 ng-tns-c15-6 mat-mdc-form-field-type-mat-date-range-input mat-mdc-form-field-has-icon-suffix mat-form-field-appearance-outline mat-primary ng-star-inserted"]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${partner_request_premium_list_main_page.year_range_date_button}                    xpath=//button[@aria-label="${partner_input_list.year_range_date}"]
${partner_request_premium_list_main_page.month_range_date_button}                   xpath=//button[@aria-label="${partner_input_list.month_range_date} ${partner_input_list.year_range_date}"]
${partner_request_premium_list_main_page.end_range_date_button}                     xpath=//button[@aria-label="${partner_input_list.end_day_range_date} ${partner_input_list.month_range_date} ${partner_input_list.year_range_date}"]
${partner_request_premium_list_main_page.day_range_date_button}                     xpath=//button[@aria-label="${partner_input_list.start_day_range_date} ${partner_input_list.month_range_date} ${partner_input_list.year_range_date}"]
# filter xpath
# ${partner_request_premium_list_main_page.renewal_premium_type_filter_button}        xpath=//form[@class="ng-untouched ng-pristine ng-valid ng-submitted"]/div/*[2]/button/..//span[contains(text(),'ประเภทเช็คเบี้ย')]/..
${partner_request_premium_list_main_page.renewal_premium_type_filter_button}        xpath=/html/body/app-root/app-template/div[3]/app-pc-list-table/div/div/div[2]/div/div/div/div[2]/form/div/div[1]/button/span[5]
${partner_request_premium_list_main_page.check_premium_type_filter_button}          xpath=/html/body/app-root/app-template/div[3]/app-pc-list-table/div/div/div[2]/div/div/div/div[2]/form/div/div[2]/button/span[5]
${partner_request_premium_list_main_page.request_premium_status_filter_button}      xpath=/html/body/app-root/app-template/div[3]/app-pc-list-table/div/div/div[2]/div/div/div/div[2]/form/div/div[3]/button/span[5]
${partner_request_premium_list_main_page.ok_button_in_filter_button}                xpath=//div[@class="dropdonw-filter show-list"]/..//button[@class="me-2 mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]/..//span[contains(text(),'บันทึก')]
# action button
${partner_request_premium_list_main_page.action_button}                              xpath=//table[@id="partnerListlistTable"]/tbody/*[1]/td[8]/..//span/img[@class="other-button"]
${partner_request_premium_list_main_page.view_details_button}                        xpath=//table[@id="partnerListlistTable"]/tbody/*[1]/td[8]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ดูรายการ')]
${partner_request_premium_list_main_page.reply_button}                               xpath=//table[@id="partnerListlistTable"]/tbody/*[1]/td[8]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ตอบกลับ')]
${partner_request_premium_list_main_page.cancel_button}                              xpath=//table[@id="partnerListlistTable"]/tbody/*[1]/td[8]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ยกเลิกรายการ')]
<<<<<<< HEAD
${partner_request_premium_list_main_page.view_premium_result_button}                 xpath=//table[@id="partnerListlistTable"]/tbody/*[1]/td[8]/..//div[@class="btn-option-select-table-frame"]/..//span[contains(text(),'ดูค่าเบี้ย')]
${partner_request_premium_list_main_page.cancel_input_textField}                     xpath=//textarea[@id="mat-input-5"]
${partner_request_premium_list_main_page.cancel_confirm_button}                      xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/../span[contains(text(),'ยกเลิกรายการนี้')]
=======
>>>>>>> 25cdc5191d0ab8f9cf8f4838df0ddf432a97e57e
# # text variable
# element description
${text_value.status_pending}    รอดำเนินการ

*** Keywords ***
Click Request premium list search field
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.list_search_field}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.list_search_field}

Fill Policy number
    [Arguments]                 ${partner_input_list.policy_number}   
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.policy_number_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.policy_number_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.policy_number_textField}       ${partner_input_list.policy_number}

Fill License no
    [Arguments]                 ${partner_input_list.license_no}   
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.license_no_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.license_no_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.license_no_textField}       ${partner_input_list.license_no}
    Set Global Variable    ${value_partner_list.license_no}    ${partner_input_list.license_no}

Fill Customer first name
    [Arguments]                 ${partner_input_list.customer_first_name}   
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.customer_first_name_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.customer_first_name_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.customer_first_name_textField}       ${partner_input_list.customer_first_name}
    Set Global Variable    ${value_partner_list.customer_first_name}    ${partner_input_list.customer_first_name}

Fill Customer last name
    [Arguments]                 ${partner_input_list.customer_last_name}   
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.customer_last_name_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.customer_last_name_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.customer_last_name_textField}       ${partner_input_list.customer_last_name}
    Set Global Variable    ${value_partner_list.customer}    ${value_partner_list.customer_first_name} ${partner_input_list.customer_last_name}

Fill UW No.
    [Arguments]                 ${partner_input_list.uw_no}   
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.uw_no_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.uw_no_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.uw_no_textField}       ${partner_input_list.uw_no}
    Set Global Variable    ${value_partner_list.uw_no_&_check_premium_type}    ${partner_input_list.uw_no}

Select Start-End Range date
    [Arguments]                 ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
    # start-end range date
    ${Result_year}=         Run Keyword And Return Status    Should Not Be Empty       ${partner_input_list.year_range_date}
    ${Result_month}=        Run Keyword And Return Status    Should Not Be Empty       ${partner_input_list.month_range_date}
    ${Result_day_end}=      Run Keyword And Return Status    Should Not Be Empty       ${partner_input_list.end_day_range_date}
    ${Result_day_start}=    Run Keyword And Return Status    Should Not Be Empty       ${partner_input_list.start_day_range_date}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day_end}' == 'True' and '${Result_day_start}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.range_date_datepicker} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.range_date_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${partner_input_list.year_range_date}
        common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
        # start date
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.year_range_date_button} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.year_range_date_button}
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.month_range_date_button} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.month_range_date_button}
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.day_range_date_button} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.day_range_date_button}
        SeleniumLibrary.Wait Until Element Is Visible       ${partner_request_premium_list_main_page.end_range_date_button} 
        SeleniumLibrary.Click Button                        ${partner_request_premium_list_main_page.end_range_date_button}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day_end}' == 'False' and '${Result_day_start}' == 'False'
        Log     Go to Next step
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Range date
    END 

Click OK button in Search field
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.ok_button_in_searchField}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.ok_button_in_searchField}

Click Search button
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.search_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.search_button}
    common.Wait for process 3s

Verify "FOUND / NOT FOUND" Partner list Table for License no column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${partner_request_premium_list_main_page.dataInfoEmpty}
    ${column_license_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${license_no_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/tr[${row_index}]/td[5]
            Append To List    ${column_license_no_values}    ${license_no_value}
        END
        Log     all License no values: ${column_license_no_values}
        # check every value in ${column_license_no_values} contains ${value_partner_list.license_no}
        FOR    ${license_no}    IN    @{column_license_no_values}
            ${Result_license_no}=      Run Keyword And Return Status    Should Contain Any    ${license_no}    ${value_partner_list.license_no}
            IF  '${Result_license_no}' == 'True'
                Log     ${license_no} contain: ${value_partner_list.license_no}
            ELSE
                Fail    เลขทะเบียนรถ: ${license_no}, ${value_partner_list.license_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.license_no}
    END        

Verify "FOUND / NOT FOUND" Partner list Table for Customer column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${partner_request_premium_list_main_page.dataInfoEmpty}
    ${column_customer_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${customer_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_customer_values}    ${customer_value}
        END
        Log     all Customer values: ${column_customer_values}
        # check every value in ${column_customer_values} contains ${value_partner_list.customer}
        FOR    ${customer}    IN    @{column_customer_values}
            ${Result_customer}=      Run Keyword And Return Status    Should Contain Any    ${customer}    ${value_partner_list.customer}
            IF  '${Result_customer}' == 'True'
                Log     ${customer} contain: ${value_partner_list.customer}
            ELSE
                Fail    ชื่อลูกค้า: ${customer}, ${value_partner_list.customer} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.customer}
    END        

Verify "FOUND / NOT FOUND" Partner list Table for UW no & Check premium type column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${partner_request_premium_list_main_page.dataInfoEmpty}
    ${column_uw_no_&_check_premium_type_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${uw_no_&_check_premium_type_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/tr[${row_index}]/td[2]
            Append To List    ${column_uw_no_&_check_premium_type_values}    ${uw_no_&_check_premium_type_value}
        END
        Log     all UW No. values: ${column_uw_no_&_check_premium_type_values}
        # check every value in ${column_uw_no_&_check_premium_type_values} contains ${value_partner_list.uw_no_&_check_premium_type}
        FOR    ${uw_no_&_check_premium_type}    IN    @{column_uw_no_&_check_premium_type_values}
            ${Result_uw_no_&_check_premium_type}=      Run Keyword And Return Status    Should Contain Any    ${uw_no_&_check_premium_type}    ${value_partner_list.uw_no_&_check_premium_type}
            IF  '${Result_uw_no_&_check_premium_type}' == 'True'
                Log     ${uw_no_&_check_premium_type} contain: ${value_partner_list.uw_no_&_check_premium_type}
            ELSE
                Fail    uw_no & check_premium_type: ${uw_no_&_check_premium_type}, ${value_partner_list.uw_no_&_check_premium_type} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.uw_no}
    END   

Verify "FOUND / NOT FOUND" Partner list Table for Created date column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${partner_request_premium_list_main_page.dataInfoEmpty}
    ${column_date_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${date_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/tr[${row_index}]/td[1]
            Append To List    ${column_date_values}    ${date_value}
        END
        Log     all Created date values: ${column_date_values}
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.license_no}
    END  

Verify "FOUND / NOT FOUND" Partner list Table for Renewal premium type column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${partner_request_premium_list_main_page.dataInfoEmpty}
    ${column_renewal_premium_type_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${renewal_premium_type_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/tr[${row_index}]/td[3]
            Append To List    ${column_renewal_premium_type_values}    ${renewal_premium_type_value}
        END
        Log     all Renewal premium type values: ${column_renewal_premium_type_values}
        # check every value in ${column_renewal_premium_type_values} contains ${value_partner_list.renewal_premium_type}
        FOR    ${renewal_premium_type}    IN    @{column_renewal_premium_type_values}
            ${Result_renewal_premium_type}=      Run Keyword And Return Status    Should Contain Any    ${renewal_premium_type}    ${value_partner_list.renewal_premium_type}
            IF  '${Result_renewal_premium_type}' == 'True'
                Log     ${renewal_premium_type} contain: ${value_partner_list.renewal_premium_type}
            ELSE
                Fail    ประเภทงาน: ${renewal_premium_type}, ${value_partner_list.renewal_premium_type} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.renewal_premium_type}
    END  

Verify "FOUND / NOT FOUND" Partner list Table for Request premium status column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_premium_list_main_page.dataInfoEmpty}
    ${column_status_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    ${partner_request_premium_list_main_page.row_count_from_partnerListlistTable}
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_status_value}    Get Text    xpath=//table[@id="partnerListlistTable"]/tbody/*[${row_index}]/td[7]
            Append To List    ${column_status_values}    ${column_status_value}
        END
        Log     all status values: ${column_status_values}
        # check every value in ${status} contains บันทึกแบบร่าง
        FOR    ${status}    IN    @{column_status_values}
            # ในกรณี สถานะรายการ = 'เกินกำหนดรอบเช็คเบี้ย' status column ใช้คำสั้น
            IF    '${value_partner_list.request_premium_status}' != 'เกินกำหนดรอบเช็คเบี้ย'
                ${Result_status}=      Run Keyword And Return Status    Should Contain Any    ${status}    ${value_partner_list.request_premium_status}
            ELSE
                ${Result_status}=      Run Keyword And Return Status    Should Contain Any    ${value_partner_list.request_premium_status}      ${status}
            END

            IF  '${Result_status}' == 'True'
                Log     ${status} contain: ${value_partner_list.request_premium_status}
            ELSE
                Fail    สถานะเอกสาร: ${status}, ${value_partner_list.request_premium_status} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ค้นหารายการสอบถามเบี้ย ฝั่ง Partner = ${value_partner_list.request_premium_status}
    END         

Select "Renewal premium type" value    
    [Arguments]                                  ${renewal_premium_type}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.renewal_premium_type_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.renewal_premium_type_filter_button}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-checkbox/..//label[contains(text(),'${renewal_premium_type}')]
    SeleniumLibrary.Click Element                    xpath=//mat-checkbox/..//label[contains(text(),'${renewal_premium_type}')]
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    Set Global Variable    ${value_partner_list.renewal_premium_type}    ${renewal_premium_type}

Click "Renewal premium type" filter button & Verify "Renewal premium type" column
    [Arguments]                                  @{partner_input_list.renewal_premium_type}
    FOR    ${renewal_premium_type}    IN    @{partner_input_list.renewal_premium_type}
        partner_request_premium_list_main_page.Select "Renewal premium type" value  ${renewal_premium_type}
        partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Renewal premium type column
        partner_request_premium_list_main_page.Select "Renewal premium type" value  ${renewal_premium_type}
    END

Select "Check premium type" value    
    [Arguments]                                  ${check_premium_type}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.check_premium_type_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.check_premium_type_filter_button}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-checkbox/..//label[contains(text(),'${check_premium_type}')]
    SeleniumLibrary.Click Element                    xpath=//mat-checkbox/..//label[contains(text(),'${check_premium_type}')]
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    Set Global Variable    ${value_partner_list.uw_no_&_check_premium_type}    ${check_premium_type}

Click "Check premium type" filter button & Verify "Check premium type" column
    [Arguments]                                  @{partner_input_list.check_premium_type}
    FOR    ${check_premium_type}    IN    @{partner_input_list.check_premium_type}
        partner_request_premium_list_main_page.Select "Check premium type" value  ${check_premium_type}
        partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for UW no & Check premium type column
        partner_request_premium_list_main_page.Select "Check premium type" value  ${check_premium_type}
    END

Select "Request premium status" value    
    [Arguments]                                  ${request_premium_status}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.request_premium_status_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.request_premium_status_filter_button}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-checkbox/..//label[contains(text(),'${request_premium_status}')]
    SeleniumLibrary.Click Element                    xpath=//mat-checkbox/..//label[contains(text(),'${request_premium_status}')]
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.ok_button_in_filter_button}
    Set Global Variable    ${value_partner_list.request_premium_status}    ${request_premium_status}

Click "Request premium status" filter button & Verify "Request premium status" column
    [Arguments]                                  @{partner_input_list.request_premium_status}
    FOR    ${request_premium_status}    IN    @{partner_input_list.request_premium_status}
        partner_request_premium_list_main_page.Select "Request premium status" value  ${request_premium_status}
        partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Request premium status column
        partner_request_premium_list_main_page.Select "Request premium status" value  ${request_premium_status}
    END

Click "Action" button in Partner request premium list
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.action_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.action_button}

Click "View details" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.view_details_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.view_details_button}
    common.Wait for process 5s

Click "Reply" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.reply_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.reply_button}
    common.Wait for process 7s

Click "Cancel" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.cancel_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.cancel_button}
    common.Wait for process 5s

Click "View premium result" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.view_premium_result_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.view_premium_result_button}
    common.Wait for process 5s

Fill "Cancel text" in modal
    [Arguments]                 ${partner_input_list.cancel_comment}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.cancel_input_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_main_page.cancel_input_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_main_page.cancel_input_textField}       ${partner_input_list.cancel_comment}

Click Confirm "Cancel" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_main_page.cancel_confirm_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_main_page.cancel_confirm_button}
    Set Global Variable    ${value_partner_list.request_premium_status}    ถูกยกเลิก
    common.Wait for process 5s
