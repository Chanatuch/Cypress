
*** Variables ***
# element xpath variable
# Question detail
${partner_request_premium_list_details_page.question_detail_value}                      xpath=//div[@class="container-fluid"]/..//div[@class="col-12"]/p
${partner_request_premium_list_details_page.header_explain_value}                       xpath=//div[@class="header-explane w-100 d-flex justify-content-between"]/div/p
${partner_request_premium_list_details_page.reply_comment_text_field}                   xpath=//mat-label[contains(text(),'รายละเอียดแจ้งข้อมูลกลับ')]/..//textarea[@formcontrolname="response"]
${partner_request_premium_list_details_page.reply_comment_button}                       xpath=//div/button/span[contains(text(),'ตอบการสอบถามเบี้ย')]/..
${partner_request_premium_list_details_page.confirm_reply_button}                       xpath=//div/button/span[contains(text(),'ใช่')]/..
${partner_request_premium_list_details_page.ok_button}                                  xpath=//div/button/span[contains(text(),'ตกลง')]/..
${partner_request_premium_list_details_page.reply_cancel_tab_button}                    xpath=//div[@role="tab"]/span[@class="mdc-tab__content"]/span[contains(text(),'ยกเลิกรายการ')]
${partner_request_premium_list_details_page.reply_request_additional_info_tab_button}   xpath=//div[@role="tab"]/span[@class="mdc-tab__content"]/span[contains(text(),'ข้อมูลเพิ่มเติม')]
${partner_request_premium_list_details_page.reply_not_warranted_tab_button}             xpath=//div[@role="tab"]/span[@class="mdc-tab__content"]/span[contains(text(),'ไม่รับประกัน')]
${partner_request_premium_list_details_page.reply_warranty_tab_button}                  xpath=//div[@role="tab"]/span[@class="mdc-tab__content"]/span[contains(text(),'รับประกัน')]
# warranty xpath input
# Section: Insurance premium details
${partner_request_premium_list_details_page.campaign_name_textField}                        xpath=//input[@formcontrolname="campaign_name"]
${partner_request_premium_list_details_page.special_campaign_textField}                     xpath=//input[@formcontrolname="spcl_cmpn_mask"]
${partner_request_premium_list_details_page.special_campaign_dropdown}                      xpath=//span[contains(text(),' ${partner_reply_warranty_input.special_campaign} ')]
${partner_request_premium_list_details_page.repair_type_textField}                          xpath=//input[@formcontrolname="repair_type_mask"]
${partner_request_premium_list_details_page.repair_type_dropdown}                           xpath=//span[contains(text(),' ${partner_reply_warranty_input.repair_type} ')]
${partner_request_premium_list_details_page.coverage_amount_od_textField}                   xpath=//input[@formcontrolname="coverage_amount_od"]
${partner_request_premium_list_details_page.voluntary_car_insurance_premiums_textField}     xpath=//input[@formcontrolname="sum_premium"]
${partner_request_premium_list_details_page.gross_premium_textField}                        xpath=//input[@formcontrolname="act"]
# Section: Details of voluntary car insurance
${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_person_textField}               xpath=//input[@formcontrolname="_data_1"]
${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_time_textField}                 xpath=//input[@formcontrolname="_data_2"]
${partner_request_premium_list_details_page.Liability_to_third_party_property_per_time_textField}                           xpath=//input[@formcontrolname="_data_3"]
${partner_request_premium_list_details_page.first_part_damage_to_third_party_property_per_time_textField}                   xpath=//input[@formcontrolname="_data_4"]
${partner_request_premium_list_details_page.coverage_amount_for_vehicle_damage_textField}                                   xpath=//input[@formcontrolname="_data_5"]
${partner_request_premium_list_details_page.coverage_amount_for_lost_car_and_fire_textField}                                xpath=//input[@formcontrolname="_data_6"]
${partner_request_premium_list_details_page.First_part_of_vehicle_damage_textField}                                         xpath=//input[@formcontrolname="_data_7"]
${partner_request_premium_list_details_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_textField}     xpath=//input[@formcontrolname="_data_8"]
${partner_request_premium_list_details_page.nursing_expenses_textField}                                                     xpath=//input[@formcontrolname="_data_9"]
${partner_request_premium_list_details_page.driver_insurance_textField}                                                     xpath=//input[@formcontrolname="_data_10"]            
${partner_request_premium_list_details_page.number_of_passengers_textField}                                                 xpath=//input[@formcontrolname="_data_12"]
# Section: Additional details of terms and conditions
${partner_request_premium_list_details_page.additional_special_protection_textField}                                        xpath=//mat-label[contains(text(),'ความคุ้มครองพิเศษเพิ่มเติม')]/..//textarea[@formcontrolname="coverage_remark"]
${partner_request_premium_list_details_page.insurance_conditions_textField}                                                 xpath=//mat-label[contains(text(),'เงื่อนไขการรับประกันภัย')]/..//textarea[@formcontrolname="condition_remark"]
${partner_request_premium_list_details_page.details_report_textField}                                                       xpath=//mat-label[contains(text(),'รายละเอียดแจ้งข้อมูลกลับ')]/..//textarea[@formcontrolname="response"]
# Car Information component
${partner_request_premium_list_details_page.brand_and_model_value}                                  xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[3]/p[2]
${partner_request_premium_list_details_page.car_power_value}                                        xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[4]/p[2]
${partner_request_premium_list_details_page.car_year_value}                                         xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[5]/p[2]
${partner_request_premium_list_details_page.engine_number_value}                                    xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[6]/p[2]
${partner_request_premium_list_details_page.chassis_number_value}                                   xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[7]/p[2]
${partner_request_premium_list_details_page.car_color_value}                                        xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[9]/p[2]
${partner_request_premium_list_details_page.car_type_value}                                         xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[10]/p[2]
${partner_request_premium_list_details_page.car_type_detail_value}                                  xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[11]/p[2]
${partner_request_premium_list_details_page.special_equipment_value}                                xpath=//div[@class="col-lg-6 col-md-12 p-2"][1]/div/*[12]/p[2]
# Insurance Information component
${partner_request_premium_list_details_page.renewal_premium_type_value}                             xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[3]/p[2]
${partner_request_premium_list_details_page.old_policy_number_value}                                xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[4]/p[2]
${partner_request_premium_list_details_page.old_insure_company_value}                               xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[5]/p[2]
${partner_request_premium_list_details_page.old_campaign_expire_date_value}                         xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[6]/p[2]
${partner_request_premium_list_details_page.campaign_effective_and_expire_date_value}               xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[7]/p[2]
${partner_request_premium_list_details_page.coverage_amount_od_value}                               xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[8]/p[2]
${partner_request_premium_list_details_page.premium_type_value}                                     xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[9]/p[2]
${partner_request_premium_list_details_page.repair_type_value}                                      xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[10]/p[2]
${partner_request_premium_list_details_page.check_premium_type_value}                               xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[11]/p[2]
${partner_request_premium_list_details_page.discount_percent_value}                                 xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[12]/p[2]
${partner_request_premium_list_details_page.driver1_birthdate_value}                                xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[13]/p[2]
${partner_request_premium_list_details_page.driver2_birthdate_value}                                xpath=//div[@class="col-lg-6 col-md-12 p-2"][2]/div/*[14]/p[2]

