*** Variables ***
# # element xpath variable
# topic-comment
${partner_request_premium_list_result_page.topic_comment_value}                                                             xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[1]/div/p
${partner_request_premium_list_result_page.header_explain_value}                                                            xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-car-info-card/div/div/div/div[1]/div/p
# # premium result table
${partner_request_premium_list_result_page.campaign_name_detail_value}                                                      xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[1]/td[2]
${partner_request_premium_list_result_page.special_campaign_detail_value}                                                   xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[2]/td[2]
${partner_request_premium_list_result_page.premium_type_detail_value}                                                       xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[3]/td[2]
${partner_request_premium_list_result_page.repair_type_detail_value}                                                        xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[4]/td[2]
${partner_request_premium_list_result_page.coverage_amount_od_detail_value}                                                 xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[5]/td[2]
${partner_request_premium_list_result_page.voluntary_car_insurance_premiums_detail_value}                                   xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[6]/td[2]

${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_person_detail_value}             xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อคน')]/../td[2]
${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_time_detail_value}               xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง')]/../td[2]
${partner_request_premium_list_result_page.Liability_to_third_party_property_per_time_detail_value}                         xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง')]/../td[2]
${partner_request_premium_list_result_page.first_part_damage_to_third_party_property_per_time_detail_value}                 xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง')]/../td[2]
${partner_request_premium_list_result_page.coverage_amount_for_vehicle_damage_detail_value}                                 xpath=//tr[@class="tobody-tr-title"]/..//tr[12]/*[2]
${partner_request_premium_list_result_page.coverage_amount_for_lost_car_and_fire_detail_value}                              xpath=//tr[@class="tobody-tr-title"]/..//tr[13]/*[2]
${partner_request_premium_list_result_page.First_part_of_vehicle_damage_detail_value}                                       xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[14]/td[2]
${partner_request_premium_list_result_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_detail_value}   xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร (ผู้ขับขี่ รวมผู้โดยสาร)')]/../td[2]
${partner_request_premium_list_result_page.nursing_expenses_detail_value}                                                   xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ค่ารักษาพยาบาล (ผู้ขับขี่ รวมผู้โดยสาร)')]/../td[2]
${partner_request_premium_list_result_page.driver_insurance_detail_value}                                                   xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'การประกันตัวผู้ขับขี่')]/../td[2]
${partner_request_premium_list_result_page.car_inspection_before_warranty_detail_value}                                     xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ตรวจสอบรถยนต์ก่อนรับประกัน')]/../td[2]
${partner_request_premium_list_result_page.gross_premium_detail_value}                                                      xpath=//tr[@class="tobody-tr-title"]/..//td[contains(text(),'ค่า พ.ร.บ.')]/../td[2]
${partner_request_premium_list_result_page.total_gross_premium_detail_value}                                                xpath=/html/body/app-root/app-template/div[3]/app-pc-view-premium/div/div/app-premium-info-card/div/div/div/div[2]/div[2]/div/table/tbody/tr[22]/td[2]

# # text variable
# element description

*** Keywords ***

Verify "Topic comment" value in Request premium results (Partner)
    ${get_topic_comment_value}=   Get Text  ${partner_request_premium_list_result_page.topic_comment_value}
    IF  '${value_request_premium.red_label}' == 'ป้ายแดง'
        @{check_topic_comment_value}   Create List    ${value_request_premium.UW_no}   ${value_request_premium.red_label}
        FOR    ${topic_comment_value}    IN    @{check_topic_comment_value}
            Should Contain Any    ${get_topic_comment_value}      ${topic_comment_value}
        END
    ELSE
        @{check_topic_comment_value}   Create List    ${value_request_premium.UW_no}   ${input_form.license_no}
        FOR    ${topic_comment_value}    IN    @{check_topic_comment_value}
            Should Contain Any    ${get_topic_comment_value}      ${topic_comment_value}
        END
    END

