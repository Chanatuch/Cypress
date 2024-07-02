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


# |||||-----------------------------------------------------------------------------------------------------------------------------------|||||

# # value input of request premium list
${input_list.ref_no}                 HP-2200289529
${input_list.customer_first_name}    ชื่อ 7940685
${input_list.customer_last_name}     นามสกุล 7940685
${input_list.license_no}             5กบ 6297
${input_list.uw_no}                  UW-124011000030
@{input_list.insure_company}         ประกันภัยไทยวิวัฒน์   แอลเอ็มจี ประกันภัย   ทิพยประกันภัย
# # value for filter button
${input_list.urgent_type_filter_button}     ด่วน
${input_list.normal_type_filter_button}     ปกติ
# # value for status filter button
@{input_list.request_premium_status}                 รอดำเนินการ   รอประกันตอบกลับ   ขอเอกสารเพิ่มเติม   รับประกัน   ไม่รับประกัน   เกินกำหนดรอบเช็คเบี้ย   ถูกยกเลิก
${input_list.pending_status}                         รอดำเนินการ
${input_list.wait_for_insurance_reply_status}        รอประกันตอบกลับ
${input_list.request_additional_documents_status}    ขอเอกสารเพิ่มเติม
${input_list.warranty_status}                        รับประกัน
${input_list.not_warranted_status}                   ไม่รับประกัน
${input_list.premium_period_exceeded_status}         เกินกำหนดรอบเช็คเบี้ย
${input_list.canceled_status}                        ถูกยกเลิก
# # value for request premium lst action button
${input_list.tisco_comment}                          ทดสอบการส่งข้อความ ค่ะ/ครับ
${input_list.cancel_message}                         ขอยกเลิกรายการสอบถามเบี้ยนี้ ค่ะ/ครับ

# |||||-----------------------------------------------------------------------------------------------------------------------------------|||||


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
# # ||----- Searching request premium list flow -----||
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย Ref No. 
    request_premium_list_feature.Search request premium list by Ref No                ${input_list.ref_no} 
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย ชื่อลูกค้า 
    request_premium_list_feature.Search request premium list by Customer first name   ${input_list.customer_first_name} 
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย นามสกุลลูกค้า
    request_premium_list_feature.Search request premium list by Customer last name    ${input_list.customer_last_name}
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย เลขทะเบียนรถ
    request_premium_list_feature.Search request premium list by License no            ${input_list.license_no}
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย UW No.
    request_premium_list_feature.Search request premium list by UW No                 ${input_list.uw_no}
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย บริษัทประกันภัย
    request_premium_list_feature.Search request premium list by Insure company        @{input_list.insure_company}
RequestPremiumList_Searchingflow - ค้นหารายการสอบถามเบี้ย โดย ทุกๆ Field
    request_premium_list_feature.Search request premium list by All Field             ${input_list.ref_no}   ${input_list.customer_first_name}   ${input_list.customer_last_name}   ${input_list.license_no}   ${input_list.uw_no}   @{input_list.insure_company}
# # ||----- Filter by request premium type flow -----||
RequestPremiumList_FilterListByTypeflow - ฟิลเตอร์รายการสอบถามเบี้ย โดย ประเภท "เช็คเบี้ยด่วน"
    request_premium_list_feature.Filter request premium list by "Urgent" filter button   ${input_list.urgent_type_filter_button}
RequestPremiumList_FilterListByTypeflow - ฟิลเตอร์รายการสอบถามเบี้ย โดย ประเภท "เช็คเบี้ยปกติ"
    request_premium_list_feature.Filter request premium list by "Normal" filter button   ${input_list.normal_type_filter_button}
# # ||----- Filter by status flow -----||
RequestPremiumList_FilterListByStatusflow - ฟิลเตอร์ตัวกรองสถานะ รายการสอบถามเบี้ย โดย "สถานะรายการ"
    request_premium_list_feature.Filter status request premium list by "Request premium status" filter button              @{input_list.request_premium_status}