# variable
${cancel_header_modal}                      ยกเลิกรายการสำเร็จ
${request_additional_info_header_modal}     ส่งคำขอข้อมูลเพิ่มเติมสำเร็จ
${not_warranted_header_modal}               ไม่รับประกันสำเร็จ
${warranty_header_modal}                    รับประกันสำเร็จ

*** Keywords ***

Fill Reply Comment
    [Arguments]                                  ${partner_input_list.reply_comment}
    common.Wait for process 2s
    common.Scroll down to 400
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_comment_text_field}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.reply_comment_text_field} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.reply_comment_text_field}       ${partner_input_list.reply_comment}
    Set Global Variable    ${value_partner_list.reply_comment}    ${partner_input_list.reply_comment}

Click "Reply comment" button
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_comment_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.reply_comment_button}

Click "Confirm reply" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.confirm_reply_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.confirm_reply_button}

Click "ok" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.ok_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.ok_button}

Click "Cancel Tab" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_cancel_tab_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.reply_cancel_tab_button}

Click "Request additional info Tab" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_request_additional_info_tab_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.reply_request_additional_info_tab_button}

Click "Not Warranted Tab" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_not_warranted_tab_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.reply_not_warranted_tab_button}

Click "Warranty Tab" button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.reply_warranty_tab_button}
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.reply_warranty_tab_button}

