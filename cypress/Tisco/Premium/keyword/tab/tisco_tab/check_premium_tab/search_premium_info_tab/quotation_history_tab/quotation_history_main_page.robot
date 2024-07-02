*** Variables ***
# # xpath variable
${quotation_history_main_page.quotation_history_tab}                            xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[1]/div/div/*//span[text()='ประวัติการค้นหา']
${quotation_history_main_page.view_more_campaign_quotation_history_labelLink}   xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[7]/a[@href="javascript:void(0);"]
${quotation_history_main_page.quotation_history_table_created_by}               xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[6]
${quotation_history_main_page.quotation_history_table_insure_company}           xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[5]
${quotation_history_main_page.quotation_history_table_tisco_customer}           xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[4]
${quotation_history_main_page.quotation_history_table_ref_no}                   xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[3]
${quotation_history_main_page.get_uw_code_quotation}                            xpath=//table[@id="quotationTableId"]/..//tbody/*[1]/td[2]
${quotation_history_main_page.dataInfoEmpty}                                    xpath=//td[@class="dataTables_empty"]
${quotation_history_main_page.quotationTable_length}                            xpath=//select[@name="quotationTableId_length"]
# # searching flow xpath
# UW No.
${quotation_history_main_page.uw_no_text_field}                   xpath=//input[@formcontrolname="uw_no"]
# Quotation No
${quotation_history_main_page.ref_no_text_field}                  xpath=//input[@formcontrolname="ref_no"]
# customer name
${quotation_history_main_page.customer_name_text_field}           xpath=//input[@formcontrolname="customer_name"]
# customer surname
${quotation_history_main_page.customer_surname_text_field}        xpath=//input[@formcontrolname="customer_surname"]
# created date
${quotation_history_main_page.created_date_datepicker}            xpath=//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${quotation_history_main_page.choose_month_and_year_button}       xpath=//button[@aria-label="Choose month and year"]
${quotation_history_main_page.year_created_date_button}=          xpath=//button[@aria-label="${input_quotation.year_created_date}"]
${quotation_history_main_page.month_created_date_button}=         xpath=//button[@aria-label="${input_quotation.month_created_date} ${input_quotation.year_created_date}"]
${quotation_history_main_page.day_created_date_button}=           xpath=//button[@aria-label="${input_quotation.day_created_date} ${input_quotation.month_created_date} ${input_quotation.year_created_date}"]
# sale channel
${quotation_history_main_page.sale_channel_listbox}               xpath=//input[@formcontrolname="sale_channel_mask"]
${quotation_history_main_page.sale_channel_dropdown}              xpath=//span[contains(text(),' ${input_quotation.sale_channel} ')]

# # normal variable
@{months}                     January  February  March  April  May  June  July  August  September  October  November  December
# element description
${value.ref_no_description}   ระบุ AppCode-เลขสัญญา หรือ Hiree No.

*** Keywords ***

Fill UW No
    [Arguments]                                  ${input_quotation.uw_no}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.uw_no_text_field}
    SeleniumLibrary.Clear Element Text      ${quotation_history_main_page.uw_no_text_field} 
    SeleniumLibrary.Input Text  ${quotation_history_main_page.uw_no_text_field}       ${input_quotation.uw_no}

Fill Ref No
    [Arguments]                                  ${input_quotation.ref_no}
    SeleniumLibrary.Wait Until Page Contains         ${value.ref_no_description}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.ref_no_text_field}
    SeleniumLibrary.Clear Element Text      ${quotation_history_main_page.ref_no_text_field} 
    SeleniumLibrary.Input Text  ${quotation_history_main_page.ref_no_text_field}       ${input_quotation.ref_no}

Fill Customer name
    [Arguments]                                  ${input_quotation.customer_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.customer_name_text_field}
    SeleniumLibrary.Clear Element Text      ${quotation_history_main_page.customer_name_text_field} 
    SeleniumLibrary.Input Text  ${quotation_history_main_page.customer_name_text_field}       ${input_quotation.customer_name}

Fill Customer surname
    [Arguments]                                  ${input_quotation.customer_surname}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.customer_surname_text_field}
    SeleniumLibrary.Clear Element Text      ${quotation_history_main_page.customer_surname_text_field} 
    SeleniumLibrary.Input Text  ${quotation_history_main_page.customer_surname_text_field}       ${input_quotation.customer_surname}

Select Created date
    [Arguments]                                  ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date} 
    # start campaign effective date
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${input_quotation.year_created_date}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${input_quotation.month_created_date}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${input_quotation.day_created_date}   
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.created_date_datepicker} 
        SeleniumLibrary.Click Button   ${quotation_history_main_page.created_date_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${input_quotation.year_created_date}
        common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
        # Date (DD/MM/YYYY)
        SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.year_created_date_button} 
        SeleniumLibrary.Click Button   ${quotation_history_main_page.year_created_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.month_created_date_button} 
        SeleniumLibrary.Click Button   ${quotation_history_main_page.month_created_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.day_created_date_button} 
        SeleniumLibrary.Click Button   ${quotation_history_main_page.day_created_date_button}
    # # all year month day values are not found in input variable
    # ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
    #     Log     Go to Next step
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Created date
    END 

Select Sale Channel
    [Arguments]                                  ${input_quotation.sale_channel}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.sale_channel_listbox}
    SeleniumLibrary.Click Element   ${quotation_history_main_page.sale_channel_listbox}
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.sale_channel_dropdown}
    SeleniumLibrary.Click Element   ${quotation_history_main_page.sale_channel_dropdown}

Verify "FOUND / NOT FOUND" searching result
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    IF  '${Result}' == 'True'
        Log     พบข้อมูล
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END      

Verify "FOUND / NOT FOUND" searching result for UW No column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    ${column_uw_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
        # store all UW No. value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_uw_no_value}    Get Text    xpath=//table[@id="quotationTableId"]/tbody/tr[${row_index}]/td[2]
            Append To List    ${column_uw_no_values}    ${column_uw_no_value}
        END
        Log     all UW No. values: ${column_uw_no_values}
        # check every value in ${column_uw_no_values} contains ${input_quotation.uw_no}
        FOR    ${uw_no}    IN    @{column_uw_no_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${uw_no}    ${input_quotation.uw_no}
            IF  '${Result}' == 'True'
                Log     ${uw_no} contain: ${input_quotation.uw_no}
            ELSE
                Fail    ${uw_no}, ${input_quotation.uw_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END      

Verify "FOUND / NOT FOUND" searching result for Ref No column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    ${column_ref_no_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
        # store all Ref No. value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_ref_no_value}    Get Text    xpath=//table[@id="quotationTableId"]/tbody/tr[${row_index}]/td[3]
            Append To List    ${column_ref_no_values}    ${column_ref_no_value}
        END
        Log     all Ref No values: ${column_ref_no_values}
        # check every value in ${column_ref_no_values} contains ${input_quotation.ref_no}
        FOR    ${ref_no}    IN    @{column_ref_no_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${ref_no}    ${input_quotation.ref_no}
            IF  '${Result}' == 'True'
                Log     ${ref_no} contain: ${input_quotation.ref_no}
            ELSE
                Fail    ${ref_no}, ${input_quotation.ref_no} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END      

Verify "FOUND / NOT FOUND" searching result for Customer column by name
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    ${column_customer_name_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_customer_name_value}    Get Text    xpath=//table[@id="quotationTableId"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_customer_name_values}    ${column_customer_name_value}
        END
        Log     All customer values: ${column_customer_name_values}
        # check every value in ${column_customer_name_values} contains ${input_quotation.customer_name}
        FOR    ${customer_name}    IN    @{column_customer_name_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${customer_name}    ${input_quotation.customer_name}
            IF  '${Result}' == 'True'
                Log     ${customer_name} contain: ${input_quotation.customer_name}
            ELSE
                Fail    ${customer_name}, ${input_quotation.customer_name} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END        

Verify "FOUND / NOT FOUND" searching result for Customer column by surname
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    ${column_customer_surname_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
        # store all Customer value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_customer_surname_value}    Get Text    xpath=//table[@id="quotationTableId"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_customer_surname_values}    ${column_customer_surname_value}
        END
        Log     all Customer values: ${column_customer_surname_values}
        # check every value in ${column_customer_surname_values} contains ${input_quotation.customer_surname}
        FOR    ${customer_surname}    IN    @{column_customer_surname_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${customer_surname}    ${input_quotation.customer_surname}
            IF  '${Result}' == 'True'
                Log     ${customer_surname} contain: ${input_quotation.customer_surname}
            ELSE
                Fail    ${customer_surname}, ${input_quotation.customer_surname} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END        

Verify "FOUND / NOT FOUND" searching result for Created date column
    quotation_history_main_page.Convert Month Name to Number
    ${get_created_date_format}      Set Variable        ${input_quotation.day_created_date}/${value.get_integer_month_number}/${input_quotation.year_created_date}
    Log     Created date: ${get_created_date_format}
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    ${column_created_date_values}    Create List
    IF  '${Result}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
        # store all Created date value every row from quotation table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_created_date_value}    Get Text    xpath=//table[@id="quotationTableId"]/tbody/tr[${row_index}]/td[1]
            Append To List    ${column_created_date_values}    ${column_created_date_value}
        END
        Log     all Created date values: ${column_created_date_values}
        # check every value in ${column_created_date_values} contains ${get_created_date_format}
        FOR    ${created_date}    IN    @{column_created_date_values}
            ${Result}=      Run Keyword And Return Status    Should Contain Any    ${created_date}    ${get_created_date_format}
            IF  '${Result}' == 'True'
                Log     ${created_date} contain: ${get_created_date_format}
            ELSE
                Fail    ${created_date}, ${get_created_date_format} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Fail    ไม่พบข้อมูล ประวัติการค้นหา
    END        

Convert Month Name to Number
    ${month_name}    Set Variable    ${input_quotation.month_created_date}
    ${month_index}    Evaluate    "${months.index('${month_name}')}"    # Get the index as a string
    ${get_month_index}=    convert to number   ${month_index}     
    ${month_number}    Evaluate    ${get_month_index} + 1  
    ${integer_month_number}    Evaluate    int(${month_number})
    Log    ${month_name} is month position number : ${integer_month_number}
    Set Global Variable    ${value.get_integer_month_number}    ${integer_month_number}

Verify clear quotation table
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Be Visible    ${quotation_history_main_page.dataInfoEmpty}
    IF  '${Result}' == 'True'
        Log  ล้างการค้นหาถูกต้อง
    ELSE
        Fail  ล้างการค้นหาไม่ถูกต้อง
    END        

Select quotation table length
    @{quotationTable_length}    Create List    5    10    25
    FOR    ${length}    IN    @{quotationTable_length}
        SeleniumLibrary.Wait Until Element Is Visible       ${quotation_history_main_page.quotationTable_length} 
        SeleniumLibrary.Click Element       ${quotation_history_main_page.quotationTable_length}
        common.Wait for process 5s
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//select[@name="quotationTableId_length"]/..//option[@value="${length}"] 
        SeleniumLibrary.Click Element       xpath=//select[@name="quotationTableId_length"]/..//option[@value="${length}"]
        common.Wait for process 10s
        Set Global Variable    ${value_quotation.length}    ${length}
        quotation_history_main_page.Verify displaying length correctly
    END

Verify displaying length correctly
    ${row_count}    Get Element Count    xpath=//table[@id="quotationTableId"]/tbody/tr
    ${get_row_count}=    convert to number   ${row_count}     
    ${get_length}=    convert to number   ${value_quotation.length}     
    IF  ${get_row_count} >= 0 and ${get_row_count} <= ${get_length}
        Log  แสดงจำนวน row ข้อมูล = ${row_count} ถูกต้อง จากการเลือกแสดงข้อมูล ${value_quotation.length}
    ELSE
        Fail  แสดงจำนวนข้อมูลไม่ถูกต้อง
    END        

Click "View" button to verify quotation history details
    SeleniumLibrary.Wait Until Element Is Visible       ${quotation_history_main_page.view_more_campaign_quotation_history_labelLink} 
    SeleniumLibrary.Click Element       ${quotation_history_main_page.view_more_campaign_quotation_history_labelLink}


# # keywords section for using in search premium flow

Click Quotation history tab
    common.Wait for process 2s 
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_tab}
    SeleniumLibrary.Click Element                    ${quotation_history_main_page.quotation_history_tab}
    common.Wait for process 5s

Verify "Quotation History details" in Premium history 
    quotation_history_main_page.Click "View" button to verify quotation history details
    # ข้อมูลรายละเอียดความคุ้มครอง ของ หน้าคำนวณค่าเบี้ย เหมือนกับ ประวัติการค้นหา สามารถใช้ logic ด้วยกันได้
    search_premium_feature.Verify "Coverage details" of Premium calculation page

Verify "Customer" in Quotation history table
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_table_tisco_customer}
    ${getTiscoCustomer}=    Get Text    ${quotation_history_main_page.quotation_history_table_tisco_customer}
    # compare customer name between searchCustomerTable and quotationTable
    Log     customer name from quotationTable: ${getTiscoCustomer}
    Log     customer name from searchCustomerTable: ${value_premium_main.customer_name_value_from_searchCustomerTable}
    Should Contain Any    ${value_premium_main.customer_name_value_from_searchCustomerTable}    ${getTiscoCustomer}

Verify "Ref No" in Quotation history table
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_table_ref_no}
    ${getRefNo}=    Get Text    ${quotation_history_main_page.quotation_history_table_ref_no}
    # compare app code/account between searchCustomerTable and ref no from quotationTable
    Log     Ref No from quotationTable: ${getRefNo}
    Log     App code/ Account from searchCustomerTable: ${value_premium_main.appCode_account_value_from_searchCustomerTable}
    Should Contain Any    ${value_premium_main.appCode_account_value_from_searchCustomerTable}    ${getRefNo}

Verify hiree no in "Ref No" in Quotation history table
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_table_ref_no}
    ${getRefNo}=    Get Text    ${quotation_history_main_page.quotation_history_table_ref_no}
    # compare hiree no between searchCustomerTable and ref no from quotationTable
    Log     Ref No from quotationTable: ${getRefNo}
    Log     Hiree No: ${value.get_hiree_no_value}
    Should Contain Any    ${value.get_hiree_no_value}    ${getRefNo}

Verify matching "UW code & All values" and "Quotation History details" in Premium history 
    common.Wait for process 5s
    ${getUWcode}=    Get Text    ${quotation_history_main_page.get_uw_code_quotation}
    Set Global Variable    ${input_quotation.getUWcode}    ${getUWcode}
    Log    UW code = ${getUWcode}
    Log    UW code from modal = ${value.getUWcodeFromModal}
    # if matching UW code, click view more and verify detail
    IF  '${getUWcode}' == '${value.getUWcodeFromModal}'
        quotation_history_main_page.Verify "Insure company" in Quotation history table
        quotation_history_main_page.Verify "Created by" in Quotation history table
        quotation_history_main_page.Verify "Quotation History details" in Premium history 
    ELSE
        Fail  Cannot verify UW code or incorrectly
    END        

Verify "Insure company" in Quotation history table
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_table_insure_company}
    ${getInsureCompany}=    Get Text    ${quotation_history_main_page.quotation_history_table_insure_company}
    Should Contain Any    ${value_grobal.campaign_card_detail_insurer}    ${getInsureCompany}

Verify "Created by" in Quotation history table
    SeleniumLibrary.Wait Until Element Is Visible    ${quotation_history_main_page.quotation_history_table_created_by}
    ${getCreatedBy}=    Get Text    ${quotation_history_main_page.quotation_history_table_created_by}
    Should Contain Any    ${value_common.email}    ${getCreatedBy}

