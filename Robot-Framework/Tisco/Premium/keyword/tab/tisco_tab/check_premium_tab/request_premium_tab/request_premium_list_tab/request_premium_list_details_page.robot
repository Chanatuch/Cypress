*** Variables ***
# # element xpath variable
# Request premium header
${request_premium_list_details_page.request_premium_header_value}    xpath=//div[@class="header-explane w-100 d-flex justify-content-between"]/..//p[@class="me-2 title-color"]
${request_premium_list_details_page.header_status_value}             xpath=//div[@class="header-explane w-100 d-flex justify-content-between"]/..//p[@class="me-2 title-color"]/span
# Request premium content
${request_premium_list_details_page.content_value}                   xpath=//div[@class="container-fluid"]/..//div[@class="col-12 d-flex align-items-center header-extra"]
# Question detail
${request_premium_list_details_page.question_detail_value}           xpath=//div[@class="container-fluid"]/..//div[@class="col-12"]/p
# Car Information component
${request_premium_list_details_page.brand_and_model_value}           xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[3]/p[2]
${request_premium_list_details_page.car_power_value}                 xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[4]/p[2]
${request_premium_list_details_page.license_no_value}                xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[5]/p[2]
${request_premium_list_details_page.car_year_value}                  xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[6]/p[2]
${request_premium_list_details_page.engine_number_value}             xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[7]/p[2]
${request_premium_list_details_page.chassis_number_value}            xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[8]/p[2]
${request_premium_list_details_page.car_color_value}                 xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[10]/p[2]
${request_premium_list_details_page.car_type_value}                  xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[11]/p[2]
${request_premium_list_details_page.car_type_detail_value}           xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[12]/p[2]
${request_premium_list_details_page.special_equipment_value}         xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[13]/p[2]
# Insurance Information component
${request_premium_list_details_page.renewal_premium_type_value}                 xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[3]/p[2]
${request_premium_list_details_page.customer_value}                             xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[4]/p[2]
${request_premium_list_details_page.old_policy_number_value}                    xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[5]/p[2]
${request_premium_list_details_page.old_insure_company_value}                   xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[6]/p[2]
${request_premium_list_details_page.old_campaign_expire_date_value}             xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[7]/p[2]
${request_premium_list_details_page.campaign_effective_and_expire_date_value}   xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[8]/p[2]
${request_premium_list_details_page.coverage_amount_od_value}                   xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[9]/p[2]
${request_premium_list_details_page.premium_type_value}                         xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[10]/p[2]
${request_premium_list_details_page.repair_type_value}                          xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[11]/p[2]
${request_premium_list_details_page.check_premium_type_value}                   xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[12]/p[2]
${request_premium_list_details_page.discount_percent_value}                     xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[13]/p[2]
${request_premium_list_details_page.driver1_birthdate_value}                    xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[14]/p[2]
${request_premium_list_details_page.driver2_birthdate_value}                    xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[15]/p[2]
# Created by & Created date component
${request_premium_list_details_page.footer_value}                               xpath=/html/body/app-root/app-template/div[3]/app-request-premium-view-info/div/div/app-car-info-card/div/div/div/div[3]/p
# Comment section
${request_premium_list_details_page.tisco_comment_text_field}                   xpath=//textarea[@formcontrolname="comment_input"]
${request_premium_list_details_page.send_comment_button}                        xpath=//div/button/span[contains(text(),'ส่งข้อความ')]/..
${request_premium_list_details_page.detail_section_comment_modal}               xpath=//app-modal-alert/..//div[@class="col-12 modal-detail pt-2 ps-4 pe-4 ng-star-inserted"]/p
${request_premium_list_details_page.close_comment_modal_button}                 xpath=//div/button/span[contains(text(),'Close')]/..

# # text variable
# element description
${text_value.message_successfully_modal}    Send Message Success

*** Keywords ***
Verify "Request premium header" in Request premium details
    request_premium_list_details_page.Check "Request premium header" value
    request_premium_list_details_page.Check "Header status" value

Verify "Request premium content" in Request premium details
    request_premium_list_details_page.Check "Request premium content" value

Verify "Question detail" in Request premium details
    request_premium_list_details_page.Check "Question detail" value

