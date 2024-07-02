*** Variables ***
# # xpath variable
${request_premium_form_fill_page.choose_month_and_year_button}           xpath=//button[@aria-label="Choose month and year"]
${request_premium_form_fill_page.previous_24_years_button}               xpath=//button[@aria-label="Previous 24 years"]
${request_premium_form_fill_page.next_24_years_button}                   xpath=//button[@aria-label="Next 24 years"]
${request_premium_form_fill_page.save_drafting_button}                   xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'บันทึกแบบร่าง')]/..
${request_premium_form_fill_page.confirm_save_request_premium_button}    xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'ใช่')]/..
${request_premium_form_fill_page.save_and_send_button}                   xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'บันทึกและส่ง')]/..
${request_premium_form_fill_page.generate_uw_code}                       xpath=//app-modal-alert[@class="ng-star-inserted"]/..//p[@class="ng-star-inserted"]
${request_premium_form_fill_page.ok_uw_code_generate_button}             xpath=//app-modal-alert[@class="ng-star-inserted"]/..//div[@class="row"]/*[3]/..//span[contains(text(),'ตกลง')]
${request_premium_form_fill_page.request_premium_draft_tab}              xpath=//div[@class="sidebar show-menu"]/div[@class="item-menu show-menu"]/..//div[@class="sub-menu"]/*[2]/div/div/*//span[text()='บันทึกแบบร่าง']
${request_premium_form_fill_page.return_to_main_page_button}             xpath=//div[@class="col-12 mt-3 ng-star-inserted"]/..//div[@class="col-6 d-flex justify-content-start"]/button
${request_premium_form_fill_page.specify_insure_company_header_modal}    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/div/div/app-dialog-select-company/div/div/div[1]/h5
#     Hiree no
${request_premium_form_fill_page.hiree_no_textField}        xpath=//input[@formcontrolname="hiree_no"]
${request_premium_form_fill_page.hiree_no_search_button}    xpath=//div[@class="d-flex align-items-center"]/div/*[1]/..//button/..//span[contains(text(),'ค้นหา Hiree No.')]
# # Part 1 : Car information
#     renewal premium type
${request_premium_form_fill_page.renewal_premium_type_textField}    xpath=//input[@formcontrolname="renewal_premium_type_mask"]
${request_premium_form_fill_page.renewal_premium_type_label}        xpath=//input[@formcontrolname="renewal_premium_type_label"]
#     name assured
${request_premium_form_fill_page.name_assured_textField}    xpath=//input[@formcontrolname="name_assured"]
#     surname assured
${request_premium_form_fill_page.surname_assured_textField}    xpath=//input[@formcontrolname="surname_assured"]
#     license no
${request_premium_form_fill_page.license_no_textField}    xpath=//input[@formcontrolname="license_no"]
#     red label
${request_premium_form_fill_page.red_label_selecting_box}    xpath=//mat-checkbox/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ป้ายแดง ')]
#     car year
${request_premium_form_fill_page.car_year_textField}    xpath=//input[@formcontrolname="car_year_mask"]
${request_premium_form_fill_page.car_year_dropdown}     xpath=//span[contains(text(),' ${input_form.car_year} ')]
${request_premium_form_fill_page.car_year_label}        xpath=//input[@formcontrolname="car_year_label"]
#     brand
${request_premium_form_fill_page.brand_textField}    xpath=//input[@formcontrolname="brand_mask"]
${request_premium_form_fill_page.brand_dropdown}     xpath=//span[contains(text(),' ${input_form.brand_name} ')]
${request_premium_form_fill_page.brand_label}        xpath=//input[@formcontrolname="brand_label"]
#     main model
${request_premium_form_fill_page.main_model_textField}    xpath=//input[@formcontrolname="main_model_mask"]
${request_premium_form_fill_page.main_model_dropdown}     xpath=//span[contains(text(),' ${input_form.main_model} ')]
${request_premium_form_fill_page.main_model_label}        xpath=//input[@formcontrolname="main_model_label"]
#     sub brand
${request_premium_form_fill_page.sub_brand_textField}    xpath=//input[@formcontrolname="sub_brand_mask"]
${request_premium_form_fill_page.sub_brand_dropdown}     xpath=//span[contains(text(),' ${input_form.sub_brand} ')]
${request_premium_form_fill_page.sub_brand_label}        xpath=//input[@formcontrolname="sub_brand_label"]
#     car type
${request_premium_form_fill_page.car_type_textField}    xpath=//input[@formcontrolname="car_type_mask"]
${request_premium_form_fill_page.car_type_dropdown}     xpath=//span[contains(text(),' ${input_form.car_type} ')]
${request_premium_form_fill_page.car_type_label}        xpath=//input[@formcontrolname="car_type_label"]
#     car power
${request_premium_form_fill_page.car_power_textField}    xpath=//input[@formcontrolname="car_power_mask"]
${request_premium_form_fill_page.car_power_dropdown}     xpath=//span[contains(text(),' ${input_form.car_power} ')]
${request_premium_form_fill_page.car_power_label}        xpath=//input[@formcontrolname="car_power_label"]
#     car type detail
${request_premium_form_fill_page.car_type_detail_textField}    xpath=//input[@formcontrolname="car_type_other"]
#     chassis number
${request_premium_form_fill_page.chassis_number_textField}    xpath=//input[@formcontrolname="chassis_number"]
#     engine number number
${request_premium_form_fill_page.engine_number_textField}    xpath=//input[@formcontrolname="engine_number"]
#     special equipment
${request_premium_form_fill_page.special_equipment_radioButton}        xpath=//mat-label[contains(text(),'อุปกรณ์พิเศษ')]/..//div[@class="mdc-form-field"]/..//label[text() = '${input_form.special_equipment}']
#     special equipment detail
${request_premium_form_fill_page.special_equipment_detail_textField}    xpath=//input[@formcontrolname="special_tool_detail"]
#     car color
${request_premium_form_fill_page.car_color_textField}    xpath=//input[@formcontrolname="car_color_mask"]
${request_premium_form_fill_page.car_color_dropdown}     xpath=//span[contains(text(),' ${input_form.car_color}                    ')]
#     sale channel
${request_premium_form_fill_page.sale_channel_textField}    xpath=//input[@formcontrolname="channel_mask"]
${request_premium_form_fill_page.sale_channel_dropdown}     xpath=//span[contains(text(),' ${input_form.sale_channel} ')]