Verify "Cancel request premium" modal and Close "Successfully replying" modal
    common.Wait for process 4s
    partner_request_premium_list_details_page.Verify "Cancel Header" modal
    partner_request_premium_list_details_page.Verify "Cancel detail" modal
    partner_request_premium_list_details_page.Click "ok" button

Verify "Cancel Header" modal
    ${Result_cancel_header}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${cancel_header_modal}
    IF  '${Result_cancel_header}' == 'False'
        Fail    ไม่มีข้อมูล: ${cancel_header_modal} 
    END

Verify "Cancel detail" modal
    ${cancel_details}=    Set Variable    คุณได้ยกเลิกการทำรายการสอบถามเบี้ยประกันรถยนต์ ${value_request_premium.UW_no} เรียบร้อยแล้ว
    ${Result_cancel_details}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${cancel_details}
    IF  '${Result_cancel_details}' == 'False'
        Fail    ไม่มีข้อมูล: ${cancel_details} 
    END

Verify "Request additional info request premium" modal and Close "Successfully replying" modal
    common.Wait for process 4s
    partner_request_premium_list_details_page.Verify "Request additional info Header" modal
    partner_request_premium_list_details_page.Verify "Request additional info detail" modal
    partner_request_premium_list_details_page.Click "ok" button

Verify "Request additional info Header" modal
    ${Result_request_additional_info_header}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_additional_info_header_modal}
    IF  '${Result_request_additional_info_header}' == 'False'
        Fail    ไม่มีข้อมูล: ${request_additional_info_header_modal} 
    END

Verify "Request additional info detail" modal
    ${request_additional_info_details}=    Set Variable    คุณได้ส่งคำขอข้อมูลเพิ่มเติมรายการสอบถามเบี้ยประกันรถยนต์ ${value_request_premium.UW_no} เรียบร้อยแล้ว
    ${Result_request_additional_info_details}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${request_additional_info_details}
    IF  '${Result_request_additional_info_details}' == 'False'
        Fail    ไม่มีข้อมูล: ${request_additional_info_details} 
    END

Verify "Not warranted request premium" modal and Close "Successfully replying" modal
    common.Wait for process 4s
    partner_request_premium_list_details_page.Verify "Not warranted Header" modal
    partner_request_premium_list_details_page.Verify "Not warranted detail" modal
    partner_request_premium_list_details_page.Click "ok" button

Verify "Not warranted Header" modal
    ${Result_not_warranted_header}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${not_warranted_header_modal}
    IF  '${Result_not_warranted_header}' == 'False'
        Fail    ไม่มีข้อมูล: ${not_warranted_header_modal} 
    END

Verify "Not warranted detail" modal
    ${not_warranted_details}=    Set Variable    คุณได้ยืนยันไม่รับประกันรายการสอบถามเบี้ยประกันรถยนต์ ${value_request_premium.UW_no} เรียบร้อยแล้ว
    ${Result_not_warranted_details}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${not_warranted_details}
    IF  '${Result_not_warranted_details}' == 'False'
        Fail    ไม่มีข้อมูล: ${not_warranted_details} 
    END

