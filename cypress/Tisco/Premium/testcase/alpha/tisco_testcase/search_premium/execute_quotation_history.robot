*** Settings ***
Resource         ../../resource/import.robot
Test Setup       common.Access to Check Premium application (Okta Alpha/Beta)    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.checkPremium}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Alpha" login
${value.okta_url}   https://alpha-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298
# # xpath of "okta Alpha" login
${xpath.email_inputField}      xpath=//input[@name="identifier"]
${xpath.password_inputField}   xpath=//input[@name="credentials.passcode"]
${xpath.signIn_button}         xpath=//input[@value="Sign in"]
${value.checkPremium}          1269-Insurance Sale Support System


# # value input of searching history
${input_quotation.uw_no}                UW-923091500008
${input_quotation.ref_no}               HP-144002
${input_quotation.customer_name}        BOO
${input_quotation.customer_surname}     BII
${input_quotation.year_created_date}    2023
${input_quotation.month_created_date}   September
${input_quotation.day_created_date}     15
${input_quotation.sale_channel}         TISCO Insure

*** Test Cases ***
# # ||----- Searching history flow by Staff and Supervisor role-----||
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย UW No. 
    quotation_history_feature.Search history by only UW No                         ${input_quotation.uw_no}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย Ref No. 
    quotation_history_feature.Search history by only Ref No                        ${input_quotation.ref_no}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย ชื่อลูกค้า
    quotation_history_feature.Search history by only Customer name                 ${input_quotation.customer_name}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย นามสกุลลูกค้า
    quotation_history_feature.Search quotation by only Customer surname            ${input_quotation.customer_surname}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย ชื่อ และ นามสกุลลูกค้า
    quotation_history_feature.Search quotation by Customer name & surname          ${input_quotation.customer_name}    ${input_quotation.customer_surname}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย วันที่สร้าง 
    quotation_history_feature.Search quotation by only Created date                ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย ช่องทางการขาย
    quotation_history_feature.Search quotation by only Sale channel                ${input_quotation.sale_channel}
QuotationHistory_Searchingflow - ค้นหาประวัติการค้นหา โดย Field ทั้งหมด
    quotation_history_feature.Search quotation by All field                        ${input_quotation.uw_no}    ${input_quotation.ref_no}     ${input_quotation.customer_name}    ${input_quotation.customer_surname}     ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}   ${input_quotation.sale_channel}
QuotationHistory_Searchingflow - ล้างค้นหาประวัติการค้นหา ด้วยการกด "ล้างการค้นหา (Button)"
    quotation_history_feature.Clear searching quotation by Clear button
QuotationHistory_Searchingflow - ตรวจสอบการแสดงข้อมูลของตารางประวัติการค้นหา
    quotation_history_feature.Verify quotation table length