Verify "Header explain" value in Request premium details (Partner)
    ${get_header_explain_value}=   Get Text  ${partner_request_premium_list_result_page.header_explain_value}
    Should Contain Any    ${get_header_explain_value}      ${value_request_premium.UW_no}
    IF  '${value_request_premium.red_label}' == 'ป้ายแดง'
        Should Contain Any    ${get_header_explain_value}      ${value_request_premium.red_label}
    # ELSE
    #     Should Contain Any    ${get_header_explain_value}      ${value_request_premium.license_no}
    END

Check "Campaign name" value
# แคมเปญ
    ${Result_campaign_name_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.campaign_name}
    IF  '${Result_campaign_name_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.campaign_name_detail_value}
        ${get_details_campaign_name_value}=   Get Text  ${partner_request_premium_list_result_page.campaign_name_detail_value}
        Should Contain Any    ${get_details_campaign_name_value}      ${value_partner_list.campaign_name}
    END

Check "Special campaign" value
# โครงการพิเศษ
    ${Result_special_campaign_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.special_campaign}
    IF  '${Result_special_campaign_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.special_campaign_detail_value}
        ${get_details_special_campaign_value}=   Get Text  ${partner_request_premium_list_result_page.special_campaign_detail_value}
        Should Contain Any    ${get_details_special_campaign_value}      ${value_partner_list.special_campaign}
    END

Check "Premium type" value
# ประเภทประกันภัย
    ${Result_premium_type_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_request_premium.premium_type}
    IF  '${Result_premium_type_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.premium_type_detail_value}
        ${get_details_premium_type_value}=   Get Text  ${partner_request_premium_list_result_page.premium_type_detail_value}
        Should Contain Any    ${get_details_premium_type_value}      ${value_request_premium.premium_type}
    END

Check "Repair type" value
# การจัดซ่อม
    ${Result_repair_type_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.repair_type}
    IF  '${Result_repair_type_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.repair_type_detail_value}
        ${get_details_repair_type_value}=   Get Text  ${partner_request_premium_list_result_page.repair_type_detail_value}
        Should Contain Any    ${get_details_repair_type_value}      ${value_partner_list.repair_type}
    END

Check "Coverage amount od" value
# ทุนประกันภัย
    ${Result_coverage_amount_od_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.coverage_amount_od}
    IF  '${Result_coverage_amount_od_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.coverage_amount_od_detail_value}
        ${get_details_coverage_amount_od_value}=   Get Text  ${partner_request_premium_list_result_page.coverage_amount_od_detail_value}
        ${replace_coverage_amount_od_value}=         evaluate       '${get_details_coverage_amount_od_value}'.replace(',','') if ',' in '${get_details_coverage_amount_od_value}' else '${get_details_coverage_amount_od_value}'
        Should Contain Any    ${replace_coverage_amount_od_value}      ${value_partner_list.coverage_amount_od}
    END

Check "Voluntary car insurance premiums" value
# ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร)
    ${Result_voluntary_car_insurance_premiums_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.voluntary_car_insurance_premiums}
    IF  '${Result_voluntary_car_insurance_premiums_detail}' == 'True' 
        ${value_partner_list.voluntary_car_insurance_premiums}=     Evaluate    round(${value_partner_list.voluntary_car_insurance_premiums}, 2)
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.voluntary_car_insurance_premiums_detail_value}
        ${get_details_voluntary_car_insurance_premiums_value}=   Get Text  ${partner_request_premium_list_result_page.voluntary_car_insurance_premiums_detail_value}
        ${replace_voluntary_car_insurance_premiums_value}=         evaluate       '${get_details_voluntary_car_insurance_premiums_value}'.replace(',','') if ',' in '${get_details_voluntary_car_insurance_premiums_value}' else '${get_details_voluntary_car_insurance_premiums_value}'
        Should Be Equal As Numbers    ${replace_voluntary_car_insurance_premiums_value}      ${value_partner_list.voluntary_car_insurance_premiums}
    END