Verify "Warranty request premium" modal and Close "Successfully replying" modal
    common.Wait for process 4s
    partner_request_premium_list_details_page.Verify "Warranty Header" modal
    partner_request_premium_list_details_page.Verify "Warranty detail" modal
    partner_request_premium_list_details_page.Click "ok" button

Verify "Warranty Header" modal
    ${Result_warranty_header}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${warranty_header_modal}
    IF  '${Result_warranty_header}' == 'False'
        Fail    ไม่มีข้อมูล: ${warranty_header_modal} 
    END

Verify "Warranty detail" modal
    ${warranty_details}=    Set Variable    คุณได้ยืนยันรับประกันรายการสอบถามเบี้ยประกันรถยนต์ ${value_request_premium.UW_no} เรียบร้อยแล้ว
    ${Result_warranty_details}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${warranty_details}
    IF  '${Result_warranty_details}' == 'False'
        Fail    ไม่มีข้อมูล: ${warranty_details} 
    END

Fill Campaign name
# แคมเปญ
    [Arguments]                 ${partner_reply_warranty_input.campaign_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.campaign_name_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.campaign_name_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.campaign_name_textField}       ${partner_reply_warranty_input.campaign_name}

Fill & Select Special campaign
# โครงการพิเศษ
    [Arguments]                 ${partner_reply_warranty_input.special_campaign}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.special_campaign_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.special_campaign_textField}
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.special_campaign_textField}       ${partner_reply_warranty_input.special_campaign}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.special_campaign_dropdown} 
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.special_campaign_dropdown}

Fill & Select Repair type
# ประเภทการจัดซ่อม
    [Arguments]                 ${partner_reply_warranty_input.repair_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.repair_type_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.repair_type_textField}
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.repair_type_textField}       ${partner_reply_warranty_input.repair_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.repair_type_dropdown} 
    SeleniumLibrary.Click Element                    ${partner_request_premium_list_details_page.repair_type_dropdown}

Fill Coverage amount od
# ทุนประกันภัย
    [Arguments]                 ${partner_reply_warranty_input.coverage_amount_od}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.coverage_amount_od_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.coverage_amount_od_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.coverage_amount_od_textField}       ${partner_reply_warranty_input.coverage_amount_od}

Fill Voluntary car insurance premiums     
# ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (รวมภาษีอากร)
    [Arguments]                 ${partner_reply_warranty_input.voluntary_car_insurance_premiums}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.voluntary_car_insurance_premiums_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.voluntary_car_insurance_premiums_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.voluntary_car_insurance_premiums_textField}       ${partner_reply_warranty_input.voluntary_car_insurance_premiums}

Fill Gross premium
# ค่า พ.ร.บ
    [Arguments]                 ${partner_reply_warranty_input.gross_premium}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.gross_premium_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.gross_premium_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.gross_premium_textField}       ${partner_reply_warranty_input.gross_premium}

Fill Liability to third parties life body health per person       
# ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อคน
    [Arguments]                 ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_person_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_person_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_person_textField}       ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}

Fill Liability to third parties life body health per time
# ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง
    [Arguments]                 ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_time_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_time_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.Liability_to_third_parties_life_body_health_per_time_textField}       ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}

Fill Liability to third party property per time
# ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง
    [Arguments]                 ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.Liability_to_third_party_property_per_time_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.Liability_to_third_party_property_per_time_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.Liability_to_third_party_property_per_time_textField}       ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}

Fill First part damage to third party property per time
# ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง
    [Arguments]                 ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.first_part_damage_to_third_party_property_per_time_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.first_part_damage_to_third_party_property_per_time_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.first_part_damage_to_third_party_property_per_time_textField}       ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}

Fill Coverage amount for vehicle damage                           
# ทุนประกันภัย ความเสียหายต่อรถยนต์
    [Arguments]                 ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.coverage_amount_for_vehicle_damage_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.coverage_amount_for_vehicle_damage_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.coverage_amount_for_vehicle_damage_textField}       ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}

