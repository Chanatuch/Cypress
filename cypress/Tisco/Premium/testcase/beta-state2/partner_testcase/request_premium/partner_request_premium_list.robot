*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to Partner Check Premium application    ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.partner_url}           https://user-management.tbeta.co/partner-login/login?ptid=Insurance_Portal
${value.partner_username}      lmgStaff1@tisco.co.th
${value.partner_password}      P@$$w0rd01
# ${value.partner_search}        app_isp_partner_state2
${value.partner_search}        app_isp_partner_state2_rds

# # xpath of "okta Beta" login
${xpath.partner_username_inputField}      xpath=//input[@id="username"]
${xpath.partner_password_inputField}      xpath=//input[@id="password"]
${xpath.submit_username_button}           xpath=//button[@data-testid="submit-username"]
${xpath.password_login_button}            xpath=//button[@data-testid="password-login-btn"]
${xpath.sign_in_button}                   xpath=//button[@data-testid="submit-username"]
${xpath.partner_search_textField}         xpath=//input[@name="search"]


# # value input of Parter request premium list
${partner_input_list.policy_number}             12090-61100/กธ/053930-10
${partner_input_list.license_no}                5กบ 6297
${partner_input_list.customer_first_name}       ชื่อ 7940685
${partner_input_list.customer_last_name}        นามสกุล 7940685
${partner_input_list.uw_no}                     UW-124011800015
${partner_input_list.year_range_date}           2024
${partner_input_list.month_range_date}          January
${partner_input_list.start_day_range_date}      1
${partner_input_list.end_day_range_date}        31
# # value input of Renewal premium type
@{partner_input_list.renewal_premium_type}      ต่ออายุ   โอนย้าย   ลูกค้าใหม่
@{partner_input_list.check_premium_type}        ด่วน   ปกติ
@{partner_input_list.request_premium_status}    รอดำเนินการ   รอประกันตอบกลับ   ขอเอกสารเพิ่มเติม   รับประกัน   ไม่รับประกัน   เกินกำหนดรอบเช็คเบี้ย   ถูกยกเลิก
# # value input of reply request premium
${partner_input_list.cancel_comment}                        ขอยกเลิกรายการสอบถามเบี้ยนี้
${partner_input_list.request_additional_info_comment}       ขอเอกสารเพิ่มเติมครับ
${partner_input_list.not_warranted_comment}                 ขอไม่อนุมัติรายการสอบถามเบี้ยนี้
# รับประกัน 
# section: รายละเอียดค่าเบี้ยประกัน
${partner_reply_warranty_input.campaign_name}                      แคมเปญทิสโก้
${partner_reply_warranty_input.special_campaign}                   MEGA DEALER
${partner_reply_warranty_input.repair_type}                        ซ่อมศูนย์
${partner_reply_warranty_input.coverage_amount_od}                 900000
${partner_reply_warranty_input.voluntary_car_insurance_premiums}   154824
${partner_reply_warranty_input.gross_premium}                      324.79
# section: รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ
${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}             12335
${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}               15486
${partner_reply_warranty_input.Liability_to_third_party_property_per_time}                         3548
${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}                 29858
${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}                                 900000
${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}                              900000
${partner_reply_warranty_input.First_part_of_vehicle_damage}                                       670000
${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}   45200
${partner_reply_warranty_input.nursing_expenses}                                                   150000
${partner_reply_warranty_input.driver_insurance}                                                   250000
${partner_reply_warranty_input.number_of_passengers}                                               3
# section: รายละเอียดข้อกำหนดและเงื่อนไขเพิ่มเติม
${partner_reply_warranty_input.car_inspection_before_warranty}                                     ตรวจ
${partner_reply_warranty_input.additional_special_protection}                                      ความคุ้มครองพิเศษเพิ่มเติม
${partner_reply_warranty_input.insurance_conditions}                                               เงื่อนไขการรับประกันภัย
${partner_reply_warranty_input.details_report}                                                     รายละเอียดแจ้งข้อมูลกลับ

