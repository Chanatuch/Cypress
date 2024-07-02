*** Settings ***
Resource         ../../../../resource/import.robot
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
${value.checkPremium}          (RDBMS) 1269-Insurance Quotation System-Beta

# # input search premium for Beta-state2
# tisco customer
${value_premium_main.App_code}   HP
${value_premium_main.Account}    144002
# hiree no
${value.hiree_no}   H2300000241              
# normal search 
# !!!-- หาก ไม่ได้ใส่ค่า discount_percent, gross_code และ driver birthday จะทำการกดปุ่ม "ไม่มี (radio button)" อัตโนมัติ ดัก logic ไว้แล้ว --!!!
# !!!-- หาก ใส่ค่า driver birthday และ campaign effective date ไม่ครบ จะเข้าเงื่อนไข fail ทันที (ปล. driver birthday สามารถใส่คนใดคนหนึ่งได้) --!!!
${value.brand_name}           HONDA
${value.main_model}           CITY
${value.sub_brand}            CITY
${value.car_year}             2020
${value.car_power}            0-2,000 CC (2000)
${value.car_type}             รถยนต์นั่ง-ส่วนบุคคล
${value.special_campaign}     FORD ENSURE
${value.special_equipment}    ไม่มี
@{value.insurance_type}       ประเภท 1    ประเภท 2    ประเภท 3    ประเภท 3 Plus    ประเภท 2 Plus
${value.coverage_amount_od}   530000
${value.repair_type}          อู่ทั่วไป
${value.gross_code}           รถยนต์นั่งโดยสาร - ส่วนบุคคล (ไม่เกิน 15 ที่นั่ง)
# advance search
@{value.insurer}                               แอล เอ็ม จี ประกันภัย   วิริยะประกันภัย   อาคเนย์ประกันภัย   ทิพยประกันภัย   แอกซ่าประกันภัย   กรุงไทยพานิชประกันภัย   กรุงเทพประกันภัย
${value.discount_percent}                      20 %
${value.car_color}                             ม่วง
${value.year_driver1_birthday}                 1898
${value.month_driver1_birthday}                December
${value.day_driver1_birthday}                  17
${value.year_driver2_birthday}                 1998
${value.month_driver2_birthday}                August
${value.day_driver2_birthday}                  20
${value.year_start_campaign_effective_date}    2132
${value.month_start_campaign_effective_date}   July
${value.day_start_campaign_effective_date}     10



*** Test Cases ***
# # # ||----- 2. Check search premium tab -----||
# SearchPremium-Check label link & button
#     search_premium_feature.Access Search Premium by clicking on tab
#     search_premium_feature.Check Dashboard & Search Premium label link
#     search_premium_feature.Check Reset & Search button