Fill Coverage amount for lost car and fire                        
# ทุนประกันภัย รถยนต์สูญหาย ไฟไหม้
    [Arguments]                 ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.coverage_amount_for_lost_car_and_fire_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.coverage_amount_for_lost_car_and_fire_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.coverage_amount_for_lost_car_and_fire_textField}       ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}

Fill First part of vehicle damage 
# ความเสียหายต่อรถยนต์ส่วนแรก
    [Arguments]                 ${partner_reply_warranty_input.First_part_of_vehicle_damage}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.First_part_of_vehicle_damage_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.First_part_of_vehicle_damage_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.First_part_of_vehicle_damage_textField}       ${partner_reply_warranty_input.First_part_of_vehicle_damage}

Fill Personal accidents death loss of organs and permanent disability     
# อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร
    [Arguments]                 ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_textField}       ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}

Fill Nursing expenses        
# ค่ารักษาพยาบาล
    [Arguments]                 ${partner_reply_warranty_input.nursing_expenses}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.nursing_expenses_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.nursing_expenses_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.nursing_expenses_textField}       ${partner_reply_warranty_input.nursing_expenses}

Fill Driver insurance
# การประกันตัวผู้ขับขี่
    [Arguments]                 ${partner_reply_warranty_input.driver_insurance}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.driver_insurance_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.driver_insurance_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.driver_insurance_textField}       ${partner_reply_warranty_input.driver_insurance}

Fill Number of passengers
# จำนวนผู้โดยสารทั้งหมด (คน)
    [Arguments]                 ${partner_reply_warranty_input.number_of_passengers}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.number_of_passengers_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.number_of_passengers_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.number_of_passengers_textField}       ${partner_reply_warranty_input.number_of_passengers}

Select Inspect car before warranty
# ตรวจสอบรถยนต์ก่อนรับประกัน
    [Arguments]                 ${partner_reply_warranty_input.car_inspection_before_warranty}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-label[contains(text(),'ตรวจสอบรถยนต์ก่อนรับประกัน')]/..//div[@class="mdc-form-field"]/..//label[text()='${partner_reply_warranty_input.car_inspection_before_warranty}']
    SeleniumLibrary.Click Element                    xpath=//mat-label[contains(text(),'ตรวจสอบรถยนต์ก่อนรับประกัน')]/..//div[@class="mdc-form-field"]/..//label[text()='${partner_reply_warranty_input.car_inspection_before_warranty}']

Fill Additional special protection    
# ความคุ้มครองพิเศษเพิ่มเติม
    [Arguments]                 ${partner_reply_warranty_input.additional_special_protection}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.additional_special_protection_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.additional_special_protection_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.additional_special_protection_textField}       ${partner_reply_warranty_input.additional_special_protection}

Fill Insurance conditions
# เงื่อนไขการรับประกันภัย
    [Arguments]                 ${partner_reply_warranty_input.insurance_conditions}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.insurance_conditions_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.insurance_conditions_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.insurance_conditions_textField}       ${partner_reply_warranty_input.insurance_conditions}

Fill Details report
# รายละเอียดแจ้งข้อมูลกลับ
    [Arguments]                 ${partner_reply_warranty_input.details_report}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.details_report_textField}
    SeleniumLibrary.Clear Element Text               ${partner_request_premium_list_details_page.details_report_textField} 
    SeleniumLibrary.Input Text                       ${partner_request_premium_list_details_page.details_report_textField}       ${partner_reply_warranty_input.details_report}