Check "Liability to third parties life body health per person" value    
# ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อคน
    ${Result_Liability_to_third_parties_life_body_health_per_person_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.Liability_to_third_parties_life_body_health_per_person}
    IF  '${Result_Liability_to_third_parties_life_body_health_per_person_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_person_detail_value}
        ${get_details_Liability_to_third_parties_life_body_health_per_person_value}=   Get Text  ${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_person_detail_value}
        ${replace_Liability_to_third_parties_life_body_health_per_person_value}=         evaluate       '${get_details_Liability_to_third_parties_life_body_health_per_person_value}'.replace(',','') if ',' in '${get_details_Liability_to_third_parties_life_body_health_per_person_value}' else '${get_details_Liability_to_third_parties_life_body_health_per_person_value}'
        Should Contain Any    ${replace_Liability_to_third_parties_life_body_health_per_person_value}      ${value_partner_list.Liability_to_third_parties_life_body_health_per_person}
    END

Check "Liability to third parties life body health per time" value    
# ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง
    ${Result_Liability_to_third_parties_life_body_health_per_time_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.Liability_to_third_parties_life_body_health_per_time}
    IF  '${Result_Liability_to_third_parties_life_body_health_per_time_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_time_detail_value}
        ${get_details_Liability_to_third_parties_life_body_health_per_time_value}=   Get Text  ${partner_request_premium_list_result_page.Liability_to_third_parties_life_body_health_per_time_detail_value}
        ${replace_Liability_to_third_parties_life_body_health_per_time_value}=         evaluate       '${get_details_Liability_to_third_parties_life_body_health_per_time_value}'.replace(',','') if ',' in '${get_details_Liability_to_third_parties_life_body_health_per_time_value}' else '${get_details_Liability_to_third_parties_life_body_health_per_time_value}'
        Should Contain Any    ${replace_Liability_to_third_parties_life_body_health_per_time_value}      ${value_partner_list.Liability_to_third_parties_life_body_health_per_time}
    END

Check "Liability to third party property per time" value    
# ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง
    ${Result_Liability_to_third_party_property_per_time_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.Liability_to_third_party_property_per_time}
    IF  '${Result_Liability_to_third_party_property_per_time_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.Liability_to_third_party_property_per_time_detail_value}
        ${get_details_Liability_to_third_party_property_per_time_value}=   Get Text  ${partner_request_premium_list_result_page.Liability_to_third_party_property_per_time_detail_value}
        ${replace_Liability_to_third_party_property_per_time_value}=         evaluate       '${get_details_Liability_to_third_party_property_per_time_value}'.replace(',','') if ',' in '${get_details_Liability_to_third_party_property_per_time_value}' else '${get_details_Liability_to_third_party_property_per_time_value}'
        Should Contain Any    ${replace_Liability_to_third_party_property_per_time_value}      ${value_partner_list.Liability_to_third_party_property_per_time}
    END

Check "First part damage to third party property per time" value    
# ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง
    ${Result_first_part_damage_to_third_party_property_per_time_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.first_part_damage_to_third_party_property_per_time}
    IF  '${Result_first_part_damage_to_third_party_property_per_time_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.first_part_damage_to_third_party_property_per_time_detail_value}
        ${get_details_first_part_damage_to_third_party_property_per_time_value}=   Get Text  ${partner_request_premium_list_result_page.first_part_damage_to_third_party_property_per_time_detail_value}
        ${replace_first_part_damage_to_third_party_property_per_time_value}=         evaluate       '${get_details_first_part_damage_to_third_party_property_per_time_value}'.replace(',','') if ',' in '${get_details_first_part_damage_to_third_party_property_per_time_value}' else '${get_details_first_part_damage_to_third_party_property_per_time_value}'
        Should Contain Any    ${replace_first_part_damage_to_third_party_property_per_time_value}      ${value_partner_list.first_part_damage_to_third_party_property_per_time}
    END