Verify "Car Information" in Request premium details
    request_premium_list_details_page.Check "Brand/Model" value
    request_premium_list_details_page.Check "Car power" value
    request_premium_list_details_page.Check "License no" value
    request_premium_list_details_page.Check "Car year" value
    request_premium_list_details_page.Check "Engine number" value
    request_premium_list_details_page.Check "Chassis number" value
    request_premium_list_details_page.Check "Car color" value
    # request_premium_list_details_page.Check "Car type" value
    request_premium_list_details_page.Check "Special equipment" value
    request_premium_list_details_page.Check "Car type details" value

Verify "Insurance Information" in Request premium details
    request_premium_list_details_page.Check "Renewal premium type" value
    request_premium_list_details_page.Check "Customer name" value
    request_premium_list_details_page.Check "Old policy number" value
    request_premium_list_details_page.Check "Old insure company" value
    request_premium_list_details_page.Check "Old campaign expire date" value
    request_premium_list_details_page.Check "Campaign effective and expire date" value
    request_premium_list_details_page.Check "Coverage amount od" value
    request_premium_list_details_page.Check "Premium type" value
    request_premium_list_details_page.Check "Repair type" value
    request_premium_list_details_page.Check "Check premium type" value
    request_premium_list_details_page.Check "Discount percent" value
    request_premium_list_details_page.Check "Driver1 birthdate" value
    request_premium_list_details_page.Check "Driver2 birthdate" value

Verify "Created by & Created date" in Request premium details
    request_premium_list_details_page.Get "Created date" By logic
    request_premium_list_details_page.Check "Created by & Created date" value

# # Request premium header component
Check "Request premium header" value
    @{check_request_premium_header_value}   Create List    ${value_request_premium_list.customer_value}
    ${get_request_premium_header_value}=   Get Text  ${request_premium_list_details_page.request_premium_header_value}
    FOR    ${header_list_value}    IN    @{check_request_premium_header_value}
        Should Contain Any    ${get_request_premium_header_value}      ${header_list_value}
    END

Check "Header status" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.header_status_value}
    ${get_header_status_value}=   Get Text  ${request_premium_list_details_page.header_status_value}
    # ในกรณี สถานะรายการ = 'เกินกำหนดรอบเช็คเบี้ย' status column ใช้คำสั้น
    IF    '${value_request_premium.request_premium_status}' != 'เกินกำหนดรอบเช็คเบี้ย'
        IF    '${value_request_premium.request_premium_status}' == 'รอประกันตอบกลับ'
            Should Contain Any    ${get_header_status_value}       รอทิสโก้ตอบกลับ
        ELSE
            Should Contain Any    ${get_header_status_value}      ${value_request_premium.request_premium_status}
        END
    ELSE
        Should Contain Any    ${value_request_premium_list.status_value}       ${get_header_status_value}
    END

# # Request premium content component
Check "Request premium content" value
    ${get_request_premium_content_value}=   Get Text  ${request_premium_list_details_page.content_value}
    # หาก ประเภทงาน != ต่ออายุ จะเอาระบุบริษัทประกัน มาเช็คแทน
    IF  '${value_rq_form.renewal_premium_type}' != 'ต่ออายุ'
        ${value.count_found}=    Set Variable    0
        @{check_request_premium_content_value}   Create List    ${value_request_premium.UW_no}    @{value_request_premium.specify_insure_company}    ${value_request_premium.check_premium_type}
        FOR    ${content_value}    IN    @{check_request_premium_content_value}
            ${Result_content_value}=      Run Keyword And Return Status    Should Contain Any    ${get_request_premium_content_value}      ${content_value}
            IF  '${Result_content_value}' == 'True' 
                ${value.count_found} =    Evaluate    ${value.count_found} + 1
            END
        END
        # หากเจอผลลัพธ์รวมถูกต้องเกิน 3 ค่าถือว่าถูกต้อง
        IF  ${value.count_found} < 3
                Fail    มีข้อมูล content ไม่ตรงกัน
        END
    # หาก ประเภทงาน == ต่ออายุ จะเอาบริษัทประกันเดิม มาเช็คแทน
    ELSE
        @{check_request_premium_content_value}   Create List    ${value_request_premium.UW_no}    ${value_request_premium.old_insure_company}    ${value_request_premium.check_premium_type}
        FOR    ${content_value}    IN    @{check_request_premium_content_value}
            Should Contain Any    ${get_request_premium_content_value}      ${content_value}
        END
    END

