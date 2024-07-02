*** Variables ***
${search_premium_calculation_page.calculation_page_labelLink}                 xpath=//li[contains(text(),'คํานวณเบี้ยประกัน')]
${search_premium_calculation_page.dashboard_labelLink}                        xpath=//li[contains(text(),'หน้าหลัก')]
${search_premium_calculation_page.check_premium_labelLink}                    xpath=//li[contains(text(),'ค้นหาเบี้ยประกันภัยรถยนต์')]
${search_premium_calculation_page.amount_coverage}                            xpath=//tbody/*[4]/td[2]
${search_premium_calculation_page.voluntary_car_insurance_premium}            xpath=//tbody/*[5]/td[2]
${search_premium_calculation_page.additional_special_coverage_viewmoreLink}   xpath=//table/..//tbody/*[17]/td[contains(text(),'สิทธิประโยชน์และความคุ้มครองพิเศษ')]/../td[2]/a[@href="javascript:void(0);"]
${search_premium_calculation_page.premium_condition_policy_viewmoreLink}      xpath=//table/..//tbody/*[18]/td[contains(text(),'เงื่อนไขการรับประกัน')]/../td[2]/a[@href="javascript:void(0);"]
${search_premium_calculation_page.close_premium_details_modal_button}         xpath=//mat-dialog-container/..//mat-icon
# campaign coverage detail value
${search_premium_calculation_page.campaign_coverage_detail_insurance_type_text}                     xpath=//table[@class="table primary-table table-bordered"]/tbody/*[3]/td[1]
${search_premium_calculation_page.campaign_coverage_detail_insurance_type_value}                    xpath=//table[@class="table primary-table table-bordered"]/tbody/*[3]/td[2]
${search_premium_calculation_page.campaign_coverage_detail_coverage_amount_text}                    xpath=//table[@class="table primary-table table-bordered"]/tbody/*[4]/td[1]
${search_premium_calculation_page.campaign_coverage_detail_coverage_amount_value}                   xpath=//table[@class="table primary-table table-bordered"]/tbody/*[4]/td[2]
${search_premium_calculation_page.campaign_coverage_detail_voluntary_car_insurance_premium_text}    xpath=//table[@class="table primary-table table-bordered"]/tbody/*[5]/td[1]
${search_premium_calculation_page.campaign_coverage_detail_voluntary_car_insurance_premium_value}   xpath=//table[@class="table primary-table table-bordered"]/tbody/*[5]/td[2]

*** Keywords ***
Check Calculation page available
    common.Wait for process 5s
    common.Scroll up to 400
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.dashboard_labelLink}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.check_premium_labelLink}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.calculation_page_labelLink}

Verify all coverage insurance detail of Premium calculation / Quotation history
    search_premium_calculation_page.Verify "Insurance type" in campaign coverage details of Premium calculation / Quotation history
    search_premium_calculation_page.Verify "Coverage amount" in campaign coverage details of Premium calculation / Quotation history
    search_premium_calculation_page.Verify "Voluntary car insurance premium value" in campaign coverage details of Premium calculation / Quotation history
    search_premium_calculation_page.Check coverage insurance detail (section 1 (แคมเปญ -> ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง))
    search_premium_calculation_page.Check coverage insurance detail (section 2 (ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง -> ตรวจสอบรถยนต์ก่อนการรับประกันภัย))

Verify "Insurance type" in campaign coverage details of Premium calculation / Quotation history
    # get Insurance type (ประเภทประกันภัย)
    ${get_insurance_type_text}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_insurance_type_text}
    ${get_insurance_type_value}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_insurance_type_value}
    # compare value from column to modal
    IF  '${value.get_campaign_result_column_insurance_type}' == 'ประเภท 2 Plus' or '${value.get_campaign_result_column_insurance_type}' == 'ประเภท 3 Plus'
        ${replace_campaign_result_column_insurance_type}=         Evaluate       '${value.get_campaign_result_column_insurance_type}'.replace('Plus','พิเศษ')
        Should Contain Any   ${get_insurance_type_value}     ${replace_campaign_result_column_insurance_type}
    ELSE
        IF  '${get_insurance_type_value}' == '${value.get_campaign_result_column_insurance_type}'
            Log     matching value = ${get_insurance_type_value}, ${value.get_campaign_result_column_insurance_type}
        ELSE
            Fail    not matching value = ${get_insurance_type_value} , ${value.get_campaign_result_column_insurance_type}
        END
    END

Verify "Coverage amount" in campaign coverage details of Premium calculation / Quotation history
    # get Coverage amount (ทุนประกันภัย)
    ${get_coverage_amount_text}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_coverage_amount_text}
    ${get_coverage_amount_value}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_coverage_amount_value}
    # remove comma in value
    ${get_final_coverage_amount_value}=         Evaluate       '${get_coverage_amount_value}'.replace(',','') if ',' in '${get_coverage_amount_value}' else '${get_coverage_amount_value}'
    Log     ${get_coverage_amount_text} = ${get_final_coverage_amount_value}
    # compare value between campaign result column & campaign detail modal
    Should Be Equal As Numbers    ${value.get_campaign_result_column_amount_od}    ${get_final_coverage_amount_value}    tolerance=0.1