# # Part 2 : Insurance policy
#     old policy number
${request_premium_form_fill_page.old_policy_number_textField}   xpath=//input[@formcontrolname="old_policy_number"]
#     old insure company
${request_premium_form_fill_page.old_insure_company_textField}    xpath=//input[@formcontrolname="old_company_mask"]
${request_premium_form_fill_page.old_insure_company_dropdown}     xpath=//span[contains(text(),' ${input_form.old_insure_company} ')]
${request_premium_form_fill_page.old_insure_company_label}        xpath=//input[@formcontrolname="car_power_label"]
#     old campaign expire date
${request_premium_form_fill_page.old_campaign_expire_date_datepicker}      xpath=//mat-label[contains(text(),'วันครบกำหนดประกันเดิม')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${request_premium_form_fill_page.year_old_campaign_expire_date_button}     xpath=//button[@aria-label="${input_form.year_old_campaign_expire_date}"]
${request_premium_form_fill_page.month_old_campaign_expire_date_button}    xpath=//button[@aria-label="${input_form.month_old_campaign_expire_date} ${input_form.year_old_campaign_expire_date}"]
${request_premium_form_fill_page.day_old_campaign_expire_date_button}      xpath=//button[@aria-label="${input_form.day_old_campaign_expire_date} ${input_form.month_old_campaign_expire_date} ${input_form.year_old_campaign_expire_date}"]
#     campaign effective date
${request_premium_form_fill_page.campaign_effective_date_datepicker}      xpath=//mat-label[contains(text(),'วันเริ่มต้นคุ้มครอง')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${request_premium_form_fill_page.year_campaign_effective_date_button}     xpath=//button[@aria-label="${input_form.year_campaign_effective_date}"]
${request_premium_form_fill_page.month_campaign_effective_date_button}    xpath=//button[@aria-label="${input_form.month_campaign_effective_date} ${input_form.year_campaign_effective_date}"]
${request_premium_form_fill_page.day_campaign_effective_date_button}      xpath=//button[@aria-label="${input_form.day_campaign_effective_date} ${input_form.month_campaign_effective_date} ${input_form.year_campaign_effective_date}"]
#     campaign expire date
${request_premium_form_fill_page.campaign_expire_date_datepicker}      xpath=//mat-label[contains(text(),'วันที่สิ้นสุดความคุ้มครอง')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${request_premium_form_fill_page.year_campaign_expire_date_button}     xpath=//button[@aria-label="${input_form.year_campaign_expire_date}"]
${request_premium_form_fill_page.month_campaign_expire_date_button}    xpath=//button[@aria-label="${input_form.month_campaign_expire_date} ${input_form.year_campaign_expire_date}"]
${request_premium_form_fill_page.day_campaign_expire_date_button}      xpath=//button[@aria-label="${input_form.day_campaign_expire_date} ${input_form.month_campaign_expire_date} ${input_form.year_campaign_expire_date}"]
#     premium type
${request_premium_form_fill_page.premium_type_textField}    xpath=//input[@formcontrolname="premium_type_mask"]
${request_premium_form_fill_page.premium_type_dropdown}     xpath=//span[contains(text(),' ${input_form.premium_type} ')]
${request_premium_form_fill_page.premium_type_label}        xpath=//input[@formcontrolname="premium_type_label"]
#     coverage amount od
${request_premium_form_fill_page.coverage_amount_od_textField}   xpath=//input[@formcontrolname="coverage_amount_od"]
#     repair type
${request_premium_form_fill_page.repair_type_textField}    xpath=//input[@formcontrolname="repair_type_mask"]
${request_premium_form_fill_page.repair_type_dropdown}     xpath=//span[contains(text(),' ${input_form.repair_type} ')]
${request_premium_form_fill_page.repair_type_label}        xpath=//input[@formcontrolname="repair_type_label"]
#     check premium type
${request_premium_form_fill_page.check_premium_type_radioButton}    xpath=//mat-label[contains(text(),'ประเภทการเช็คเบี้ย')]/..//div[@class="mdc-form-field"]/..//label[contains(text(),'${input_form.check_premium_type}')]
# # Advance input
${request_premium_form_fill_page.advance_input_button}              xpath=//a/..//span[contains(text(),'ตัวเลือกขั้นสูง')]
#     driver birthday
${request_premium_form_fill_page.yes_driver_birthday_radioButton}    xpath=//mat-label[contains(text(),'ระบุผู้ขับขี่')]/..//mat-radio-group[@formcontrolname="driver_flag"]/*[2]/div/label[contains(text(),'ระบุ')]
${request_premium_form_fill_page.driver1_birthday_datepicker}        xpath=//mat-label[contains(text(),'วัน/เดือน/ปีเกิด (ผู้ขับขี่คนที่ 1)')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${request_premium_form_fill_page.driver2_birthday_datepicker}        xpath=//mat-label[contains(text(),'วัน/เดือน/ปีเกิด (ผู้ขับขี่คนที่ 2)')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${request_premium_form_fill_page.previous_24_years_button}           xpath=//button[@aria-label="Previous 24 years"]
${request_premium_form_fill_page.next_24_years_button}               xpath=//button[@aria-label="Next 24 years"]
${request_premium_form_fill_page.year_driver1_birthday_button}       xpath=//button[@aria-label="${input_form.year_driver1_birthday}"]
${request_premium_form_fill_page.month_driver1_birthday_button}      xpath=//button[@aria-label="${input_form.month_driver1_birthday} ${input_form.year_driver1_birthday}"]
${request_premium_form_fill_page.day_driver1_birthday_button}        xpath=//button[@aria-label="${input_form.day_driver1_birthday} ${input_form.month_driver1_birthday} ${input_form.year_driver1_birthday}"]
${request_premium_form_fill_page.year_driver2_birthday_button}       xpath=//button[@aria-label="${input_form.year_driver2_birthday}"]
${request_premium_form_fill_page.month_driver2_birthday_button}      xpath=//button[@aria-label="${input_form.month_driver2_birthday} ${input_form.year_driver2_birthday}"]
${request_premium_form_fill_page.day_driver2_birthday_button}        xpath=//button[@aria-label="${input_form.day_driver2_birthday} ${input_form.month_driver2_birthday} ${input_form.year_driver2_birthday}"]