# # ||----- Action button by "Pending" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รอดำเนินการ"
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "All value" in Request premium details

RequestPremiumList_ActionButtonflow - กด "ตอบกลับ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รอดำเนินการ"
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    request_premium_list_feature.Click "Reply" in Action button
    request_premium_list_feature.Verify "All value" in Request premium details
    request_premium_list_feature.Input & Send request premium comment                                                      ${input_list.tisco_comment}

RequestPremiumList_ActionButtonflow - กด "ยกเลิกรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รอดำเนินการ"
    request_premium_feature.Click request premium form tab & Select New customer
    request_premium_form_fill_page.Fill & Select Renewal premium type                                                      ${input_form.renewal_premium_type_new_customer}  
    request_premium_feature.Fill in Request premium form Part 1: Car Information                                           ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_feature.Fill in Request premium form Part 2: Insurance policy                                          ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_feature.Fill in Request premium form Part 3: Premium question to insurance company                     ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}
    request_premium_feature.Save & Send and verify value in Request premium list page
    request_premium_list_feature.Click "Cancel" in Action button
    request_premium_list_feature.Input & Confirm "Canceled" request premium list                                           ${input_list.cancel_message}   ${input_list.canceled_status}
    request_premium_list_feature.Verify status is "Canceled" after confirm cancellation

# # ||----- Action button by "Wait for insurance reply" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รอประกันตอบกลับ"
    request_premium_list_feature.Filter status request premium list by "Wait for insurance reply" status filter button       ${input_list.wait_for_insurance_reply_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details

# # ||----- Action button by "Request additional documents" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "ขอเอกสารเพิ่มเติม"
    request_premium_list_feature.Filter status request premium list by "Request additional documents" status filter button   ${input_list.request_additional_documents_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details

RequestPremiumList_ActionButtonflow - กด "ตอบกลับ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "ขอเอกสารเพิ่มเติม"
    request_premium_list_feature.Filter status request premium list by "Request additional documents" status filter button   ${input_list.request_additional_documents_status}
    request_premium_list_feature.Click "Reply" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details
    request_premium_list_feature.Input & Send request premium comment                                                      ${input_list.tisco_comment}

# # ||----- Action button by "Warranty" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รับประกัน"
    request_premium_list_feature.Filter status request premium list by "Warranty" status filter button                      ${input_list.warranty_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details

RequestPremiumList_ActionButtonflow - กด "ดูค่าเบี้ย" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "รับประกัน"
    request_premium_list_feature.Filter status request premium list by "Warranty" status filter button                      ${input_list.warranty_status}
    request_premium_list_feature.Click "View premium result" in Action button
    request_premium_list_feature.Verify "All values" in Premium result

# # ||----- Action button by "Not warranty" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "ไม่รับประกัน"
    request_premium_list_feature.Filter status request premium list by "Not Warranted" status filter button                 ${input_list.not_warranted_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details

RequestPremiumList_ActionButtonflow - กด "ดูค่าเบี้ย" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "ไม่รับประกัน"
    request_premium_list_feature.Filter status request premium list by "Not Warranted" status filter button                 ${input_list.not_warranted_status}
    request_premium_list_feature.Click "View premium result" in Action button
    request_premium_list_feature.Verify "All values" in Premium result

# # ||----- Action button by "Premium period exceeded" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "เกินกำหนดรอบเช็คเบี้ย"
    request_premium_list_feature.Filter status request premium list by "Premium period exceeded" status filter button        ${input_list.premium_period_exceeded_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details

# # ||----- Action button by "Canceled" status flow -----||
RequestPremiumList_ActionButtonflow - กด "ดูรายการ" จาก ปุ่ม 3 จุด ของรายการสอบถามเบี้ย สถานะ "ถูกยกเลิก"
    request_premium_list_feature.Filter status request premium list by "Canceled" status filter button                       ${input_list.canceled_status}
    request_premium_list_feature.Click "View details" in Action button
    request_premium_list_feature.Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details