# |||||-----------------------------------------------------------------------------------------------------------------------------------|||||
# # # ***** request premium value for tisco flow using in partner flow *****
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}               xpath=//input[@id="okta-signin-username"]
${xpath.password_inputField}            xpath=//input[@id="okta-signin-password"]
${xpath.tisco_signIn_button}            xpath=//input[@id="okta-signin-submit"]
# ${value.checkPremium}                   1269-Insurance Sale Portal-Beta_State2
${value.checkPremium}                   (RDBMS) 1269-Insurance Quotation System-Beta_State2
# # value input of request premium form
${input_form.renewal_premium_type_renew}           ต่ออายุ
${input_form.renewal_premium_type_new}             โอนย้าย
${input_form.renewal_premium_type_renew_and_new}   ต่ออายุและโอนย้าย
${input_form.renewal_premium_type_new_customer}    ลูกค้าใหม่
# ส่วนที่ 1 - ข้อมูลรถยนต์
${input_form.assured_name}                 แช
${input_form.assured_surname}              ซูบิน
${input_form.license_no}                   สวอส 250
${input_form.red_label}                    ป้ายแดง          # เนื่องจาก ป้ายแดง เป็น check box ถ้าเลือก ให้พิมพ์ "ป้ายแดง" / ถ้าไม่เลือก ไม่ต้องใส่ค่า
${input_form.car_year}                     2023
${input_form.brand_name}                   TOYOTA
${input_form.main_model}                   HILUX REVO DOUBLE CAB    
${input_form.sub_brand}                    HILUX REVO DOUBLE CAB 2.4
${input_form.car_type}                     รถยนต์นั่ง-ส่วนบุคคล
${input_form.car_power}                    > 2,000 CC (9999)
${input_form.car_type_detail}              ลักษณะการใช้งานเพิ่มเติม 8 สูบ 324 แรงม้า แรงบิด 2500 n/m
${input_form.chassis_number}               เลขถัง 329
${input_form.engine_number}                เลขเครื่อง CW778
${input_form.special_equipment}            มี
${input_form.special_equipment_detail}     ระบุอุปกรณ์ตกแต่งพิเศษ (ถ้ามี) กันชน carbon fibre
${input_form.car_color}                    ส้ม
${input_form.sale_channel}                 TISCO Insure
# ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
${input_form.old_policy_number}                กรมธรรม์ 1712
${input_form.old_insure_company}               กรุงเทพประกันภัย
${input_form.year_old_campaign_expire_date}    2023
${input_form.month_old_campaign_expire_date}   October
${input_form.day_old_campaign_expire_date}     17
${input_form.year_campaign_effective_date}     2024
${input_form.month_campaign_effective_date}    January
${input_form.day_campaign_effective_date}      30
${input_form.year_campaign_expire_date}        2024
${input_form.month_campaign_expire_date}       December
${input_form.day_campaign_expire_date}         2
${input_form.premium_type}                     ประเภท 1
${input_form.coverage_amount_od}               730000
${input_form.repair_type}                      อู่ทั่วไป
# # ตัวเลือกขั้นสูง
${input_form.year_driver1_birthday}            1998
${input_form.month_driver1_birthday}           December
${input_form.day_driver1_birthday}             17
${input_form.year_driver2_birthday}            1920
${input_form.month_driver2_birthday}           August
${input_form.day_driver2_birthday}             20
${input_form.discount_percent}                 30 %
# ส่วนที่ 3 - คำถามสอบถามเบี้ยไปยังบริษัทประกัน
@{input_form.specify_insure_company}                     แอลเอ็มจี ประกันภัย
${input_form.check_premium_type}                         ด่วน
${input_form.question_set_for_renew}                     มีเคลมเพิ่มวันที่ …… ขอupdateเบี้ยต่ออายุ
${input_form.question_detail_for_renew}                  มีเคลมเพิ่มวันที่ 30 ตุลาคม 2566 ขอupdateเบี้ยต่ออายุ
${input_form.question_set_for_new_customer_or_new}       เบี้ยป้ายแดง/ซื้อสด ราคา …… บาท ขอเช็คเบี้ยปีต่ออายุ,ทุนประกัน,วันคุ้มครองกธ./พรบ,รายละเอียดความคุ้มครอง
${input_form.question_detail_for_new_customer_or_new}    เบี้ยป้ายแดง/ซื้อสด ราคา 452225 บาท ขอเช็คเบี้ยปีต่ออายุ,ทุนประกัน,วันคุ้มครองกธ./พรบ,รายละเอียดความคุ้มครอง
# |||||-----------------------------------------------------------------------------------------------------------------------------------|||||