#     discount
${request_premium_form_fill_page.yes_discount_radioButton}          xpath=//mat-label[contains(text(),'ส่วนลดประวัติดี')]/..//div[@class="mdc-form-field"]/..//label[text() = 'มี']
${request_premium_form_fill_page.no_discount_radioButton}           xpath=//mat-label[contains(text(),'ส่วนลดประวัติดี')]/..//div[@class="mdc-form-field"]/..//label[text() = 'ไม่มี']
${request_premium_form_fill_page.discount_percent_selection_box}    xpath=//span[text() = '${input_form.discount_percent}']
# # Part 3 : Premium question to insurance company
#     specify insurance company
${request_premium_form_fill_page.choose_insurance_company_button}        xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[text() = 'เลือกบริษัท']/..
${request_premium_form_fill_page.specify_insurance_company_textField}    xpath=//input[@formcontrolname="company_mask"]
${request_premium_form_fill_page.save_insurance_company_button}          xpath=//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[text() = 'ตกลง']
#     question set for new customer or new
${request_premium_form_fill_page.question_set_for_new_customer_or_new_textField}    xpath=//input[@formcontrolname="insure_question_set_typenew_mask"]
${request_premium_form_fill_page.question_set_for_new_customer_or_new_dropdown}     xpath=//span[contains(text(),' ${input_form.question_set_for_new_customer_or_new} ')]
#     question detail for new customer or new
${request_premium_form_fill_page.question_detail_for_new_customer_or_new_textField}     xpath=//textarea[@formcontrolname="question_detail_typenew"]
#     question set for renew
${request_premium_form_fill_page.question_set_for_renew_textField}    xpath=//input[@formcontrolname="insure_question_set_typerenew_mask"]
${request_premium_form_fill_page.question_set_for_renew_dropdown}     xpath=//span[contains(text(),' ${input_form.question_set_for_renew} ')]
#     question detail for ewnew
${request_premium_form_fill_page.question_detail_for_renew_textField}     xpath=//textarea[@formcontrolname="question_detail_typerenew"]

*** Keywords ***

Fill Hiree No
    [Arguments]                 ${input_form.hiree_no}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.hiree_no_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.hiree_no_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.hiree_no_textField}       ${input_form.hiree_no}
    Set Global Variable    ${value_request_premium.ref_no}    ${input_form.hiree_no}

Click Hiree no search button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.hiree_no_search_button} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.hiree_no_search_button}

Fill & Select Renewal premium type
# ประเภทเช็คเบี้ยต่ออายุ
    [Arguments]                  ${input_form.renewal_premium_type}
    Set Global Variable                              ${value_rq_form.renewal_premium_type}    ${input_form.renewal_premium_type}
    # ในกรณี ประเภทงาน = ลูกค้าใหม่ ไม่ต้องเลือกประเภทงานเนื่องจากเป็น default เลือกไม่ได้ disabled
    IF  '${input_form.renewal_premium_type}' != 'ลูกค้าใหม่'
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.renewal_premium_type_textField}
        SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.renewal_premium_type_textField}
        SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.renewal_premium_type_textField}       ${value_rq_form.renewal_premium_type}
        SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[contains(text(),' ${value_rq_form.renewal_premium_type} ')]
        SeleniumLibrary.Click Element                    xpath=//span[contains(text(),' ${value_rq_form.renewal_premium_type} ')]
    END

Fill Assured name
# ชื่อ (ผู้เอาประกันภัย)
    [Arguments]                 ${input_form.assured_name}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.name_assured_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.name_assured_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.name_assured_textField}       ${input_form.assured_name}

Fill Assured surname
# นามสกุล (ผู้เอาประกันภัย)
    [Arguments]                 ${input_form.assured_surname}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.surname_assured_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.surname_assured_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.surname_assured_textField}       ${input_form.assured_surname}