Check "Request premium content" value for each status flow
    ${get_request_premium_content_value}=   Get Text  ${request_premium_list_details_page.content_value}
    @{check_request_premium_content_value}   Create List    ${value_request_premium_list.uw_no_value}    ${value_request_premium_list.insure_company_value}    ${value_request_premium_list.check_premium_type_value}
    FOR    ${content_value}    IN    @{check_request_premium_content_value}
        Should Contain Any    ${get_request_premium_content_value}      ${content_value}
    END

# # Question detail component
Check "Question detail" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.question_detail_value}
    ${get_details_question_detail_value}=   Get Text  ${request_premium_list_details_page.question_detail_value}
    Should Contain Any    ${get_details_question_detail_value}      ${value_request_premium.question_detail}

# # Car Information component
Check "Brand/Model" value
    Set Global Variable    ${value_request_premium_list.brand_and_model}             ${input_form.brand_name} / ${input_form.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.brand_and_model_value}
    ${get_details_brand/model_value}=   Get Text  ${request_premium_list_details_page.brand_and_model_value}
    Should Contain Any    ${get_details_brand/model_value}      ${value_request_premium_list.brand_and_model}

Check "Car power" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.car_power_value}
    ${get_details_car_power_value}=   Get Text  ${request_premium_list_details_page.car_power_value}
    Should Contain Any    ${get_details_car_power_value}      ${value_request_premium.car_power}

Check "License no" value
    # condition for license no
    IF  '${value_request_premium.red_label}' == 'ป้ายแดง'
        Set Global Variable    ${value_request_premium.license_no_OR_red_label}          ${value_request_premium.red_label}
    ELSE
        Set Global Variable    ${value_request_premium.license_no_OR_red_label}          ${value_request_premium.license_no}
    END
    ${Result_license_no}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.license_no_OR_red_label}
    IF  '${Result_license_no}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.license_no_value}
        ${get_details_license_no_value}=   Get Text  ${request_premium_list_details_page.license_no_value}
        Should Contain Any    ${get_details_license_no_value}      ${value_request_premium.license_no_OR_red_label}
    ELSE
        Should Contain Any    ${get_details_license_no_value}      -
    END

Check "Car year" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.car_year_value}
    ${get_details_car_year_value}=   Get Text  ${request_premium_list_details_page.car_year_value}
    Should Contain Any    ${get_details_car_year_value}      ${value_request_premium.car_year}

Check "Engine number" value
    ${Result_engine_number}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.engine_number}
    IF  '${Result_engine_number}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.engine_number_value}
        ${get_details_engine_number_value}=   Get Text  ${request_premium_list_details_page.engine_number_value}
        Should Contain Any    ${get_details_engine_number_value}      ${value_request_premium.engine_number}
    ELSE
        Should Contain Any    ${get_details_engine_number_value}      -
    END

Check "Chassis number" value
    ${Result_chassis_number}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.chassis_number}
    IF  '${Result_chassis_number}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.chassis_number_value}
        ${get_details_chassis_number_value}=   Get Text  ${request_premium_list_details_page.chassis_number_value}
        Should Contain Any    ${get_details_chassis_number_value}      ${value_request_premium.chassis_number}
    ELSE
        Should Contain Any    ${get_details_chassis_number_value}      -
    END

Check "Car color" value
    IF  '${value_request_premium.car_color}' != 'ไม่ระบุ' 
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.car_color_value}
        ${get_details_car_color_value}=   Get Text  ${request_premium_list_details_page.car_color_value}
        Should Contain Any    ${get_details_car_color_value}      ${value_request_premium.car_color}
    ELSE
        Should Contain Any    ${get_details_car_color_value}      -
    END

Check "Car type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.car_type_value}
    ${get_details_car_type_value}=   Get Text  ${request_premium_list_details_page.car_type_value}
    Should Contain Any    ${get_details_car_type_value}      ${value_request_premium.car_type}