# # # ||----- 2.1 Check search premium tab (Existing Customer) -----||
# # # Search Tisco customer section
# SearchPremium_Main(ลูกค้าทิสโก้) - ค้นหาลูกค้าทิสโก้ได้ โดย App code/Account
#     search_premium_feature.(Tisco customer) Search Existing Customer by App code/Account    ${value_premium_main.App_code}   ${value_premium_main.Account}
# # SearchPremium_Main(ลูกค้าทิสโก้) - ค้นหาลูกค้าทิสโก้ได้ โดย ชื่อลูกค้า กับ นามสกุลลูกค้า
# #     search_premium_feature.(Tisco customer) Search Existing Customer by First name and Lastname
# # SearchPremium_Main(ลูกค้าทิสโก้) - ค้นหาลูกค้าทิสโก้ได้ โดย เลขทะเบียนรถ
# #     search_premium_feature.(Tisco customer) Search Existing Customer by License no
# # SearchPremium_Main(ลูกค้าทิสโก้) - ค้นหาลูกค้าทิสโก้ได้ โดย Field ทั้งหมด
# #     search_premium_feature.(Tisco customer) Search Existing Customer by All field
# SearchPremium_Main(ลูกค้าทิสโก้) - ล้างการค้นหาด้วยการกด "ล้างการค้นหา (Button)"
#     search_premium_feature.(Tisco customer) Clear searching by Reset button                                                     ${value_premium_main.App_code}   ${value_premium_main.Account}
# # # Search Car information section
# SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - สลับจากลูกค้าทิสโก้ ไป ลูกค้าใหม่ หากมีการเปลี่ยนแปลง โดยการกดเลือก ใน "คุณต้องการเลือกประเภทลูกค้าใหม่ใช่ไหม ?(Modal)"
#     search_premium_feature.(Tisco customer) Change to new customer after taking action by Select button                         ${value_premium_main.App_code}   ${value_premium_main.Account}
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - กลับไปยังหน้าเลือกประเภทลูกค้าด้วยการกด "กลับไปยังก่อนหน้า (Button)"
# #     search_premium_feature.(Tisco customer) Back to search premium main page by Previous button
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ
# #     search_premium_feature.(Tisco customer) Normal search Premium information
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ มีโครงการพิเศษ
# #     search_premium_feature.(Tisco customer) Normal search Premium information with special campaign
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ มีอุปกรณ์พิเศษ
# #     search_premium_feature.(Tisco customer) Normal search Premium information with special equipment
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ โดย ประเภทประกัน
# #     search_premium_feature.(Tisco customer) Normal search Premium information with insurance type 
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ โดย จำนวนเงินทุนประกัน (บาท)
# #     search_premium_feature.(Tisco customer) Normal search Premium information with coverage amount od
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ เลือก การจัดซ่อม
# #     search_premium_feature.(Tisco customer) Normal search Premium information with repair type
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ เลือก รหัส พรบ
# #     search_premium_feature.(Tisco customer) Normal search Premium information with gross code
# SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบปกติ โดย search field ทั้งหมด/เลือกเอง และ บันทึกประวัติเช็คเบี้ย ได้ถูกต้อง
#     search_premium_feature.(Tisco customer) Normal search Premium information all field/custom and saving history correctly     ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย บริษัทประกัน
# #     search_premium_feature.(Tisco customer) Advance search Premium information by insurer
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย ระบุจำนวน % (ถ้ามี)
# #     search_premium_feature.(Tisco customer) Advance search Premium information by discount 
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย สีรถยนต์
# #     search_premium_feature.(Tisco customer) Advance search Premium information by car color 
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย ระบุผู้ขับขี่
# #     search_premium_feature.(Tisco customer) Advance search Premium information by driver1 birthday
# # SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย วัน เริ่มต้น/สิ้นสุด ความคุ้มครอง
# #     search_premium_feature.(Tisco customer) Advance search Premium information by start/end campaign effective date
# SearchPremium_PremiumInformation(ลูกค้าทิสโก้) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย Advance search field ทั้งหมด และ บันทึกประวัติเช็คเบี้ย ได้ถูกต้อง
#     search_premium_feature.(Tisco customer) Advance search Premium information by all advance search field and saving history correctly     ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
# # # Clear search flow and verify campaign detail modal
# SearchPremium_CampaignSelection(ลูกค้าทิสโก้) - ล้างการเลือก campaign card ด้วยการกด "คืนค่าการเลือก (Button)"
#     search_premium_feature.(Tisco customer) Clear Campaign card by Reset campaign selection button                              ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
# # # Saving premium history section
# SearchPremium_SavePremiumHistory(ลูกค้าทิสโก้) - บันทึกประวัติแคมเปญเช็คเบี้ย ด้วยการกด "บันทึกประวัติเช็คเบี้ย (Button)"
#     search_premium_feature.(Tisco customer) Save campaign comparison by Save premium history button                             ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
# SearchPremium_SavePremiumHistory(ลูกค้าทิสโก้) - บันทึกประวัติแคมเปญเช็คเบี้ยได้ หากต้องการออกจากหน้าค้นหาเบี้ย ในกรณี เลือกแคมเปญไว้แล้ว
#     search_premium_feature.(Tisco customer) Save campaign comparison in case of wanting to change to other tab                  ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
# SearchPremium_SavePremiumHistory(ลูกค้าทิสโก้) - บันทึกประวัติแคมเปญเช็คเบี้ยได้ หากต้องการกลับไปยังก่อนหน้า(เลือกลูกค้า) ในกรณี เลือกแคมเปญไว้แล้ว
#     search_premium_feature.(Tisco customer) Save campaign comparison in case of wanting to return to search premium main page   ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
# # # Calculation page section
# SearchPremium_PremiumCalculation(ลูกค้าทิสโก้) - ไปยังหน้าคํานวณเบี้ยประกัน "เปรียบเทียบความคุ้มครอง (ฺButton)" และ ตรวจสอบแสดงข้อมูล รถยนต์ถูกต้อง & รายละเอียดความคุ้มครอง
#     search_premium_feature.(Tisco customer) Go to Calculation page by Campaign comparison button and verify coverage details    ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}


# # ||----- 2.2 Check search premium tab (New Customer) -----||
# # Search Premium information section
SearchPremium_PremiumInformation(ลูกค้าใหม่) - สลับจากลูกค้าใหม่ ไป ลูกค้าทิสโก้ หากมีการเปลี่ยนแปลง โดยการกดเลือก "คุณต้องการเลือกประเภทลูกค้าใหม่ใช่ไหม ?(Modal)"
    search_premium_feature.(New customer) Change to tisco customer after taking action by Select button                       ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ตรวจสอบ validate message ของ ยี่ห้อรถ ถึง ขนาดเครื่องยนต์
    search_premium_feature.(New customer) Verify validate message for Brand to Car power field
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกัน โดย Hiree No และ บันทึกประวัติเช็คเบี้ย ได้ถูกต้อง
  search_premium_feature.(New customer) Search Premium information by Hiree No and saving history correctly                   ${value.hiree_no}     @{value.insurance_type}