Fill License no
# ทะเบียนรถยนต์
    [Arguments]                 ${input_form.license_no}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.license_no_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.license_no_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.license_no_textField}       ${input_form.license_no}

Select Red label
# ป้ายแดง
    [Arguments]                 ${input_form.red_label}   
    IF  '${input_form.red_label}' == 'ป้ายแดง'
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.red_label_selecting_box}
        SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.red_label_selecting_box}
    END

Fill & Select Car year
# ปีที่จดทะเบียน
    [Arguments]                 ${input_form.car_year}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_year_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.car_year_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.car_year_textField}       ${input_form.car_year}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_year_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.car_year_dropdown}

Fill & Select Brand
# ยี่ห้อรถ
    [Arguments]                 ${input_form.brand_name}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.brand_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.brand_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.brand_textField}       ${input_form.brand_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.brand_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.brand_dropdown}

Fill & Select Main model
# รุ่นรถ
    [Arguments]                 ${input_form.main_model}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.main_model_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.main_model_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.main_model_textField}       ${input_form.main_model}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.main_model_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.main_model_dropdown}

Fill & Select Sub brand
# รุ่นรถย่อย
    [Arguments]                 ${input_form.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.sub_brand_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.sub_brand_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.sub_brand_textField}       ${input_form.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.sub_brand_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.sub_brand_dropdown}

Fill & Select Car type
# ลักษณะการใช้งาน
    [Arguments]                 ${input_form.car_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_type_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.car_type_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.car_type_textField}       ${input_form.car_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_type_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.car_type_dropdown}

Fill & Select Car power
# ขนาดเครื่องยนต์ (ซีซี.)
    [Arguments]                 ${input_form.car_power}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_power_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.car_power_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.car_power_textField}       ${input_form.car_power}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_power_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.car_power_dropdown}

Fill Car type detail
# ลักษณะการใช้งานเพิ่มเติม
    [Arguments]                 ${input_form.car_type_detail}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_type_detail_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.car_type_detail_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.car_type_detail_textField}       ${input_form.car_type_detail}

Fill Chassis number
# หมายเลขถัง
    [Arguments]                 ${input_form.chassis_number}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.chassis_number_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.chassis_number_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.chassis_number_textField}       ${input_form.chassis_number}

Fill Engine number
# หมายเลขเครื่องยนต์
    [Arguments]                 ${input_form.engine_number}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.engine_number_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.engine_number_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.engine_number_textField}       ${input_form.engine_number}

Select Special equipment
# อุปกรณ์พิเศษ
    [Arguments]                 ${input_form.special_equipment}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.special_equipment_radioButton} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.special_equipment_radioButton}

Fill Special equipment detail
# ระบุอุปกรณ์ตกแต่งพิเศษ (ถ้ามี)
    [Arguments]                 ${input_form.special_equipment_detail}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.special_equipment_detail_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.special_equipment_detail_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.special_equipment_detail_textField}       ${input_form.special_equipment_detail}

Fill & Select Car color
# สีรถยนต์
    [Arguments]                 ${input_form.car_color}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_color_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.car_color_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.car_color_textField}       ${input_form.car_color}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.car_color_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.car_color_dropdown}

Fill & Select Sale channel
    [Arguments]                 ${input_form.sale_channel}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.sale_channel_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.sale_channel_textField}
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.sale_channel_textField}       ${input_form.sale_channel}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.sale_channel_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.sale_channel_dropdown}

Fill Old policy number
# เลขกรมธรรม์เดิม
    [Arguments]                 ${input_form.old_policy_number} 
    # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ลูกค้าใหม่' ไม่ต้องใส่ เลขกรมธรรม์เดิม ใน ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
    IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'  
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.old_policy_number_textField}
        SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.old_policy_number_textField} 
        SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.old_policy_number_textField}       ${input_form.old_policy_number}
    END

Fill Old insure company
# บริษัทประกันเดิม
    [Arguments]                 ${input_form.old_insure_company}   
    ${Result_old_insure_company}=       Run Keyword And Return Status    Should Not Be Empty      ${input_form.old_insure_company}
    # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ลูกค้าใหม่' ไม่ต้องใส่ บริษัทประกันเดิม ใน ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
    IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'  
        IF  '${Result_old_insure_company}' == 'True'
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.old_insure_company_textField}
            SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.old_insure_company_textField} 
            SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.old_insure_company_textField}       ${input_form.old_insure_company}
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.old_insure_company_dropdown} 
            SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.old_insure_company_dropdown}
            Set Global Variable                              ${value_rq_form.old_insure_company}    ${input_form.old_insure_company}
        END
    END