*** Test Cases ***
# # ||----- Searching draft flow -----||
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย เลขกรมธรรม์
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "Policy number"   ${partner_input_list.policy_number}
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย เลขทะเบียนรถยนต์
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "License no"      ${partner_input_list.license_no}
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย ผู้เอาประกันภัย
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "Customer"        ${partner_input_list.customer_first_name}   ${partner_input_list.customer_last_name}
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย UW No.
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."          ${partner_input_list.uw_no}
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย เลือกวันที่
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "Range date"      ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
RequestPremiumList_Searchingflow(Partner) - ค้นหารายการสอบถามเบี้ย ฝั่งประกัน โดย ค้นหารายการ ทุกๆ Field
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "All field"       ${partner_input_list.policy_number}   ${partner_input_list.license_no}   ${partner_input_list.customer_first_name}   ${partner_input_list.customer_last_name}   ${partner_input_list.uw_no}   ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
# # ||----- Filter by Renewal premium type flow -----||
RequestPremiumList_FilterRenewalPremiumTypeflow(Partner) - ฟิลเตอร์รายการสอบถามเบี้ย โดย "ประเภทเช็คเบี้ย"
    partner_request_premium_list_feature.(Partner)Filter request premium list by "Renewal premium type" type filter button      @{partner_input_list.renewal_premium_type}
# # ||----- Filter by Check premium type flow -----||
RequestPremiumList_FilterCheckPremiumTypeflow(Partner) - ฟิลเตอร์รายการสอบถามเบี้ย โดย "รูปแบบเช็คเบี้ย"
    partner_request_premium_list_feature.(Partner)Filter request premium list by "Check premium type" type filter button        @{partner_input_list.check_premium_type}
# # ||----- Filter by Request premium status flow -----||
RequestPremiumList_FilterCheckPremiumTypeflow(Partner) - ฟิลเตอร์รายการสอบถามเบี้ย โดย "สถานะเอกสาร"
    partner_request_premium_list_feature.(Partner)Filter request premium list by "Request premium status" type filter button    @{partner_input_list.request_premium_status}
# # ||----- Replying request premium flow -----||
RequestPremiumList_ReplyRequestPremiumflow(Partner) - ตอบกลับ รายการสอบถามเบี้ย โดย "ยกเลิก"
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                            ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                       ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                            ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                           ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company      ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers
    # replying request premium flow by Partner
    common.Access to Partner Check Premium application                                                      ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                  ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Reply" in Action button
    partner_request_premium_list_details_page.Click "Cancel Tab" button
    partner_request_premium_list_feature.Fill & Send Reply comment                                          ${partner_input_list.cancel_comment}
    partner_request_premium_list_details_page.Verify "Cancel request premium" modal and Close "Successfully replying" modal

RequestPremiumList_ReplyRequestPremiumflow(Partner) - ตอบกลับ รายการสอบถามเบี้ย โดย "ข้อมูลเพิ่มเติม"
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                            ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                       ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                            ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                           ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company      ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers
    # replying request premium flow by Partner
    common.Access to Partner Check Premium application                                                      ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                  ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Reply" in Action button
    partner_request_premium_list_details_page.Click "Request additional info Tab" button
    partner_request_premium_list_feature.Fill & Send Reply comment                                          ${partner_input_list.request_additional_info_comment}
    partner_request_premium_list_details_page.Verify "Cancel request premium" modal and Close "Successfully replying" modal

RequestPremiumList_ReplyRequestPremiumflow(Partner) - ตอบกลับ รายการสอบถามเบี้ย โดย "ไม่รับประกัน"
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                            ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                       ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                            ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                           ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company      ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers
    # replying request premium flow by Partner
    common.Access to Partner Check Premium application                                                      ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                  ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Reply" in Action button
    partner_request_premium_list_details_page.Click "Not Warranted Tab" button
    partner_request_premium_list_feature.Fill & Send Reply comment                                          ${partner_input_list.not_warranted_comment}
    partner_request_premium_list_details_page.Verify "Not warranted request premium" modal and Close "Successfully replying" modal