Check "Coverage amount for vehicle damage" value    
# ทุนประกันภัย ความเสียหายต่อรถยนต์
    ${Result_coverage_amount_for_vehicle_damage_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.coverage_amount_for_vehicle_damage}
    IF  '${Result_coverage_amount_for_vehicle_damage_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.coverage_amount_for_vehicle_damage_detail_value}
        ${get_details_coverage_amount_for_vehicle_damage_value}=   Get Text  ${partner_request_premium_list_result_page.coverage_amount_for_vehicle_damage_detail_value}
        ${replace_coverage_amount_for_vehicle_damage_value}=         evaluate       '${get_details_coverage_amount_for_vehicle_damage_value}'.replace(',','') if ',' in '${get_details_coverage_amount_for_vehicle_damage_value}' else '${get_details_coverage_amount_for_vehicle_damage_value}'
        Should Contain Any    ${replace_coverage_amount_for_vehicle_damage_value}      ${value_partner_list.coverage_amount_for_vehicle_damage}
    END

Check "Coverage amount for lost car and fire" value    
# ทุนประกันภัย รถยนต์สูญหาย ไฟไหม้
    ${Result_coverage_amount_for_lost_car_and_fire_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.coverage_amount_for_lost_car_and_fire}
    IF  '${Result_coverage_amount_for_lost_car_and_fire_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.coverage_amount_for_lost_car_and_fire_detail_value}
        ${get_details_coverage_amount_for_lost_car_and_fire_value}=   Get Text  ${partner_request_premium_list_result_page.coverage_amount_for_lost_car_and_fire_detail_value}
        ${replace_coverage_amount_for_lost_car_and_fire_value}=         evaluate       '${get_details_coverage_amount_for_lost_car_and_fire_value}'.replace(',','') if ',' in '${get_details_coverage_amount_for_lost_car_and_fire_value}' else '${get_details_coverage_amount_for_lost_car_and_fire_value}'
        Should Contain Any    ${replace_coverage_amount_for_lost_car_and_fire_value}      ${value_partner_list.coverage_amount_for_lost_car_and_fire}
    END

Check "First part of vehicle damage" value    
# ความเสียหายต่อรถยนต์ส่วนแรก
    ${Result_First_part_of_vehicle_damage_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.First_part_of_vehicle_damage}
    IF  '${Result_First_part_of_vehicle_damage_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.First_part_of_vehicle_damage_detail_value}
        ${get_details_First_part_of_vehicle_damage_value}=   Get Text  ${partner_request_premium_list_result_page.First_part_of_vehicle_damage_detail_value}
        ${replace_First_part_of_vehicle_damage_value}=         evaluate       '${get_details_First_part_of_vehicle_damage_value}'.replace(',','') if ',' in '${get_details_First_part_of_vehicle_damage_value}' else '${get_details_First_part_of_vehicle_damage_value}'
        Should Contain Any    ${replace_First_part_of_vehicle_damage_value}      ${value_partner_list.First_part_of_vehicle_damage}
    END

Check "Personal accidents death loss of organs and permanent disability" value    
# อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร (ผู้ขับขี่ รวมผู้โดยสาร)
    ${Result_Personal_accidents_death_loss_of_organs_and_permanent_disability_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.Personal_accidents_death_loss_of_organs_and_permanent_disability}
    IF  '${Result_Personal_accidents_death_loss_of_organs_and_permanent_disability_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_detail_value}
        ${get_details_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}=   Get Text  ${partner_request_premium_list_result_page.Personal_accidents_death_loss_of_organs_and_permanent_disability_detail_value}
        ${replace_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}=         evaluate       '${get_details_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}'.replace(',','') if ',' in '${get_details_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}' else '${get_details_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}'
        Should Contain Any    ${replace_Personal_accidents_death_loss_of_organs_and_permanent_disability_value}      ${value_partner_list.Personal_accidents_death_loss_of_organs_and_permanent_disability}
    END

Check "Nursing expenses" value    
# ค่ารักษาพยาบาล
    ${Result_nursing_expenses_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.nursing_expenses}
    IF  '${Result_nursing_expenses_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.nursing_expenses_detail_value}
        ${get_details_nursing_expenses_value}=   Get Text  ${partner_request_premium_list_result_page.nursing_expenses_detail_value}
        ${replace_nursing_expenses_value}=         evaluate       '${get_details_nursing_expenses_value}'.replace(',','') if ',' in '${get_details_nursing_expenses_value}' else '${get_details_nursing_expenses_value}'
        Should Contain Any    ${replace_nursing_expenses_value}      ${value_partner_list.nursing_expenses}
    END