Select Old campaign expire date
# วันครบกำหนดประกันเดิม
    [Arguments]                 ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty      ${input_form.year_old_campaign_expire_date}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty      ${input_form.month_old_campaign_expire_date}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty      ${input_form.day_old_campaign_expire_date}
    # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ลูกค้าใหม่' ไม่ต้องใส่ วันครบกำหนดประกันเดิม ใน ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
    IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
        # หาก บริษัทประกันเดิม มีการใส่ค่าเข้ามา จะ enable ให้ วันครบกำหนดประกันเดิม ใส่ค่าได้
        ${Result_old_insure_company}=        Run Keyword And Return Status    Should Not Be Empty      ${value_rq_form.old_insure_company}
        IF  '${Result_old_insure_company}' == 'True'
            # all year month day input_forms are found in input variable
            IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.old_campaign_expire_date_datepicker} 
                SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.old_campaign_expire_date_datepicker}
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_month_and_year_button} 
                SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.choose_month_and_year_button}
                # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
                Set Global Variable                              ${input_year}    ${input_form.year_old_campaign_expire_date}
                common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
                # start date
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.year_old_campaign_expire_date_button} 
                SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.year_old_campaign_expire_date_button}
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.month_old_campaign_expire_date_button} 
                SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.month_old_campaign_expire_date_button}
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.day_old_campaign_expire_date_button} 
                SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.day_old_campaign_expire_date_button}
                # set value month convert name to number for store checking value
                common.Convert Month Name to Number  ${input_form.month_old_campaign_expire_date}
                Set Global Variable    ${value.month_old_campaign_expire_date}     ${value.get_integer_month_number}
            # all year month day input_forms are not found in input variable
            ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
                Log     Go to Next step
            # some of year month day input_forms are not found in input variable 
            ELSE
                Fail    Error!! Please, Complete all input Year/Month/Day of Old campaign expire date
            END
        END
    END 

Select Campaign effective date
# วันเริ่มต้นคุ้มครอง
    [Arguments]                 ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}
    # start campaign effective date
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${input_form.year_campaign_effective_date}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${input_form.month_campaign_effective_date}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${input_form.day_campaign_effective_date}
    # all year month day input_forms are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.campaign_effective_date_datepicker} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.campaign_effective_date_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
        Set Global Variable                              ${input_year}    ${input_form.year_campaign_effective_date}
        common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
        # start date
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.year_campaign_effective_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.year_campaign_effective_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.month_campaign_effective_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.month_campaign_effective_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.day_campaign_effective_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.day_campaign_effective_date_button}
        # set value month convert name to number for store checking value
        common.Convert Month Name to Number  ${input_form.month_campaign_effective_date}
        Set Global Variable    ${value.month_campaign_effective_date}     ${value.get_integer_month_number}
    # all year month day input_forms are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Next step
    # some of year month day input_forms are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Campaign effective date
    END 

Select Campaign expire date
# วันที่สิ้นสุดความคุ้มครอง
    [Arguments]                  ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}
    # start campaign effective date
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${input_form.year_campaign_expire_date}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${input_form.month_campaign_expire_date}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${input_form.day_campaign_expire_date}
    # all year month day input_forms are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.campaign_expire_date_datepicker} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.campaign_expire_date_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
        Set Global Variable                              ${input_year}    ${input_form.year_campaign_effective_date}
        common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
        # start date
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.year_campaign_expire_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.year_campaign_expire_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.month_campaign_expire_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.month_campaign_expire_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.day_campaign_expire_date_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.day_campaign_expire_date_button}
        # set value month convert name to number for store checking value
        common.Convert Month Name to Number  ${input_form.month_campaign_expire_date}
        Set Global Variable    ${value.month_campaign_expire_date}     ${value.get_integer_month_number}
    # all year month day input_forms are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Next step
    # some of year month day input_forms are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Campaign expire date
    END 

Select Premium type
# ประเภทประกัน
    [Arguments]                 ${input_form.premium_type}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.premium_type_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.premium_type_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.premium_type_textField}       ${input_form.premium_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.premium_type_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.premium_type_dropdown}

Fill Coverage amount od
# จำนวนเงินทุนประกัน (บาท)
    [Arguments]                 ${input_form.coverage_amount_od}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.coverage_amount_od_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.coverage_amount_od_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.coverage_amount_od_textField}       ${input_form.coverage_amount_od}

Fill & Select Repair type
# ประเภทการจัดซ่อม
    [Arguments]                 ${input_form.repair_type}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.repair_type_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.repair_type_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.repair_type_textField}       ${input_form.repair_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.repair_type_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.repair_type_dropdown}

Select Check premium type
# ประเภทการเช็คเบี้ย
    [Arguments]                 ${input_form.check_premium_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.check_premium_type_radioButton} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.check_premium_type_radioButton}

Click Advance input button
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.advance_input_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.advance_input_button}

Select Driver identification
# ระบุผู้ขับขี่
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.yes_driver_birthday_radioButton} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.yes_driver_birthday_radioButton}
    common.Wait for process 2s

Select Driver 1 birthday
    [Arguments]                 ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}
    # driver1 birthdate
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${input_form.year_driver1_birthday}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${input_form.month_driver1_birthday}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${input_form.day_driver1_birthday}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        request_premium_form_fill_page.Select Driver identification
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.driver1_birthday_datepicker} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.driver1_birthday_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${input_form.year_driver1_birthday}
        common.Logic check how many times to click "Previous 24 button" linked to input desired year      ${input_year}
        # DD MM YYYY
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.year_driver1_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.year_driver1_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.month_driver1_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.month_driver1_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.day_driver1_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.day_driver1_birthday_button}
        # set value month convert name to number for store checking value
        common.Convert Month Name to Number  ${input_form.month_driver1_birthday}
        Set Global Variable    ${value.month_driver1_birthday}     ${value.get_integer_month_number}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Select Driver 2 birthday logic
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Driver1 birthday 
    END 

Select Driver 2 birthday
    [Arguments]                 ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}
    # driver2 birthdate
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${input_form.year_driver2_birthday}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${input_form.month_driver2_birthday}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${input_form.day_driver2_birthday}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        request_premium_form_fill_page.Select Driver identification
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.driver2_birthday_datepicker} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.driver2_birthday_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${input_form.year_driver2_birthday}
        common.Logic check how many times to click "Previous 24 button" linked to input desired year      ${input_year}
        # DD MM YYYY
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.year_driver2_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.year_driver2_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.month_driver2_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.month_driver2_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.day_driver2_birthday_button} 
        SeleniumLibrary.Click Button                     ${request_premium_form_fill_page.day_driver2_birthday_button}
        # set value month convert name to number for store checking value
        common.Convert Month Name to Number  ${input_form.month_driver2_birthday}
        Set Global Variable    ${value.month_driver2_birthday}     ${value.get_integer_month_number}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Next step
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Driver2 birthday 
    END 