Get "Warranty value" from Replying warranty tab
    # section: รายละเอียดค่าเบี้ยประกัน
    Set Global Variable    ${value_partner_list.campaign_name}                                                          ${partner_reply_warranty_input.campaign_name}
    Set Global Variable    ${value_partner_list.special_campaign}                                                       ${partner_reply_warranty_input.special_campaign}
    Set Global Variable    ${value_partner_list.repair_type}                                                            ${partner_reply_warranty_input.repair_type}
    Set Global Variable    ${value_partner_list.coverage_amount_od}                                                     ${partner_reply_warranty_input.coverage_amount_od}
    Set Global Variable    ${value_partner_list.voluntary_car_insurance_premiums}                                       ${partner_reply_warranty_input.voluntary_car_insurance_premiums}
    Set Global Variable    ${value_partner_list.gross_premium}                                                          ${partner_reply_warranty_input.gross_premium}
    # section: รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ
    Set Global Variable    ${value_partner_list.Liability_to_third_parties_life_body_health_per_person}                 ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}
    Set Global Variable    ${value_partner_list.Liability_to_third_parties_life_body_health_per_time}                   ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}
    Set Global Variable    ${value_partner_list.Liability_to_third_party_property_per_time}                             ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}
    Set Global Variable    ${value_partner_list.first_part_damage_to_third_party_property_per_time}                     ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}
    Set Global Variable    ${value_partner_list.coverage_amount_for_vehicle_damage}                                     ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}
    Set Global Variable    ${value_partner_list.coverage_amount_for_lost_car_and_fire}                                  ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}
    Set Global Variable    ${value_partner_list.First_part_of_vehicle_damage}                                           ${partner_reply_warranty_input.First_part_of_vehicle_damage}
    Set Global Variable    ${value_partner_list.Personal_accidents_death_loss_of_organs_and_permanent_disability}       ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}
    Set Global Variable    ${value_partner_list.nursing_expenses}                                                       ${partner_reply_warranty_input.nursing_expenses}
    Set Global Variable    ${value_partner_list.driver_insurance}                                                       ${partner_reply_warranty_input.driver_insurance}
    Set Global Variable    ${value_partner_list.number_of_passengers}                                                   ${partner_reply_warranty_input.number_of_passengers}
    # section: รายละเอียดข้อกำหนดและเงื่อนไขเพิ่มเติม
    Set Global Variable    ${value_partner_list.car_inspection_before_warranty}                                         ${partner_reply_warranty_input.car_inspection_before_warranty}
    Set Global Variable    ${value_partner_list.additional_special_protection}                                          ${partner_reply_warranty_input.additional_special_protection}
    Set Global Variable    ${value_partner_list.insurance_conditions}                                                   ${partner_reply_warranty_input.insurance_conditions}
    Set Global Variable    ${value_partner_list.details_report}                                                         ${partner_reply_warranty_input.details_report}

# # Insurance Information component
Check "Renewal premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.renewal_premium_type_value}
    ${get_details_renewal_premium_type_value}=   Get Text  ${partner_request_premium_list_details_page.renewal_premium_type_value}
    Should Contain Any    ${get_details_renewal_premium_type_value}      ${value_request_premium.renewal_premium_type}

Check "Old policy number" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.old_policy_number_value}
    ${get_details_old_policy_number_value}=   Get Text  ${partner_request_premium_list_details_page.old_policy_number_value}
    Should Contain Any    ${get_details_old_policy_number_value}      ${value_request_premium.old_policy_number}

Check "Old insure company" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.old_insure_company_value}
    ${get_details_old_insure_company_value}=   Get Text  ${partner_request_premium_list_details_page.old_insure_company_value}
    Should Contain Any    ${get_details_old_insure_company_value}      ${value_request_premium.old_insure_company}

Check "Old campaign expire date" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.old_campaign_expire_date_value}
    ${get_details_old_campaign_expire_date_value}=   Get Text  ${partner_request_premium_list_details_page.old_campaign_expire_date_value}
    Should Contain Any    ${get_details_old_campaign_expire_date_value}      ${value_request_premium.old_campaign_expire_date}    