Check "Special equipment" value
    @{column_special_equipment_values}    Create List      ${value_request_premium.special_equipment}   ${input_form.special_equipment_detail}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.special_equipment_value}
    ${get_details_special_equipment_value}=   Get Text  ${request_premium_list_details_page.special_equipment_value}
    FOR    ${special_equipment_list}    IN    @{column_special_equipment_values}
        Should Contain Any    ${get_details_special_equipment_value}      ${special_equipment_list}
    END

Check "Car type details" value
    ${Result_car_type_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.car_type_detail}
    IF  '${Result_car_type_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.car_type_detail_value}
        ${get_details_car_type_detail_value}=   Get Text  ${request_premium_list_details_page.car_type_detail_value}
        Should Contain Any    ${get_details_car_type_detail_value}      ${value_request_premium.car_type_detail}
    ELSE
        Should Contain Any    ${get_details_car_type_detail_value}      -
    END

# # Insurance Information component
Check "Renewal premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.renewal_premium_type_value}
    ${get_details_renewal_premium_type_value}=   Get Text  ${request_premium_list_details_page.renewal_premium_type_value}
    Should Contain Any    ${get_details_renewal_premium_type_value}      ${value_request_premium.renewal_premium_type}

Check "Customer name" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.customer_value}
    ${get_details_customer_value}=   Get Text  ${request_premium_list_details_page.customer_value}
    Should Contain Any    ${get_details_customer_value}      ${value_request_premium.customer}

Check "Old policy number" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.old_policy_number_value}
    ${get_details_old_policy_number_value}=   Get Text  ${request_premium_list_details_page.old_policy_number_value}
    Should Contain Any    ${get_details_old_policy_number_value}      ${value_request_premium.old_policy_number}

Check "Old insure company" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.old_insure_company_value}
    ${get_details_old_insure_company_value}=   Get Text  ${request_premium_list_details_page.old_insure_company_value}
    Should Contain Any    ${get_details_old_insure_company_value}      ${value_request_premium.old_insure_company}

Check "Old campaign expire date" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.old_campaign_expire_date_value}
    ${get_details_old_campaign_expire_date_value}=   Get Text  ${request_premium_list_details_page.old_campaign_expire_date_value}
    Should Contain Any    ${get_details_old_campaign_expire_date_value}      ${value_request_premium.old_campaign_expire_date}    

Check "Campaign effective and expire date" value
    Set Global Variable    ${value_request_premium.campaign_effective_and_expire_date}     ${value_request_premium.campaign_effective_date} - ${value_request_premium.campaign_expire_date}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.campaign_effective_and_expire_date_value}
    ${get_details_campaign_effective_and_expire_date_value}=   Get Text  ${request_premium_list_details_page.campaign_effective_and_expire_date_value}
    Should Contain Any    ${get_details_campaign_effective_and_expire_date_value}      ${value_request_premium.campaign_effective_and_expire_date}

Check "Coverage amount od" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=   Get Text  ${request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=         evaluate       '${get_details_coverage_amount_od_value}'.replace(',','')
    Should Contain Any    ${get_details_coverage_amount_od_value}      ${value_request_premium.coverage_amount_od}

Check "Premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.premium_type_value}
    ${get_details_premium_type_value}=   Get Text  ${request_premium_list_details_page.premium_type_value}
    Should Contain Any    ${get_details_premium_type_value}      ${value_request_premium.premium_type}

Check "Repair type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.repair_type_value}
    ${get_details_repair_type_value}=   Get Text  ${request_premium_list_details_page.repair_type_value}
    Should Contain Any    ${get_details_repair_type_value}      ${value_request_premium.repair_type}

Check "Check premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.check_premium_type_value}
    ${get_details_check_premium_type_value}=   Get Text  ${request_premium_list_details_page.check_premium_type_value}
    Should Contain Any    ${get_details_check_premium_type_value}      ${value_request_premium.check_premium_type}

Check "Discount percent" value
    ${Result_discount_percent}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.discount_percent}
    IF  '${Result_discount_percent}' == 'True' or '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
        ${value_request_premium.discount_percent}=         evaluate       '${value_request_premium.discount_percent}'.replace(' ','')
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.discount_percent_value}
        ${get_details_discount_percent_value}=   Get Text  ${request_premium_list_details_page.discount_percent_value}
        Should Contain Any    ${get_details_discount_percent_value}      ${value_request_premium.discount_percent}
    END