# Normal search
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ
    search_premium_feature.(New customer) Normal search Premium information                                                   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ มีโครงการพิเศษ
    search_premium_feature.(New customer) Normal search Premium information with special campaign                             ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ มีอุปกรณ์พิเศษ
    search_premium_feature.(New customer) Normal search Premium information with special equipment                            ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_equipment}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ โดย ประเภทประกัน
    search_premium_feature.(New customer) Normal search Premium information with insurance type                               ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   @{value.insurance_type}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ โดย จำนวนเงินทุนประกัน (บาท)
    search_premium_feature.(New customer) Normal search Premium information with coverage amount od                           ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.coverage_amount_od}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ เลือก การจัดซ่อม
    search_premium_feature.(New customer) Normal search Premium information with repair type                                  ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}   ${value.repair_type}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ เลือก รหัส พรบ
    search_premium_feature.(New customer) Normal search Premium information with gross code                                   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบปกติ โดย search field ทั้งหมด/เลือกเอง และ บันทึกประวัติเช็คเบี้ย ได้ถูกต้อง
    search_premium_feature.(New customer) Normal search Premium information all field/custom and saving history correctly     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}   
# Advance search
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย บริษัทประกัน
    search_premium_feature.(New customer) Advance search Premium information by insurer                                       ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   @{value.insurer}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย ระบุจำนวน % (ถ้ามี)
    search_premium_feature.(New customer) Advance search Premium information by discount                                      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.discount_percent}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย สีรถยนต์
    search_premium_feature.(New customer) Advance search Premium information by car color                                     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.car_color}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย ระบุผู้ขับขี่
    search_premium_feature.(New customer) Advance search Premium information by driver birthday                               ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย วัน เริ่มต้น/สิ้นสุด ความคุ้มครอง
    search_premium_feature.(New customer) Advance search Premium information by start/end campaign effective date             ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ค้นหาเบี้ยประกันแบบเปิดการค้นหาขั้นสูง โดย Advance search field ทั้งหมด และ บันทึกประวัติเช็คเบี้ย ได้ถูกต้อง
    search_premium_feature.(New customer) Advance search Premium information by all advance search field and saving history correctly   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
# # Clear search flow, campaign card and verify campaign detail modal
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ดูรายละเอียดแคมเปญ โดยการกด "แคมเปญ (Text link)" ในตารางผลการค้นหาค่าเบี้ย
    search_premium_feature.(New customer) View more detail of Search premium result by Campaign text link                     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
SearchPremium_PremiumInformation(ลูกค้าใหม่) - ล้างการค้นหาข้อมูลค่าเบี้ย และ campaign card ด้วยการกด "ล้างการค้นหา (Button)"     
    search_premium_feature.(New customer) Clear premium result and campaign card by click reset searching button              ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
SearchPremium_CampaignSelection(ลูกค้าใหม่) - ล้างการเลือก campaign card ด้วยการกด "คืนค่าการเลือก (Button)"
    search_premium_feature.(New customer) Clear Campaign card by Reset campaign selection button                              ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
# # Saving premium history section
SearchPremium_SavePremiumHistory(ลูกค้าใหม่) - บันทึกประวัติแคมเปญเช็คเบี้ย ด้วยการกด "บันทึกประวัติเช็คเบี้ย (Button)"
    search_premium_feature.(New customer) Save campaign comparison by Save premium history button                             ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
SearchPremium_SavePremiumHistory(ลูกค้าใหม่) - บันทึกประวัติแคมเปญเช็คเบี้ยได้ หากต้องการออกจากหน้าค้นหาเบี้ย ในกรณี เลือกแคมเปญไว้แล้ว
    search_premium_feature.(New customer) Save campaign comparison in case of wanting to change to other tab                  ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
SearchPremium_SavePremiumHistory(ลูกค้าใหม่) - บันทึกประวัติแคมเปญเช็คเบี้ยได้ หากต้องการกลับไปยังก่อนหน้า(เลือกลูกค้า) ในกรณี เลือกแคมเปญไว้แล้ว
    search_premium_feature.(New customer) Save campaign comparison in case of wanting to return to search premium main page   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
# # Calculation page section
SearchPremium_PremiumCalculation(ลูกค้าใหม่) - ไปยังหน้าคํานวณเบี้ยประกัน "เปรียบเทียบความคุ้มครอง (ฺButton)" และ ตรวจสอบแสดงข้อมูล รถยนต์ถูกต้อง & รายละเอียดความคุ้มครอง
    search_premium_feature.(New customer) Go to Calculation page by Campaign comparison button and verify coverage details    ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