RequestPremiumList_ReplyRequestPremiumflow(Partner) - ตอบกลับ รายการสอบถามเบี้ย โดย "รับประกัน"
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                                ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                           ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                               ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company          ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers    
    # replying request premium flow by Partner
    common.Access to Partner Check Premium application                                                          ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Reply" in Action button
    partner_request_premium_list_details_page.Click "Warranty Tab" button
    partner_request_premium_list_feature.Fill (Warranty) Section: Insurance premium details                     ${partner_reply_warranty_input.campaign_name}   ${partner_reply_warranty_input.special_campaign}   ${partner_reply_warranty_input.repair_type}   ${partner_reply_warranty_input.coverage_amount_od}   ${partner_reply_warranty_input.voluntary_car_insurance_premiums}   ${partner_reply_warranty_input.gross_premium}
    partner_request_premium_list_feature.Fill (Warranty) Section: Details of voluntary car insurance            ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}   ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}   ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}   ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}   ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}   ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}   ${partner_reply_warranty_input.First_part_of_vehicle_damage}   ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}   ${partner_reply_warranty_input.nursing_expenses}   ${partner_reply_warranty_input.driver_insurance}   ${partner_reply_warranty_input.number_of_passengers}
    partner_request_premium_list_feature.Fill (Warranty) Section: Additional details of terms and conditions    ${partner_reply_warranty_input.car_inspection_before_warranty}   ${partner_reply_warranty_input.additional_special_protection}   ${partner_reply_warranty_input.insurance_conditions}   ${partner_reply_warranty_input.details_report}
    partner_request_premium_list_details_page.Get "Warranty value" from Replying warranty tab
    partner_request_premium_list_details_page.Click "Reply comment" button
    partner_request_premium_list_details_page.Click "Confirm reply" button
    partner_request_premium_list_details_page.Verify "Warranty request premium" modal and Close "Successfully replying" modal

# # ||----- Action button by status flow -----||
RequestPremiumList_ActionButtonflow(Partner) - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รอดำเนินการ"
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                                ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                           ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                               ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company          ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers    
    # viewing premium result flow by Partner
    common.Access to Partner Check Premium application                                                          ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "View details" in Action button
    partner_request_premium_list_feature.Verify "All values" in Request premium details (Partner) 

RequestPremiumList_ActionButtonflow(Partner) - กด "ดูค่าเบี้ย" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย ฝั่ง Partner
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                                ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                           ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                               ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company          ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers    
    # viewing premium result flow by Partner
    common.Access to Partner Check Premium application                                                          ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Reply" in Action button
    partner_request_premium_list_details_page.Click "Warranty Tab" button
    partner_request_premium_list_feature.Fill (Warranty) Section: Insurance premium details                     ${partner_reply_warranty_input.campaign_name}   ${partner_reply_warranty_input.special_campaign}   ${partner_reply_warranty_input.repair_type}   ${partner_reply_warranty_input.coverage_amount_od}   ${partner_reply_warranty_input.voluntary_car_insurance_premiums}   ${partner_reply_warranty_input.gross_premium}
    partner_request_premium_list_feature.Fill (Warranty) Section: Details of voluntary car insurance            ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}   ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}   ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}   ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}   ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}   ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}   ${partner_reply_warranty_input.First_part_of_vehicle_damage}   ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}   ${partner_reply_warranty_input.nursing_expenses}   ${partner_reply_warranty_input.driver_insurance}   ${partner_reply_warranty_input.number_of_passengers}
    partner_request_premium_list_feature.Fill (Warranty) Section: Additional details of terms and conditions    ${partner_reply_warranty_input.car_inspection_before_warranty}   ${partner_reply_warranty_input.additional_special_protection}   ${partner_reply_warranty_input.insurance_conditions}   ${partner_reply_warranty_input.details_report}
    partner_request_premium_list_details_page.Get "Warranty value" from Replying warranty tab
    partner_request_premium_list_details_page.Click "Reply comment" button
    partner_request_premium_list_details_page.Click "Confirm reply" button
    partner_request_premium_list_details_page.Verify "Warranty request premium" modal and Close "Successfully replying" modal
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "View premium result" in Action button
    partner_request_premium_list_feature.Verify "All values" in Premium result (Partner)

RequestPremiumList_ActionButtonflow(Partner) - กด "ยกเลิกรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย ฝั่ง Partner
    Close All Browsers
    # create request premium for this case
    common.Access to Check Premium application (Okta Alpha/Beta)                                                ${value.email}   ${value.password}   ${value.okta_url}   ${xpath.email_inputField}   ${xpath.password_inputField}   ${xpath.tisco_signIn_button}   ${value.checkPremium}
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                           ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                               ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company          ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    Close All Browsers    
    # viewing premium result flow by Partner
    common.Access to Partner Check Premium application                                                          ${value.partner_username}   ${value.partner_password}   ${value.partner_url}   ${xpath.partner_username_inputField}   ${xpath.partner_password_inputField}   ${xpath.submit_username_button}   ${xpath.password_login_button}   ${xpath.sign_in_button}   ${value.partner_search}   ${xpath.partner_search_textField}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_feature.Click "Cancel" in Action button
    partner_request_premium_list_feature.Input & Confirm "Cancel" in Cancel modal                               ${partner_input_list.cancel_comment}
    partner_request_premium_list_feature.(Partner) Search Request Premium list by "UW No."                      ${value_request_premium.UW_no}
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Request premium status column      