Verify "Voluntary car insurance premium value" in campaign coverage details of Premium calculation / Quotation history
    # get Voluntary car insurance premium (ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร))
    ${get_voluntary_car_insurance_premium_text}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_voluntary_car_insurance_premium_text}
    ${get_voluntary_car_insurance_premium_value}=    Get Text    ${search_premium_calculation_page.campaign_coverage_detail_voluntary_car_insurance_premium_value}
    # remove comma in value
    ${get_final_voluntary_car_insurance_premium_value}=         Evaluate       '${get_voluntary_car_insurance_premium_value}'.replace(',','') if ',' in '${get_voluntary_car_insurance_premium_value}' else '${get_voluntary_car_insurance_premium_value}'
    Log     ${get_voluntary_car_insurance_premium_text} = ${get_final_voluntary_car_insurance_premium_value}
    # compare value between campaign result column & campaign detail modal
    Should Be Equal As Numbers    ${value.get_campaign_result_column_total_premium_value}    ${get_final_voluntary_car_insurance_premium_value}    tolerance=0.1
    Set Global Variable    ${value.get_final_voluntary_car_insurance_premium_value}    ${get_final_voluntary_car_insurance_premium_value}

Check coverage insurance detail (section 1 (แคมเปญ -> ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง))
    ${value.count}=    Set Variable    0
    ${text_coverage_detail_section1}    Create List    แคมเปญ      ประเภทประกันภัย       ทุนประกันภัย       ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร)     รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ    ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อคน      ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง
    FOR    ${text}    IN    @{text_coverage_detail_section1}
        SeleniumLibrary.Wait Until Page Contains    ${text}
        Log  พบข้อมูลรายละเอียดความคุ้มครอง (section 1) = ${text_coverage_detail_section1}[${value.count}]
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    ${get_coverage_amount}=    Get Text     ${search_premium_calculation_page.amount_coverage}
    Log      ทุนประกันภัย = ${get_coverage_amount}
    ${get_voluntary_car_insurance_premium}=    Get Text     ${search_premium_calculation_page.voluntary_car_insurance_premium}
    Log      ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร) = ${get_voluntary_car_insurance_premium}

Check coverage insurance detail (section 2 (ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง -> ตรวจสอบรถยนต์ก่อนการรับประกันภัย))
    ${value.count}=    Set Variable    0
    ${text_coverage_detail_section2}    Create List    ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง      ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง       ทุนประกันภัย ความเสียหายต่อรถยนต์     ทุนประกันภัย รถยนต์สูญหาย ไฟไหม้      ความเสียหายต่อรถยนต์ส่วนแรก     อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร (ผู้ขับขี่ รวมผู้โดยสาร)       ค่ารักษาพยาบาล (ผู้ขับขี่ รวมผู้โดยสาร)      การประกันตัวผู้ขับขี่      สิทธิประโยชน์และความคุ้มครองพิเศษ    เงื่อนไขการรับประกัน
    common.Scroll down to 600
    FOR    ${text}    IN    @{text_coverage_detail_section2}
        SeleniumLibrary.Wait Until Page Contains    ${text}
        Log  พบข้อมูลรายละเอียดความคุ้มครอง (section 2) = ${text_coverage_detail_section2}[${value.count}]
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    common.Wait for process 3s

Click "Additional special coverage" view more link
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.additional_special_coverage_viewmoreLink}
    SeleniumLibrary.Click Element   ${search_premium_calculation_page.additional_special_coverage_viewmoreLink}
    common.Wait for process 5s

Verify "Special coverage rights" tab after click "Additional special coverage" view more link
    # ตรวจสอบ สิทธิ์ความคุ้มครองพิเศษ tab ใน ความคุ้มครองพิเศษเพิ่มเติม view more link
    search_premium_calculation_page.Click "Additional special coverage" view more link
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.close_premium_details_modal_button}
    SeleniumLibrary.Click Element   ${search_premium_calculation_page.close_premium_details_modal_button}

Click "Premium Condition policy" view more link
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.premium_condition_policy_viewmoreLink}
    SeleniumLibrary.Click Element   ${search_premium_calculation_page.premium_condition_policy_viewmoreLink}
    common.Wait for process 5s

Verify "Premium Condition policy" tab after click "Premium Condition policy" view more link
    # ตรวจสอบ เงื่อนไขการรับประกัน tab ใน เงื่อนไขการรับประกัน view more link
    search_premium_calculation_page.Click "Premium Condition policy" view more link
    # logic ในการตรวจสอบข้อมูลรถยนต์สามารถใช้ร่วมกับ campaign details modal ได้
    search_premium_filter_campaign_page.Check car information in "Premium Condition policy" tab
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_calculation_page.close_premium_details_modal_button}
    SeleniumLibrary.Click Element   ${search_premium_calculation_page.close_premium_details_modal_button}