Check "Driver1 birthdate" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.driver1_birthdate_value}
    ${get_details_driver1_birthdate_value}=   Get Text  ${request_premium_list_details_page.driver1_birthdate_value}
    Should Contain Any    ${get_details_driver1_birthdate_value}      ${value_request_premium.driver1_birthdate}

Check "Driver2 birthdate" value
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.driver2_birthdate_value}
    ${get_details_driver2_birthdate_value}=   Get Text  ${request_premium_list_details_page.driver2_birthdate_value}
    Should Contain Any    ${get_details_driver2_birthdate_value}      ${value_request_premium.driver2_birthdate}

Get "Created date" By logic
    ${current_date}=    Get Current Date  # Get the current date
    ${current_day}=   Convert Date  ${current_date}  result_format=%d
    ${current_day}=  Convert To Integer  ${current_day}
    ${current_month}=   Convert Date  ${current_date}  result_format=%m
    ${current_month}=  Convert To Integer  ${current_month}
    ${current_year}=   Convert Date  ${current_date}  result_format=%Y
    Set Global Variable    ${value_request_premium.created_date}          ${current_day}/${current_month}/${current_year}

Get "Created time" By logic
    ${created_time} =    Get Current Date    result_format=%H
    Set Global Variable    ${value_request_premium.created_time}    ${created_time}

Check "Created by & Created date" value
    # loop verify footer value
    ${get_details_footer_value}=   Get Text  ${request_premium_list_details_page.footer_value}
    @{check_footer_value}   Create List    ${value_common.email}   ${value_request_premium.created_date}
    FOR    ${footer_list_value}    IN    @{check_footer_value}
        Should Contain Any    ${get_details_footer_value}      ${footer_list_value}
    END

Fill Request premium comment
    [Arguments]                                  ${input_list.tisco_comment}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.tisco_comment_text_field}
    SeleniumLibrary.Clear Element Text               ${request_premium_list_details_page.tisco_comment_text_field} 
    SeleniumLibrary.Input Text                       ${request_premium_list_details_page.tisco_comment_text_field}       ${input_list.tisco_comment}
    Set Global Variable    ${value_request_premium.tisco_comment}    ${input_list.tisco_comment}

Click "Send comment" button
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.send_comment_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_details_page.send_comment_button}
    request_premium_list_details_page.Get "Created date" By logic
    request_premium_list_details_page.Get "Created time" By logic

Verify "Send comment" successfully and Close "Notification modal"
    common.Wait for process 2s
    ${get_modal_detail_value}=   Get Text  ${request_premium_list_details_page.detail_section_comment_modal}
    Should Contain Any    ${get_modal_detail_value}      ${text_value.message_successfully_modal}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_list_details_page.close_comment_modal_button}
    SeleniumLibrary.Click Element                    ${request_premium_list_details_page.close_comment_modal_button}
    common.Wait for process 3s

Verify "Comment" is already sent in Comment feed
    @{comment_section_value}    Create List    ${value_common.email}   ${value_request_premium.created_date}   ${value_request_premium.created_time}   ${value_request_premium.tisco_comment}
    FOR    ${comment_list}    IN    @{comment_section_value}
        ${Result_comment_list}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${comment_list}
        IF  '${Result_comment_list}' == 'True'
            Log  พบ ข้อมูลสรุปเคลมประกันรถยนต์ = ${comment_list}
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${comment_list}
        END        
    END

Verify "Claim summary" Information
    @{claim_summary_text_column}    Create List    จำนวนการเคลม   เรียกร้องค่าสินไหมถึงวันที่   ประเมินราคารวมทั้งหมด   ความเสียหายโดยสิ้นเชิง
    FOR    ${text_claim_summary}    IN    @{claim_summary_text_column}
        ${Result_text_coverage_detail}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text_claim_summary}
        IF  '${Result_text_coverage_detail}' == 'True'
            Log  พบ ข้อมูลสรุปเคลมประกันรถยนต์ = ${text_claim_summary}
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${text_claim_summary}
        END        
    END
