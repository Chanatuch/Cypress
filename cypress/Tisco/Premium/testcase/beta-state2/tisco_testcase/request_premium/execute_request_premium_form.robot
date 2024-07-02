*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to Check Premium application (Okta Alpha/Beta)    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.checkPremium}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}      xpath=//input[@id="okta-signin-username"]
${xpath.password_inputField}   xpath=//input[@id="okta-signin-password"]
${xpath.signIn_button}         xpath=//input[@id="okta-signin-submit"]
# ${value.checkPremium}          1269-Insurance Sale Portal-Beta_State2
${value.checkPremium}          (RDBMS) 1269-Insurance Quotation System-Beta_State2


# # value input of request premium
# tisco customer
${input_form.App_code}   HP
${input_form.Account}    2200289529
# hiree no
${input_form.hiree_no}   H2300000241              
# # request premium form
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
@{input_form.specify_insure_company}                     ประกันภัยไทยวิวัฒน์   แอลเอ็มจี ประกันภัย
${input_form.check_premium_type}                         ด่วน
${input_form.question_set_for_renew}                     มีเคลมเพิ่มวันที่ …… ขอupdateเบี้ยต่ออายุ
${input_form.question_detail_for_renew}                  มีเคลมเพิ่มวันที่ 30 ตุลาคม 2566 ขอupdateเบี้ยต่ออายุ
${input_form.question_set_for_new_customer_or_new}       เบี้ยป้ายแดง/ซื้อสด ราคา …… บาท ขอเช็คเบี้ยปีต่ออายุ,ทุนประกัน,วันคุ้มครองกธ./พรบ,รายละเอียดความคุ้มครอง
${input_form.question_detail_for_new_customer_or_new}    เบี้ยป้ายแดง/ซื้อสด ราคา 452225 บาท ขอเช็คเบี้ยปีต่ออายุ,ทุนประกัน,วันคุ้มครองกธ./พรบ,รายละเอียดความคุ้มครอง

*** Test Cases ***
# # ||----- Save request premium case-----||
# # # บันทึกแบบร่าง
# # Tisco customer flow
RequestPremiumForm_SaveDraftingflow(ลูกค้าทิสโก้) - บันทึกแบบร่าง สอบถามเบี้ย โดย ประเภทงาน = ต่ออายุ
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_renew}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting and verify value in Request premium drafting page (Tisco customer)

RequestPremiumForm_SaveDraftingflow(ลูกค้าทิสโก้) - บันทึกแบบร่าง สอบถามเบี้ย โดย ประเภทงาน = โอนย้าย
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_new}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting and verify value in Request premium drafting page (Tisco customer)

RequestPremiumForm_SaveDraftingflow(ลูกค้าทิสโก้) - บันทึกแบบร่าง สอบถามเบี้ย โดย ประเภทงาน = ต่ออายุและโอนย้าย
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_renew_and_new}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting and verify value in Request premium drafting page (Tisco customer)

# #  New customer flow
RequestPremiumForm_SaveDraftingflow(Hiree No) - บันทึกแบบร่าง สอบถามเบี้ย
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_feature.Fill & Search Hiree No                                                                         ${input_form.hiree_no}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For hiree no)                            ${input_form.red_label}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting and verify value in Request premium drafting page (Hiree No)

RequestPremiumForm_SaveDraftingflow(ลูกค้าใหม่) - บันทึกแบบร่าง สอบถามเบี้ย โดย ประเภทงาน = ลูกค้าใหม่
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting and verify value in Request premium drafting page

# #  Saving drafting optional way flow
RequestPremiumForm_SaveDraftingOptionflow(ลูกค้าใหม่) - บันทึกแบบร่าง สอบถามเบี้ย ผ่านการ กด "Tab อื่นๆ" 
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting by other tabs and verify value in Request premium drafting page

RequestPremiumForm_SaveDraftingOptionflow(ลูกค้าใหม่) - บันทึกแบบร่าง สอบถามเบี้ย ผ่านการ กด "กลับไปยังก่อนหน้า"
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save drafting by Return to main page and verify value in Request premium drafting page

# # # บันทึกและส่ง
# #  Tisco customer flow
RequestPremiumForm_SaveAndSendflow(ลูกค้าทิสโก้) - บันทึกและส่ง สอบถามเบี้ย โดย ประเภทงาน = ต่ออายุ
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_renew}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page (Tisco customer)

RequestPremiumForm_SaveAndSendflow(ลูกค้าทิสโก้) - บันทึกและส่ง สอบถามเบี้ย โดย ประเภทงาน = โอนย้าย
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_new}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page (Tisco customer)

RequestPremiumForm_SaveAndSendflow(ลูกค้าทิสโก้) - บันทึกและส่ง สอบถามเบี้ย โดย ประเภทงาน = ต่ออายุและโอนย้าย
    request_premium_feature.Select desired Tisco customer                                                                       ${input_form.App_code}   ${input_form.Account}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                           ${input_form.renewal_premium_type_renew_and_new}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For Tisco customer)                           ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy (For Tisco customer)                          ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page (Tisco customer)

# #  New customer flow
RequestPremiumForm_SaveAndSendflow(Hiree No) - บันทึกและส่ง สอบถามเบี้ย
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_feature.Fill & Search Hiree No                                                                         ${input_form.hiree_no}
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information (For hiree no)                            ${input_form.red_label}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page (Hiree No)

RequestPremiumForm_SaveAndSendflow(ลูกค้าใหม่) - บันทึกและส่ง สอบถามเบี้ย โดย ประเภทงาน = ลูกค้าใหม่
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page