Select Discount and percent
# ระบุจำนวน % (ถ้ามี)
    [Arguments]                 ${input_form.discount_percent}
    # check user fill discount input or not
    ${Result_discount}=      Run Keyword And Return Status    Should Not Be Empty       ${input_form.discount_percent}
    IF  '${Result_discount}' == 'True'
        # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ลูกค้าใหม่' ไม่ต้องใส่ ส่วนลดประวัติดี ใน ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
        IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.yes_discount_radioButton} 
            SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.yes_discount_radioButton}
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.discount_percent_selection_box} 
            SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.discount_percent_selection_box}
            ${discount_percent_input_form}=         evaluate       '${input_form.discount_percent}'.replace(' ','')
            Set Global Variable    ${global_input_form.discount_percent}    ${discount_percent_input_form}
        END
    ELSE 
        # ในกรณีที่ ไม่ได้ใส่ค่า ส่วนลดประวัติดี มาใน input จะทำการเลือก "ไม่มี" ให้อัตโนมัติ
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.no_discount_radioButton} 
        SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.no_discount_radioButton}
    END

Select Specify insurance company
# ระบุบริษัทประกัน
    [Arguments]                 @{input_form.specify_insure_company}
    # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ต่ออายุ' จะต้องใส่ ระบุบริษัทประกัน ใน ส่วนที่ 3 - คำถามสอบถามเบี้ยไปยังบริษัทประกัน
    IF  '${value_rq_form.renewal_premium_type}' == 'โอนย้าย' or '${value_rq_form.renewal_premium_type}' == 'ต่ออายุและโอนย้าย' or '${value_rq_form.renewal_premium_type}' == 'ลูกค้าใหม่'
        # check user fill discount input or not
        ${Result_specify_insure_company}=      Run Keyword And Return Status    Should Not Be Empty       @{input_form.specify_insure_company}
        IF  '${Result_specify_insure_company}' == 'True'
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_insurance_company_button} 
            SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.choose_insurance_company_button}
            # loop select insurance company
            FOR    ${specify_insure_company_list}    IN    @{input_form.specify_insure_company}
                # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ลูกค้าใหม่' จะต้องเช็คว่า บริษัทประกันเดิม ตรงกับ ระบุบริษัทประกัน หรือไม่
                IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
                    # check insurance company are not similar as old company
                    IF   '${specify_insure_company_list}' != '${value_rq_form.old_insure_company}'
                        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insurance_company_textField}
                        SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.specify_insurance_company_textField}       ${specify_insure_company_list}
                        SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                        SeleniumLibrary.Click Element                    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insure_company_header_modal}
                        SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.specify_insure_company_header_modal}
                        # SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[contains(text(),' ${specify_insure_company_list} ')]
                        # SeleniumLibrary.Click Element                    xpath=//span[contains(text(),' ${specify_insure_company_list} ')]
                    ELSE
                        Fail    กรุณาเลือก บริษัทประกันที่ไม่ซ้ำกัน กับ บริษัทประกันเดิม
                    END
                # ประเภทเช็คเบี้ยต่ออายุ = 'ลูกค้าใหม่' ใส่บริษัทไปได้เลย
                ELSE
                    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insurance_company_textField}
                    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.specify_insurance_company_textField}       ${specify_insure_company_list}
                    SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                    SeleniumLibrary.Click Element                    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insure_company_header_modal}
                    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.specify_insure_company_header_modal}
                END
            END
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.save_insurance_company_button}
        SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.save_insurance_company_button}
        END
    END

Select Specify insurance company (For tisco customer)
# ระบุบริษัทประกัน
    [Arguments]                 @{input_form.specify_insure_company}
    # หาก ประเภทเช็คเบี้ยต่ออายุ ไม่ใช่ 'ต่ออายุ' จะต้องใส่ ระบุบริษัทประกัน ใน ส่วนที่ 3 - คำถามสอบถามเบี้ยไปยังบริษัทประกัน
    IF  '${value_rq_form.renewal_premium_type}' == 'โอนย้าย' or '${value_rq_form.renewal_premium_type}' == 'ต่ออายุและโอนย้าย' or '${value_rq_form.renewal_premium_type}' == 'ลูกค้าใหม่'
        # check user fill discount input or not
        ${Result_specify_insure_company}=      Run Keyword And Return Status    Should Not Be Empty       @{input_form.specify_insure_company}
        IF  '${Result_specify_insure_company}' == 'True'
            SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.choose_insurance_company_button} 
            SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.choose_insurance_company_button}
            # loop select insurance company
            FOR    ${specify_insure_company_list}    IN    @{input_form.specify_insure_company}
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insurance_company_textField}
                SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.specify_insurance_company_textField}       ${specify_insure_company_list}
                SeleniumLibrary.Wait Until Element Is Visible    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                SeleniumLibrary.Click Element                    xpath=//mat-option[@role="option"]/span[@class="mdc-list-item__primary-text"]/..//div[@class="mdc-checkbox"]/../label[contains(text(),' ${specify_insure_company_list} ')]
                SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.specify_insure_company_header_modal}
                SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.specify_insure_company_header_modal}
            END
        SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.save_insurance_company_button}
        SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.save_insurance_company_button}
        END
    END