Check "Driver insurance" value    
# การประกันตัวผู้ขับขี่
    ${Result_driver_insurance_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.driver_insurance}
    IF  '${Result_driver_insurance_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.driver_insurance_detail_value}
        ${get_details_driver_insurance_value}=   Get Text  ${partner_request_premium_list_result_page.driver_insurance_detail_value}
        ${replace_driver_insurance_value}=         evaluate       '${get_details_driver_insurance_value}'.replace(',','') if ',' in '${get_details_driver_insurance_value}' else '${get_details_driver_insurance_value}'
        Should Contain Any    ${replace_driver_insurance_value}      ${value_partner_list.driver_insurance}
    END

Check "Inspect car before warranty" value  
# ตรวจสอบรถยนต์ก่อนรับประกัน
    ${Result_car_inspection_before_warranty_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.car_inspection_before_warranty}
    IF  '${Result_car_inspection_before_warranty_detail}' == 'True' 
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.car_inspection_before_warranty_detail_value}
        ${get_details_car_inspection_before_warranty_value}=   Get Text  ${partner_request_premium_list_result_page.car_inspection_before_warranty_detail_value}
        Should Contain Any    ${get_details_car_inspection_before_warranty_value}      ${value_partner_list.car_inspection_before_warranty}
    END

Check "Gross premium" value  
# ค่า พ.ร.บ.
    ${Result_gross_premium_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.gross_premium}
    IF  '${Result_gross_premium_detail}' == 'True' 
        ${value_partner_list.gross_premium}=     Evaluate    round(${value_partner_list.gross_premium}, 2)
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.gross_premium_detail_value}
        ${get_details_gross_premium_value}=   Get Text  ${partner_request_premium_list_result_page.gross_premium_detail_value}
        ${replace_gross_premium_value}=         evaluate       '${get_details_gross_premium_value}'.replace(',','') if ',' in '${get_details_gross_premium_value}' else '${get_details_gross_premium_value}'
        Should Be Equal As Numbers    ${replace_gross_premium_value}      ${value_partner_list.gross_premium}
    END

Check "Total gross premium value" value 
# รวมยอดค่าเบี้ยประกันภัย และ พ.ร.บ.
    ${get_gross_premium_value}=    convert to number   ${value_partner_list.gross_premium}     
    ${get_voluntary_car_insurance_premiums_value}=    convert to number   ${value_partner_list.voluntary_car_insurance_premiums}
    # ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร) + ค่า พ.ร.บ.
    ${total_gross_premium_value}=     Evaluate    ${get_voluntary_car_insurance_premiums_value} + ${get_gross_premium_value}
    ${round_total_gross_premium_value}=     Evaluate    round(${total_gross_premium_value}, 2)
    # get value and compare with calculating value Total gross premium
    ${Result_gross_premium_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.gross_premium}
    ${Result_voluntary_car_insurance_premiums_detail}=       Run Keyword And Return Status    Should Not Be Empty       ${value_partner_list.voluntary_car_insurance_premiums}
    IF  '${Result_gross_premium_detail}' == 'True' and '${Result_voluntary_car_insurance_premiums_detail}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${partner_request_premium_list_result_page.total_gross_premium_detail_value}
        ${get_details_total_gross_premium_detail_value}=   Get Text  ${partner_request_premium_list_result_page.total_gross_premium_detail_value}
        ${replace_total_gross_premium_detail_value}=         evaluate       '${get_details_total_gross_premium_detail_value}'.replace(',','') if ',' in '${get_details_total_gross_premium_detail_value}' else '${get_details_total_gross_premium_detail_value}'
        Should Be Equal As Numbers    ${replace_total_gross_premium_detail_value}      ${round_total_gross_premium_value}
    END