Check "Campaign effective and expire date" value
    Set Global Variable    ${value_request_premium.campaign_effective_and_expire_date}     ${value_request_premium.campaign_effective_date} - ${value_request_premium.campaign_expire_date}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.campaign_effective_and_expire_date_value}
    ${get_details_campaign_effective_and_expire_date_value}=   Get Text  ${partner_request_premium_list_details_page.campaign_effective_and_expire_date_value}
    Should Contain Any    ${get_details_campaign_effective_and_expire_date_value}      ${value_request_premium.campaign_effective_and_expire_date}

Check "Coverage amount od" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=   Get Text  ${partner_request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=         evaluate       '${get_details_coverage_amount_od_value}'.replace(',','')
    Should Contain Any    ${get_details_coverage_amount_od_value}      ${value_request_premium.coverage_amount_od}

Check "Coverage amount od" value (Warranty case)
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=   Get Text  ${partner_request_premium_list_details_page.coverage_amount_od_value}
    ${get_details_coverage_amount_od_value}=         evaluate       '${get_details_coverage_amount_od_value}'.replace(',','')
    Should Contain Any    ${get_details_coverage_amount_od_value}      ${partner_reply_warranty_input.coverage_amount_od}

Check "Premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.premium_type_value}
    ${get_details_premium_type_value}=   Get Text  ${partner_request_premium_list_details_page.premium_type_value}
    Should Contain Any    ${get_details_premium_type_value}      ${value_request_premium.premium_type}

Check "Repair type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.repair_type_value}
    ${get_details_repair_type_value}=   Get Text  ${partner_request_premium_list_details_page.repair_type_value}
    Should Contain Any    ${get_details_repair_type_value}      ${value_request_premium.repair_type}

Check "Repair type" value (Warranty case)
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.repair_type_value}
    ${get_details_repair_type_value}=   Get Text  ${partner_request_premium_list_details_page.repair_type_value}
    Should Contain Any    ${get_details_repair_type_value}      ${partner_reply_warranty_input.repair_type}

Check "Check premium type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.check_premium_type_value}
    ${get_details_check_premium_type_value}=   Get Text  ${partner_request_premium_list_details_page.check_premium_type_value}
    Should Contain Any    ${get_details_check_premium_type_value}      ${value_request_premium.check_premium_type}

Check "Discount percent" value
    ${Result_discount_percent}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.discount_percent}
    IF  '${Result_discount_percent}' == 'True' or '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
        ${value_request_premium.discount_percent}=         evaluate       '${value_request_premium.discount_percent}'.replace(' ','')
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.discount_percent_value}
        ${get_details_discount_percent_value}=   Get Text  ${partner_request_premium_list_details_page.discount_percent_value}
        Should Contain Any    ${get_details_discount_percent_value}      ${value_request_premium.discount_percent}
    END

Check "Driver1 birthdate" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.driver1_birthdate_value}
    ${get_details_driver1_birthdate_value}=   Get Text  ${partner_request_premium_list_details_page.driver1_birthdate_value}
    Should Contain Any    ${get_details_driver1_birthdate_value}      ${value_request_premium.driver1_birthdate}

Check "Driver2 birthdate" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.driver2_birthdate_value}
    ${get_details_driver2_birthdate_value}=   Get Text  ${partner_request_premium_list_details_page.driver2_birthdate_value}
    Should Contain Any    ${get_details_driver2_birthdate_value}      ${value_request_premium.driver2_birthdate}

# # Question detail component
Check "Question detail" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.question_detail_value}
    ${get_details_question_detail_value}=   Get Text  ${partner_request_premium_list_details_page.question_detail_value}
    Should Contain Any    ${get_details_question_detail_value}      ${value_request_premium.question_detail}

Verify "Header explain" value in Request premium details (Partner)
    ${get_header_explain_value}=   Get Text  ${partner_request_premium_list_details_page.header_explain_value}
    IF  '${value_request_premium.red_label}' == 'ป้ายแดง'
        @{check_header_explain_value}   Create List    ${value_request_premium.UW_no}   ${value_request_premium.red_label}
        FOR    ${header_explain_value}    IN    @{check_header_explain_value}
            Should Contain Any    ${get_header_explain_value}      ${header_explain_value}
        END
    ELSE
        @{check_header_explain_value}   Create List    ${value_request_premium.UW_no}   ${input_form.license_no}
        FOR    ${header_explain_value}    IN    @{check_header_explain_value}
            Should Contain Any    ${get_header_explain_value}      ${header_explain_value}
        END
    END