Fill & Select "Question set" and Fill "Question detail"
    [Arguments]                                  ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}   
    # คำถามสำหรับงานต่ออายุ
    IF  '${value_rq_form.renewal_premium_type}' == 'ต่ออายุ'
        request_premium_form_fill_page.Fill & Select Question set for renew                 ${input_form.question_set_for_renew}
        request_premium_form_fill_page.Fill Question detail for renew                       ${input_form.question_detail_for_renew}
    # คำถามสำหรับงานใหม่หรือโอนย้าย
    ELSE IF  '${value_rq_form.renewal_premium_type}' == 'โอนย้าย' or '${value_rq_form.renewal_premium_type}' == 'ลูกค้าใหม่'
        request_premium_form_fill_page.Fill & Select Question set for new customer or new   ${input_form.question_set_for_new_customer_or_new}
        request_premium_form_fill_page.Fill Question detail for new customer or new         ${input_form.question_detail_for_new_customer_or_new}
    # ในกรณี ประเภทงาน = ต่ออายุและโอนย้าย
    ELSE
        request_premium_form_fill_page.Fill & Select Question set for renew                 ${input_form.question_set_for_renew}
        request_premium_form_fill_page.Fill Question detail for renew                       ${input_form.question_detail_for_renew}
        request_premium_form_fill_page.Fill & Select Question set for new customer or new   ${input_form.question_set_for_new_customer_or_new}
        request_premium_form_fill_page.Fill Question detail for new customer or new         ${input_form.question_detail_for_new_customer_or_new}
    END

Fill & Select Question set for new customer or new
# คำถามสำหรับงานใหม่หรือโอนย้าย
    [Arguments]                 ${input_form.question_set_for_new_customer_or_new}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_set_for_new_customer_or_new_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.question_set_for_new_customer_or_new_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.question_set_for_new_customer_or_new_textField}       ${input_form.question_set_for_new_customer_or_new}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_set_for_new_customer_or_new_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.question_set_for_new_customer_or_new_dropdown}

Fill Question detail for new customer or new
# ข้อมูลที่ต้องการสอบถาม งานใหม่หรือโอนย้าย
    [Arguments]                 ${input_form.question_detail_for_new_customer_or_new}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_detail_for_new_customer_or_new_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.question_detail_for_new_customer_or_new_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.question_detail_for_new_customer_or_new_textField}       ${input_form.question_detail_for_new_customer_or_new}

Fill & Select Question set for renew
# คำถามสำหรับงานต่ออายุ
    [Arguments]                 ${input_form.question_set_for_renew}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_set_for_renew_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.question_set_for_renew_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.question_set_for_renew_textField}       ${input_form.question_set_for_renew}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_set_for_renew_dropdown} 
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.question_set_for_renew_dropdown}

Fill Question detail for renew
# ข้อมูลที่ต้องการสอบถาม สำหรับงานต่ออายุ
    [Arguments]                 ${input_form.question_detail_for_renew}   
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.question_detail_for_renew_textField}
    SeleniumLibrary.Clear Element Text               ${request_premium_form_fill_page.question_detail_for_renew_textField} 
    SeleniumLibrary.Input Text                       ${request_premium_form_fill_page.question_detail_for_renew_textField}       ${input_form.question_detail_for_renew}

Click save drafting button
    # Execute JavaScript    window.scrollTo(0,400)
    # common.Wait for process 4s
    # Execute JavaScript    window.scrollTo(0,0)
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.save_drafting_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.save_drafting_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    common.Wait for process 5s

Click save drafting button by Other tabs
    Execute JavaScript    window.scrollTo(0,400)
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.request_premium_draft_tab}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.request_premium_draft_tab}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    common.Wait for process 5s

Click save drafting button by Return to main page
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.return_to_main_page_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.return_to_main_page_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    common.Wait for process 5s


Get UW code after creating request premium
    ${getUWcode_RequestPremium}=    Get Text    ${request_premium_form_fill_page.generate_uw_code}
    Log     Generated UW code = ${getUWcode_RequestPremium}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.ok_uw_code_generate_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.ok_uw_code_generate_button}
    Set Global Variable    ${value_request_premium.UW_no}    ${getUWcode_RequestPremium}
    Set Global Variable    ${value_request_premium.request_premium_status}    รอดำเนินการ
    common.Wait for process 3s

Click save & send button
    # Execute JavaScript    window.scrollTo(0,400)
    # common.Wait for process 4s
    # Execute JavaScript    window.scrollTo(0,0)
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.save_and_send_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.save_and_send_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    SeleniumLibrary.Click Element                    ${request_premium_form_fill_page.confirm_save_request_premium_button}
    common.Wait for process 6s