# # Car Information component
Check "Brand/Model" value
    Set Global Variable    ${value_partner_request_premium.brand_and_model}             ${input_form.brand_name} / ${input_form.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.brand_and_model_value}
    ${get_details_brand/model_value}=   Get Text  ${partner_request_premium_list_details_page.brand_and_model_value}
    Should Contain Any    ${get_details_brand/model_value}      ${value_partner_request_premium.brand_and_model}

Check "Car power" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.car_power_value}
    ${get_details_car_power_value}=   Get Text  ${partner_request_premium_list_details_page.car_power_value}
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
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.license_no_value}
        ${get_details_license_no_value}=   Get Text  ${partner_request_premium_list_details_page.license_no_value}
        Should Contain Any    ${get_details_license_no_value}      ${value_request_premium.license_no_OR_red_label}
    ELSE
        Should Contain Any    ${get_details_license_no_value}      -
    END

Check "Car year" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.car_year_value}
    ${get_details_car_year_value}=   Get Text  ${partner_request_premium_list_details_page.car_year_value}
    Should Contain Any    ${get_details_car_year_value}      ${value_request_premium.car_year}

Check "Engine number" value
    ${Result_engine_number}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.engine_number}
    IF  '${Result_engine_number}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.engine_number_value}
        ${get_details_engine_number_value}=   Get Text  ${partner_request_premium_list_details_page.engine_number_value}
        Should Contain Any    ${get_details_engine_number_value}      ${value_request_premium.engine_number}
    ELSE
        Should Contain Any    ${get_details_engine_number_value}      -
    END

Check "Chassis number" value
    ${Result_chassis_number}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.chassis_number}
    IF  '${Result_chassis_number}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.chassis_number_value}
        ${get_details_chassis_number_value}=   Get Text  ${partner_request_premium_list_details_page.chassis_number_value}
        Should Contain Any    ${get_details_chassis_number_value}      ${value_request_premium.chassis_number}
    ELSE
        Should Contain Any    ${get_details_chassis_number_value}      -
    END

Check "Car color" value
    IF  '${value_request_premium.car_color}' != 'ไม่ระบุ' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.car_color_value}
        ${get_details_car_color_value}=   Get Text  ${partner_request_premium_list_details_page.car_color_value}
        Should Contain Any    ${get_details_car_color_value}      ${value_request_premium.car_color}
    ELSE
        Should Contain Any    ${get_details_car_color_value}      -
    END

Check "Car type" value
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.car_type_value}
    ${get_details_car_type_value}=   Get Text  ${partner_request_premium_list_details_page.car_type_value}
    Should Contain Any    ${get_details_car_type_value}      ${value_request_premium.car_type}

Check "Special equipment" value
    @{column_special_equipment_values}    Create List      ${value_request_premium.special_equipment}   ${input_form.special_equipment_detail}
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.special_equipment_value}
    ${get_details_special_equipment_value}=   Get Text  ${partner_request_premium_list_details_page.special_equipment_value}
    FOR    ${special_equipment_list}    IN    @{column_special_equipment_values}
        Should Contain Any    ${get_details_special_equipment_value}      ${special_equipment_list}
    END

Check "Car type details" value
    ${Result_car_type_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.car_type_detail}
    IF  '${Result_car_type_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_details_page.car_type_detail_value}
        ${get_details_car_type_detail_value}=   Get Text  ${partner_request_premium_list_details_page.car_type_detail_value}
        Should Contain Any    ${get_details_car_type_detail_value}      ${value_request_premium.car_type_detail}
    ELSE
        Should Contain Any    ${get_details_car_type_detail_value}      -
    END