Get "Request premium value" from Request Premium form
    Set Global Variable    @{value_request_premium.specify_insure_company}    @{input_form.specify_insure_company}
    # ส่วนที่ 1 - ข้อมูลรถยนต์
    Set Global Variable    ${value_request_premium.renewal_premium_type}        ${value_rq_form.renewal_premium_type}
    Set Global Variable    ${value_request_premium.customer}                    ${input_form.assured_name} ${input_form.assured_surname}
    Set Global Variable    ${value_request_premium.brand_and_model}             ${input_form.brand_name} ${input_form.sub_brand}
    Set Global Variable    ${value_request_premium.car_power}                   ${input_form.car_power}
    Set Global Variable    ${value_request_premium.red_label}                   ${input_form.red_label}
    Set Global Variable    ${value_request_premium.license_no}                  ${input_form.license_no}
    Set Global Variable    ${value_request_premium.car_year}                    ${input_form.car_year}
    Set Global Variable    ${value_request_premium.engine_number}               ${input_form.engine_number}
    Set Global Variable    ${value_request_premium.chassis_number}              ${input_form.chassis_number}
    Set Global Variable    ${value_request_premium.car_color}                   ${input_form.car_color}
    Set Global Variable    ${value_request_premium.car_type}                    ${input_form.car_type}
    Set Global Variable    ${value_request_premium.special_equipment}           ${input_form.special_equipment}
    Set Global Variable    ${value_request_premium.special_equipment_detail}    ${input_form.special_equipment_detail}
    Set Global Variable    ${value_request_premium.car_type_detail}             ${input_form.car_type_detail}
    # ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
    IF  '${value_rq_form.renewal_premium_type}' != 'ลูกค้าใหม่'
        # ในกรณีที่ ประเภทงาน = ลูกค้าใหม่ จะไม่เก็บค่าพวกนี้
        Set Global Variable    ${value_request_premium.old_policy_number}           ${input_form.old_policy_number}
        Set Global Variable    ${value_request_premium.old_insure_company}          ${input_form.old_insure_company}
        Set Global Variable    ${value_request_premium.old_campaign_expire_date}    ${input_form.day_old_campaign_expire_date}/${value.month_old_campaign_expire_date}/${input_form.year_old_campaign_expire_date}
        Set Global Variable    ${value_request_premium.discount_percent}            ${input_form.discount_percent}
    # เนื่องจาก ประเภทงาน = ลูกค้าใหม่ ไม่ได้ส่งค่าไป เลยใส่ - เพื่อไปเช็คค่าต่อ 
    ELSE
        Set Global Variable    ${value_request_premium.old_policy_number}           -
        Set Global Variable    ${value_request_premium.old_insure_company}          -
        Set Global Variable    ${value_request_premium.old_campaign_expire_date}    -
        Set Global Variable    ${value_request_premium.discount_percent}            -
    END
    Set Global Variable    ${value_request_premium.campaign_effective_date}     ${input_form.day_campaign_effective_date}/${value.month_campaign_effective_date}/${input_form.year_campaign_effective_date}
    Set Global Variable    ${value_request_premium.campaign_expire_date}        ${input_form.day_campaign_expire_date}/${value.month_campaign_expire_date}/${input_form.year_campaign_expire_date}
    Set Global Variable    ${value_request_premium.coverage_amount_od}          ${input_form.coverage_amount_od}
    Set Global Variable    ${value_request_premium.premium_type}                ${input_form.premium_type}
    Set Global Variable    ${value_request_premium.repair_type}                 ${input_form.repair_type}
    Set Global Variable    ${value_request_premium.check_premium_type}          ${input_form.check_premium_type}
    Set Global Variable    ${value_request_premium.driver1_birthdate}           ${input_form.day_driver1_birthday}/${value.month_driver1_birthday}/${input_form.year_driver1_birthday}
    Set Global Variable    ${value_request_premium.driver2_birthdate}           ${input_form.day_driver2_birthday}/${value.month_driver2_birthday}/${input_form.year_driver2_birthday}
    # คำถามสำหรับงานต่ออายุ (ประเภทงาน = ต่ออายุ)
    IF  '${value_rq_form.renewal_premium_type}' == 'ต่ออายุ'
        Set Global Variable    ${value_request_premium.question_detail}          ${input_form.question_detail_for_renew}
    # คำถามสำหรับงานใหม่หรือโอนย้าย (ประเภทงาน = โอนย้าย, ลูกค้าใหม่, และ ต่ออายุและโอนย้าย)
    ELSE
        Set Global Variable    ${value_request_premium.question_detail}          ${input_form.question_detail_for_new_customer_or_new}
    END


Get "Request premium value" from Request Premium form (For tisco customer)
    # ส่วนที่ 1 - ข้อมูลรถยนต์
    Set Global Variable    ${value_request_premium.car_color}           ${input_form.car_color}
    Set Global Variable    ${value_request_premium.special_equipment}   ${input_form.special_equipment}
    Set Global Variable    ${value_request_premium.car_type_detail}     ${input_form.car_type_detail}
    # ส่วนที่ 2 - เกี่ยวกับข้อมูลกรมธรรม์
    Set Global Variable    ${value_request_premium.renewal_premium_type}    ${value_rq_form.renewal_premium_type}
    Set Global Variable    ${value_request_premium.check_premium_type}    ${input_form.check_premium_type}

Verify "Tisco Customer description" card
    # มีข้อมูลรถยนต์อยู่ในระบบ TISCO | เลขที่สัญญา :  / ทะเบียนรถ :  / ผู้เอาประกันภัย :  / สิ้นสุดความคุ้มครอง : 
    @{tisco_desc_value}    Create List    ${value_request_premium_tisco_customer.appcode_account}   ${value_request_premium_tisco_customer.license_no}   ${value_request_premium_tisco_customer.customer}   ${value_request_premium_tisco_customer.motor_expiry_date}
    FOR    ${tisco_desc_list}    IN    @{tisco_desc_value}
        ${Result_tisco_desc_list}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${tisco_desc_list}
        IF  '${Result_tisco_desc_list}' == 'False'
            Fail  ไม่พบข้อมูลตรงกับ = ${tisco_desc_list}
        END        
    END

