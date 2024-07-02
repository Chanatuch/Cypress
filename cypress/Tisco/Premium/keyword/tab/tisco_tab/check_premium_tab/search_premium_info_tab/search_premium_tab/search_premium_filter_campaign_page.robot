*** Variables ***
# element xpath variable
${search_premium_filter_campaign_page.previous_to_search_premium_main_button}    xpath=//button[@class="mdc-button mdc-button--outlined mat-mdc-outlined-button mat-primary mat-mdc-button-base"]
${search_premium_filter_campaign_page.campaign_comparison_selection_button}      xpath=//button[@class="me-3 mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base ng-star-inserted"]/..//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'เปรียบเทียบความคุ้มครอง')]/..
${search_premium_filter_campaign_page.yes_campaign_selection_button}             xpath=//app-modal-alert[@class="ng-star-inserted"]/..//button[@class="mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]
${search_premium_filter_campaign_page.no_campaign_selection_button}              xpath=//app-modal-alert[@class="ng-star-inserted"]/..//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'ยกเลิก')]/..
${search_premium_filter_campaign_page.select_changing_customer_type_button}      xpath=//app-modal-alert[@class="ng-star-inserted"]/..//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'เลือก')]/..
${search_premium_filter_campaign_page.continue_editing_button}                   xpath=//app-modal-alert[@class="ng-star-inserted"]/..//span[@class="mat-mdc-button-persistent-ripple mdc-button__ripple"]/..//span[contains(text(),'แก้ไขต่อ')]/..
${search_premium_filter_campaign_page.campaign_selection_modal}                  xpath=//app-modal-alert[@class="ng-star-inserted"]
${search_premium_filter_campaign_page.calculation_page_labelLink}                xpath=//li[contains(text(),'คํานวณเบี้ยประกัน')]
${search_premium_filter_campaign_page.dashboard_labelLink}                       xpath=//li[contains(text(),'หน้าหลัก')]
${search_premium_filter_campaign_page.check_premium_labelLink}                   xpath=//li[contains(text(),'ค้นหาเบี้ยประกันภัยรถยนต์')]
${search_premium_filter_campaign_page.campaign_detail_labelLink}                 xpath=//table[@id="searchPremiumTable"]/..//tbody/*[1]/td[9]/a[@href="javascript:void(0);"]
${search_premium_filter_campaign_page.save_premium_history_button}               xpath=//button[@class="me-3 mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base ng-star-inserted"]/..//span/div/div/..//span[contains(text(),'บันทึกประวัติเช็คเบี้ย')]/..
${search_premium_filter_campaign_page.confirm_save_premium_history_button}       xpath=//button[@class="mdc-button mdc-button--unelevated mat-mdc-unelevated-button mat-primary mat-mdc-button-base"]/..//span[contains(text(),'ใช่')]/..
${search_premium_filter_campaign_page.ok_uw_code_generate_button}                xpath=//app-modal-alert[@class="ng-star-inserted"]/..//div[@class="row"]/*[3]/..//span[contains(text(),'ตกลง')]
${search_premium_filter_campaign_page.generate_uw_code}                          xpath=//p[@class="ng-star-inserted"]
${search_premium_filter_campaign_page.search_premium_not_found_text_dialog}      xpath=//app-search-premium-information-main-table/..//h3[contains(text(),'ไม่พบข้อมูลเบี้ยประกันตามที่คุณค้นหา')]

# normal search
# header
${search_premium_filter_campaign_page.brand_header}                xpath=//mat-label[text()='ยี่ห้อรถ ']
${search_premium_filter_campaign_page.main_model_header}           xpath=//mat-label[text()='รุ่นรถ']
${search_premium_filter_campaign_page.sub_brand_header}            xpath=//mat-label[text()='รุ่นรถย่อย']
${search_premium_filter_campaign_page.car_year_header}             xpath=//mat-label[text()='ปีที่จดทะเบียน']
${search_premium_filter_campaign_page.car_type_header}             xpath=//mat-label[text()='ลักษณะการใช้งาน']
${search_premium_filter_campaign_page.car_power_header}            xpath=//mat-label[text()='ขนาดเครื่องยนต์ (ซี.ซี. / น้ำหนัก / ที่นั่ง)']
${search_premium_filter_campaign_page.special_campaign_header}     xpath=//mat-label[text()='โครงการพิเศษ']
${search_premium_filter_campaign_page.special_equipment_header}    xpath=//mat-label[text()='อุปกรณ์พิเศษ']
# field
#     Hiree no
${search_premium_filter_campaign_page.hiree_no_textField}        xpath=//input[@formcontrolname="hiree_no"]
${search_premium_filter_campaign_page.hiree_no_search_button}    xpath=//div[@class="d-flex align-items-center"]/div/*[1]/..//button/..//span[contains(text(),'ค้นหา Hiree No.')]
#     brand
${search_premium_filter_campaign_page.brand_textField}    xpath=//input[@formcontrolname="brand_mask"]
${search_premium_filter_campaign_page.brand_dropdown}     xpath=//span[contains(text(),' ${value.brand_name} ')]
${search_premium_filter_campaign_page.brand_label}        xpath=//input[@formcontrolname="brand_label"]
#     main model
${search_premium_filter_campaign_page.main_model_textField}    xpath=//input[@formcontrolname="main_model_mask"]
${search_premium_filter_campaign_page.main_model_dropdown}     xpath=//span[contains(text(),' ${value.main_model} ')]
${search_premium_filter_campaign_page.main_model_label}        xpath=//input[@formcontrolname="main_model_label"]
#     sub brand
${search_premium_filter_campaign_page.sub_brand_textField}    xpath=//input[@formcontrolname="sub_brand_mask"]
${search_premium_filter_campaign_page.sub_brand_dropdown}     xpath=//span[contains(text(),' ${value.sub_brand} ')]
${search_premium_filter_campaign_page.sub_brand_label}        xpath=//input[@formcontrolname="sub_brand_label"]
#     car year
${search_premium_filter_campaign_page.car_year_textField}    xpath=//input[@formcontrolname="car_year_mask"]
${search_premium_filter_campaign_page.car_year_dropdown}     xpath=//span[contains(text(),' ${value.car_year} ')]
${search_premium_filter_campaign_page.car_year_label}        xpath=//input[@formcontrolname="car_year_label"]
#     car power
${search_premium_filter_campaign_page.car_power_textField}    xpath=//input[@formcontrolname="car_power_mask"]
${search_premium_filter_campaign_page.car_power_dropdown}     xpath=//span[contains(text(),' ${value.car_power} ')]
${search_premium_filter_campaign_page.car_power_label}        xpath=//input[@formcontrolname="car_power_label"]
#     car type
${search_premium_filter_campaign_page.car_type_textField}    xpath=//input[@formcontrolname="car_type_mask"]
${search_premium_filter_campaign_page.car_type_dropdown}     xpath=//span[contains(text(),' ${value.car_type} ')]
${search_premium_filter_campaign_page.car_type_label}        xpath=//input[@formcontrolname="car_type_label"]
#     special campaign
${search_premium_filter_campaign_page.special_campaign_textField}    xpath=//input[@formcontrolname="spcl_cmpn_mask"]
${search_premium_filter_campaign_page.special_campaign_dropdown}     xpath=//span[contains(text(),' ${value.special_campaign} ')]
${search_premium_filter_campaign_page.special_campaign_label}        xpath=//input[@formcontrolname="spcl_cmpn_label"]
#     special equipment
${search_premium_filter_campaign_page.yes_special_equipment_radioButton}    xpath=//mat-label[contains(text(),'อุปกรณ์พิเศษ')]/..//div[@class="mdc-form-field"]/..//label[text() = 'มี']
${search_premium_filter_campaign_page.special_equipment_radioButton}        xpath=//mat-label[contains(text(),'อุปกรณ์พิเศษ')]/..//div[@class="mdc-form-field"]/..//label[text() = '${value.special_equipment}']
#     repair type
${search_premium_filter_campaign_page.repair_cente_repairType_radioButton}     xpath=//mat-radio-button[@class="mat-mdc-radio-button mat-primary"]/..//label[contains(text(),'ซ่อมศูนย์')]
${search_premium_filter_campaign_page.general_cente_repairType_radioButton}    xpath=//mat-radio-button[@class="mat-mdc-radio-button mat-primary"]/..//label[contains(text(),'อู่ทั่วไป')]
${search_premium_filter_campaign_page.all_cente_repairType_radioButton}        xpath=//mat-radio-button[@class="mat-mdc-radio-button mat-primary"]/..//label[contains(text(),'ทั้งหมด')]
${search_premium_filter_campaign_page.repairType_radioButton}                  xpath=//mat-radio-button[@class="mat-mdc-radio-button mat-primary"]/..//label[contains(text(),'${value.repair_type}')]
#     gross code
${search_premium_filter_campaign_page.yes_gross_code_radioButton}    xpath=//mat-label[contains(text(),'รวม พ.ร.บ.')]/..//label[text() = 'รวม']
${search_premium_filter_campaign_page.no_gross_code_radioButton}     xpath=//mat-label[contains(text(),'รวม พ.ร.บ.')]/..//label[text() = 'ไม่รวม']
${search_premium_filter_campaign_page.gross_code_textField}          xpath=//input[@formcontrolname="act_mask"]
${search_premium_filter_campaign_page.gross_code_dropdown}           xpath=//span[contains(text(),' ${value.gross_code} ')]
# #     insurance type
# ${search_premium_filter_campaign_page.insure_type1_selection_box}        xpath=//span[text()=' ประเภท 1']
# ${search_premium_filter_campaign_page.insure_type2_selection_box}        xpath=//span[text()=' ประเภท 2']
# ${search_premium_filter_campaign_page.insure_type3_selection_box}        xpath=//span[text()=' ประเภท 3']
# ${search_premium_filter_campaign_page.insure_type3plus_selection_box}    xpath=//span[text()=' ประเภท 3 Plus']
# ${search_premium_filter_campaign_page.insure_type2plus_selection_box}    xpath=//span[text()=' ประเภท 2 Plus']
#     coverage amount od
${search_premium_filter_campaign_page.coverage_amount_od_textField}    xpath=//input[@formcontrolname="coverage_amount_od"]
${search_premium_filter_campaign_page.dataInfoEmpty}                   xpath=//td[@class="dataTables_empty"]
#  advance serach
${search_premium_filter_campaign_page.advance_search_button}                  xpath=//button[@class="me-3 mdc-button mdc-button--outlined mat-mdc-outlined-button mat-primary mat-mdc-button-base ng-star-inserted"]
# #     insurer
# ${search_premium_filter_campaign_page.LMG_insurer_selection_box}              xpath=//span[contains(text(),'แอล')]
# ${search_premium_filter_campaign_page.viriya_insurer_selection_box}           xpath=//span[contains(text(),'วิริยะประกันภัย')]
# ${search_premium_filter_campaign_page.southEastLife_insurer_selection_box}    xpath=//span[contains(text(),'อาคเนย์ประกันภัย')]
# ${search_premium_filter_campaign_page.tipinsure_insurer_selection_box}        xpath=//span[contains(text(),'ทิพยประกันภัย')]
# ${search_premium_filter_campaign_page.axa_insurer_selection_box}              xpath=//span[contains(text(),'แอกซ่าประกันภัย')]
# ${search_premium_filter_campaign_page.muangthai_insurer_selection_box}        xpath=//span[contains(text(),'เมืองไทยประกันภัย')]
# ${search_premium_filter_campaign_page.kpi_insurer_selection_box}              xpath=//span[contains(text(),'กรุงไทยพานิชประกันภัย')]
# ${search_premium_filter_campaign_page.thaivivat_insurer_selection_box}        xpath=//span[contains(text(),'ประกันภัยไทยวิวัฒน์')]
# ${search_premium_filter_campaign_page.krungthep_insurer_selection_box}        xpath=//span[contains(text(),'กรุงเทพประกันภัย')]
#     discount
${search_premium_filter_campaign_page.yes_discount_radioButton}          xpath=//mat-label[contains(text(),'ส่วนลดประวัติดี')]/..//div[@class="mdc-form-field"]/..//label[text() = 'มี']
${search_premium_filter_campaign_page.no_discount_radioButton}           xpath=//mat-label[contains(text(),'ส่วนลดประวัติดี')]/..//div[@class="mdc-form-field"]/..//label[text() = 'ไม่มี']
${search_premium_filter_campaign_page.discount_percent_selection_box}    xpath=//span[text() = '${value.discount_percent}']
#     car color
${search_premium_filter_campaign_page.car_color_textField}    xpath=//input[@formcontrolname="car_color_mask"]
${search_premium_filter_campaign_page.car_color_dropdown}     xpath=//span[contains(text(),' ${value.car_color}                    ')]
#     driver birthday
${search_premium_filter_campaign_page.yes_driver_birthday_radioButton}    xpath=//mat-label[contains(text(),'ระบุผู้ขับขี่')]/..//mat-radio-group[@formcontrolname="driver_flag"]/*[2]/div/label[contains(text(),'ระบุ')]
${search_premium_filter_campaign_page.driver1_birthday_datepicker}        xpath=//mat-label[contains(text(),'วัน/เดือน/ปีเกิด (ผู้ขับขี่คนที่ 1)')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${search_premium_filter_campaign_page.driver2_birthday_datepicker}        xpath=//mat-label[contains(text(),'วัน/เดือน/ปีเกิด (ผู้ขับขี่คนที่ 2)')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${search_premium_filter_campaign_page.choose_month_and_year_button}       xpath=//button[@aria-label="Choose month and year"]
${search_premium_filter_campaign_page.previous_24_years_button}           xpath=//button[@aria-label="Previous 24 years"]
${search_premium_filter_campaign_page.next_24_years_button}               xpath=//button[@aria-label="Next 24 years"]
${search_premium_filter_campaign_page.year_driver1_birthday_button}       xpath=//button[@aria-label="${value.year_driver1_birthday}"]
${search_premium_filter_campaign_page.month_driver1_birthday_button}      xpath=//button[@aria-label="${value.month_driver1_birthday} ${value.year_driver1_birthday}"]
${search_premium_filter_campaign_page.day_driver1_birthday_button}        xpath=//button[@aria-label="${value.day_driver1_birthday} ${value.month_driver1_birthday} ${value.year_driver1_birthday}"]
${search_premium_filter_campaign_page.year_driver2_birthday_button}       xpath=//button[@aria-label="${value.year_driver2_birthday}"]
${search_premium_filter_campaign_page.month_driver2_birthday_button}      xpath=//button[@aria-label="${value.month_driver2_birthday} ${value.year_driver2_birthday}"]
${search_premium_filter_campaign_page.day_driver2_birthday_button}        xpath=//button[@aria-label="${value.day_driver2_birthday} ${value.month_driver2_birthday} ${value.year_driver2_birthday}"]
#     start campaign effective date
${search_premium_filter_campaign_page.start_campaign_effective_date_datepicker}      xpath=//mat-label[contains(text(),'วันที่เริ่มต้นความคุ้มครอง')]/..//button[@class="mdc-icon-button mat-mdc-icon-button mat-unthemed mat-mdc-button-base"]
${search_premium_filter_campaign_page.year_start_campaign_effective_date_button}     xpath=//button[@aria-label="${value.year_start_campaign_effective_date}"]
${search_premium_filter_campaign_page.month_start_campaign_effective_date_button}    xpath=//button[@aria-label="${value.month_start_campaign_effective_date} ${value.year_start_campaign_effective_date}"]
${search_premium_filter_campaign_page.day_start_campaign_effective_date_button}      xpath=//button[@aria-label="${value.day_start_campaign_effective_date} ${value.month_start_campaign_effective_date} ${value.year_start_campaign_effective_date}"]
#  campaign_column (search premium table)
${search_premium_filter_campaign_page.select_campaign_checkbox}              xpath=//tr[@class="odd"]/..//div[@class="w-100 d-flex justify-content-center"]/..//input
${search_premium_filter_campaign_page.campaign_column_insurer}               xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[2]
${search_premium_filter_campaign_page.campaign_column_insurance_type}        xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[3]
${search_premium_filter_campaign_page.campaign_column_coverage_amount_od}    xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[4]
${search_premium_filter_campaign_page.campaign_column_total_premium}         xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[6]
${search_premium_filter_campaign_page.campaign_column_repair_type}           xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[8]
${search_premium_filter_campaign_page.campaign_column_campaign(link)_name}   xpath=//table[@id="searchPremiumTable"]/tbody/*[1]/td[9]
#  campaign_column (tisco renew table)
${search_premium_filter_campaign_page.campaign_column_renew_table_insurer}               xpath=//table[@id="prepareConditionTable"]/tbody/*[1]/td[2]
${search_premium_filter_campaign_page.campaign_column_renew_table_insurance_type}        xpath=//table[@id="prepareConditionTable"]/tbody/*[1]/td[4]
${search_premium_filter_campaign_page.campaign_column_renew_table_coverage_amount_od}    xpath=//table[@id="prepareConditionTable"]/tbody/*[1]/td[6]
${search_premium_filter_campaign_page.campaign_column_renew_table_total_premium}         xpath=//table[@id="prepareConditionTable"]/tbody/*[1]/td[8]
${search_premium_filter_campaign_page.campaign_column_renew_table_campaign_name}         xpath=//table[@id="prepareConditionTable"]/tbody/*[1]/td[3]
#  campaign_card
${search_premium_filter_campaign_page.campaign_card_detail}                                     xpath=//div[@class="p-3 w-100 card-detail"]
${search_premium_filter_campaign_page.campaign_card_header_campaign_name}                       xpath=//div[@class="w-100 card-premium"]/div[@class="toper d-flex justify-content-between align-items-center ps-3 pe-3"]/h6
${search_premium_filter_campaign_page.campaign_card_detail_insurer}                             xpath=//div[@class="w-100 card-premium"]/..//div[@class="p-3 w-100 card-detail"]/*[2]/h6[1]
${search_premium_filter_campaign_page.campaign_card_detail_insurance_type_and_repair_type}      xpath=//div[@class="w-100 card-premium"]/..//div[@class="w-100 d-flex justify-content-between align-items-start pb-2 border-b"]/span
${search_premium_filter_campaign_page.campaign_card_detail_coverage_amount_od}                  xpath=//div[@class="w-100 card-premium"]/..//div[@class="w-100 d-flex justify-content-between mt-2"][1]/span[2]
${search_premium_filter_campaign_page.campaign_card_detail_First_part_of_vehicle_damage}        xpath=//div[@class="w-100 card-premium"]/..//div[@class="w-100 d-flex justify-content-between mt-2"][2]/span[2]
${search_premium_filter_campaign_page.campaign_card_detail_total_premium_value}                 xpath=//div[@class="w-100 card-premium"]/..//div[@class="w-100 d-flex justify-content-between mt-2"][3]/span[2]
${search_premium_filter_campaign_page.campaign_card_detail_gross_value}                         xpath=//div[@class="w-100 card-premium"]/..//div[@class="w-100 d-flex justify-content-between mt-2"][4]/span[2]
${search_premium_filter_campaign_page.campaign_card_detail_total_gross_premium_value}           xpath=//div[@class="w-100 card-premium"]/*[3]
#  campaign detail link
${search_premium_filter_campaign_page.coverage_detail_tab}             xpath=//span[@class="mdc-tab__content"]/..//span[contains(text(),' รายละเอียดความคุ้มครอง ')]
${search_premium_filter_campaign_page.premium_condition_policy_tab}    xpath=//span[@class="mdc-tab__content"]/..//span[contains(text(),' เงื่อนไขการรับประกัน ')]
${search_premium_filter_campaign_page.special_coverage_rights_tab}     xpath=//span[@class="mdc-tab__content"]/..//span[contains(text(),' สิทธิประโยชน์และความคุ้มครองพิเศษ ')]
#     variable from Coverage detail tab
${search_premium_filter_campaign_page.view_more_campaign_insurer_value}                            xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/thead/tr/th[2]
${search_premium_filter_campaign_page.view_more_campaign_insurance_type_text}                      xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[3]/td[1]
${search_premium_filter_campaign_page.view_more_campaign_insurance_type_value}                     xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[3]/td[2]
${search_premium_filter_campaign_page.view_more_campaign_repair_type_text}                         xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[4]/td[1]
${search_premium_filter_campaign_page.view_more_campaign_repair_type_value}                        xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[4]/td[2]
${search_premium_filter_campaign_page.view_more_campaign_voluntary_car_insurance_premium_text}     xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[6]/td[1]
${search_premium_filter_campaign_page.view_more_campaign_voluntary_car_insurance_premium_value}    xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[6]/td[2]
${search_premium_filter_campaign_page.view_more_campaign_gross_text}                               xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[18]/td[1]
${search_premium_filter_campaign_page.view_more_campaign_gross_value}                              xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[18]/td[2]
${search_premium_filter_campaign_page.view_more_campaign_total_gross_premium_text}                 xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[19]/td[1]
${search_premium_filter_campaign_page.view_more_campaign_total_gross_premium_value}                xpath=//table[@class="table primary-table table-bordered ng-star-inserted"]/tbody/*[19]/td[2]
#     default reset campaign
${search_premium_filter_campaign_page.default_reset_campaign_button}     xpath=//button[@class="me-3 mdc-button mdc-button--outlined mat-mdc-outlined-button mat-primary mat-mdc-button-base"]
# # text variable
# header
${value.special_equipment_header}               อุปกรณ์พิเศษ
${value.repair_type_header}                     การจัดซ่อม
${value.gross_code_header}                      รวม พ.ร.บ.
${value.insurer_header}                         บริษัทประกันภัย
${value.insurance_type_header}                  ประเภทประกัน
${value.coverage_amount_od_header}              จำนวนเงินทุนประกัน (บาท)
${value.discount_header}                        ส่วนลดประวัติดี
${value.car_color_header}                       สีรถยนต์
${value.driver_birthday_header}                 ระบุผู้ขับขี่
${value.start_campaign_effective_date_header}   วันที่เริ่มต้นความคุ้มครอง
${value.end_campaign_effective_date_header}     วันที่สิ้นสุดความคุ้มครอง
${value.count}    0
# element description
${value.hiree_no_description}                   สามารถระบุ Hiree No. เพื่อค้นหาข้อมูลรถลูกค้า
${value.coverage_amount_od_description}         ทุนประกันภัย 80% จากราคาตลาด

*** Keywords ***
Fill & Select Brand
    [Arguments]                 ${value.brand_name}   
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.brand_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.brand_textField} 
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.brand_textField}       ${value.brand_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.brand_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.brand_dropdown}

Fill & Select Main model
    [Arguments]                 ${value.main_model}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.main_model_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.main_model_textField} 
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.main_model_textField}       ${value.main_model}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.main_model_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.main_model_dropdown}

Fill & Select Sub brand
    [Arguments]                 ${value.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.sub_brand_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.sub_brand_textField} 
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.sub_brand_textField}       ${value.sub_brand}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.sub_brand_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.sub_brand_dropdown}

Fill & Select Car year
    [Arguments]                 ${value.car_year}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_year_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.car_year_textField} 
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.car_year_textField}       ${value.car_year}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_year_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.car_year_dropdown}

Fill & Select Car power
    [Arguments]                 ${value.car_power}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_power_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.car_power_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.car_power_textField}       ${value.car_power}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_power_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.car_power_dropdown}

Fill & Select Car type
    [Arguments]                 ${value.car_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_type_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.car_type_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.car_type_textField}       ${value.car_type}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_type_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.car_type_dropdown}

Fill Hiree No
    [Arguments]                 ${value.hiree_no}
    SeleniumLibrary.Wait Until Page Contains    ${value.hiree_no_description}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.hiree_no_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.hiree_no_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.hiree_no_textField}       ${value.hiree_no}
    Set Global Variable    ${value.get_hiree_no_value}    ${value.hiree_no}

Click Hiree no search button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.hiree_no_search_button} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.hiree_no_search_button}

Check found/not found check premium list
    ${Result_premium_table}=      Run Keyword And Return Status    Element Should Not Be Visible       ${search_premium_filter_campaign_page.search_premium_not_found_text_dialog}
    
    ${column_insurer_values}    Create List
    ${column_insurance_type_values}    Create List
    ${column_coverage_amount_od_values}    Create List
    ${column_coverage_amount_ft_values}    Create List
    ${column_total_premium_values}    Create List
    ${column_driver_identification_values}    Create List
    ${column_repair_type_values}    Create List

    IF  '${Result_premium_table}' == 'True'
        search_premium_filter_campaign_page.Check "Premium result table" column header
        ${row_count}    Get Element Count    xpath=//table[@id="searchPremiumTable"]/tbody/tr
        # store all Customer value every row from search customer table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to first result row
            # บริษัทประกันภัย
            ${column_insurer_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[2]
            Append To List    ${column_insurer_values}    ${column_insurer_value}
            # ประเภทประกัน
            ${column_insurance_type_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[3]
            Append To List    ${column_insurance_type_values}    ${column_insurance_type_value}
            # ทุนประกันภัย (OD)
            ${column_coverage_amount_od_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_coverage_amount_od_values}    ${column_coverage_amount_od_value}
            # ทุนประกันภัย (FT)
            ${column_coverage_amount_ft_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[5]
            Append To List    ${column_coverage_amount_ft_values}    ${column_coverage_amount_ft_value}
            # เบี้ยประกันภัยรวม
            ${column_total_premium_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[6]
            Append To List    ${column_total_premium_values}    ${column_total_premium_value}
            # ระบุผู้ขับขี่
            ${column_driver_identification_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[7]
            Append To List    ${column_driver_identification_values}    ${column_driver_identification_value}
            # การจัดซ่อม
            ${column_repair_type_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[8]
            Append To List    ${column_repair_type_values}    ${column_repair_type_value}
        END
        Log     บริษัทประกันภัย values: ${column_insurer_values}
        Log     ประเภทประกัน values: ${column_insurance_type_values}
        Log     ทุนประกันภัย (OD) values: ${column_coverage_amount_od_values}
        Log     ทุนประกันภัย (FT) values: ${column_coverage_amount_ft_values}
        Log     เบี้ยประกันภัยรวม values: ${column_total_premium_values}
        Log     ระบุผู้ขับขี่ values: ${column_driver_identification_values}
        Log     การจัดซ่อม values: ${column_repair_type_values}
    ELSE
        Log    Search premium result = Not Found.
    END
    common.Wait for process 1s

Check search field and premium result should be reset
    search_premium_filter_campaign_page.Check validate message
    SeleniumLibrary.Element Should Be Visible       ${search_premium_filter_campaign_page.dataInfoEmpty}

Scroll down to check premium table
    Execute JavaScript    window.scrollTo(0,400)

Fill & Select Special Campaign 
    [Arguments]                 ${value.special_campaign}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.special_campaign_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.special_campaign_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.special_campaign_textField}       ${value.special_campaign}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.special_campaign_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.special_campaign_dropdown}

Select Special equipment
    [Arguments]                 ${value.special_equipment}
    SeleniumLibrary.Wait Until Page Contains    ${value.special_equipment_header}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.special_equipment_radioButton} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.special_equipment_radioButton}

Select have Special equipment
    SeleniumLibrary.Wait Until Page Contains    ${value.special_equipment_header}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.yes_special_equipment_radioButton} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.yes_special_equipment_radioButton}

Select Repair type
    [Arguments]                 ${value.repair_type}
    SeleniumLibrary.Wait Until Page Contains    ${value.repair_type_header}
    IF  '${value.repair_type}' == 'อู่ทั่วไป'
        search_premium_filter_campaign_page.Fill & Select Special Campaign   ${value.special_campaign}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.repairType_radioButton}
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.repairType_radioButton}
        # ในกรณีที่ "การจัดซ่อม = อู่ทั่วไป" จะต้องเคลียร์การเลือก โครงการพิเศษ
        ${check_special_campaign}=   Get Text  ${search_premium_filter_campaign_page.special_campaign_label}
        Should Be Empty    ${check_special_campaign}
    # "การจัดซ่อม = "ซ่อมศูนย์ / ทั้งหมด"
    ELSE
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.repairType_radioButton}
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.repairType_radioButton}
    END

# Click Repair type & search for checking result
#     [Arguments]                 ${value.special_campaign}
#     SeleniumLibrary.Wait Until Page Contains    ${value.repair_type_header}
#     @{Repair_type_list}    Create List   ${search_premium_filter_campaign_page.repair_cente_repairType_radioButton}    ${search_premium_filter_campaign_page.general_cente_repairType_radioButton}   ${search_premium_filter_campaign_page.all_cente_repairType_radioButton}
#     FOR    ${ELEMENT}    IN    @{Repair_type_list}
#         ${get_repair_type}=   Get Text  ${ELEMENT}
#         # "การจัดซ่อม = อู่ทั่วไป"
#         IF  '${get_repair_type}' == 'อู่ทั่วไป'
#             search_premium_filter_campaign_page.Fill & Select Special Campaign   ${value.special_campaign}
#             SeleniumLibrary.Wait Until Element Is Visible    ${ELEMENT} 
#             SeleniumLibrary.Click Element   ${ELEMENT}
#             # ในกรณีที่ "การจัดซ่อม = อู่ทั่วไป" จะต้องเคลียร์การเลือก โครงการพิเศษ
#             ${check_special_campaign}=   Get Text  ${search_premium_filter_campaign_page.special_campaign_label}
#             Should Be Empty    ${check_special_campaign}
#         # "การจัดซ่อม = "ซ่อมศูนย์ / ทั้งหมด"
#         ELSE
#             SeleniumLibrary.Wait Until Element Is Visible    ${ELEMENT} 
#             SeleniumLibrary.Click Element   ${ELEMENT}
#         END
#         search_premium_feature.Click search (normal) and check premium result
#         common.Scroll up to 800
#     END

Verify found premium by "Repair type"
    [Arguments]                 ${value.repair_type}     ${value.special_campaign}
    ${Result_premium_table}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${search_premium_filter_campaign_page.dataInfoEmpty}
    ${column_repair_type_values}    Create List
    IF  '${Result_premium_table}' == 'True'
        # in case of select repair centre or normal centre of repair type
        IF  '${value.repair_type}' == 'อู่ทั่วไป' or '${value.repair_type}' == 'ซ่อมศูนย์'
            ${row_count}    Get Element Count    xpath=//table[@id="searchPremiumTable"]/tbody/tr
            # store all premium value every row from search premium table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
            FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
                ${column_repair_type_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[8]
                Append To List    ${column_repair_type_values}    ${column_repair_type_value}
            END
            Log     all repair type values: ${column_repair_type_values}
            # check every value in ${column_repair_type_values} contains ${value.repair_type}
            FOR    ${repair_type}    IN    @{column_repair_type_values}
                ${Result_repair_type}=      Run Keyword And Return Status    Should Contain Any    ${repair_type}    ${value.repair_type}
                IF  '${Result_repair_type}' == 'True'
                    Log     ${repair_type} contain: ${value.repair_type}
                ELSE
                    Fail    ${repair_type}, ${value.repair_type} มีข้อมูลไม่ตรงกัน
                END
            END
        # in case of select all repair type
        ELSE
            ${row_count}    Get Element Count    xpath=//table[@id="searchPremiumTable"]/tbody/tr
            # store all premium value every row from search premium table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
            FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
                ${column_repair_type_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[8]
                IF  '${column_repair_type_value}' == 'อู่ทั่วไป' or '${column_repair_type_value}' == 'ซ่อมศูนย์'
                    Log    Found all repair type
                END
            END
        END
    ELSE
        Log    ไม่พบข้อมูลค่าเบี้ย โดย การจัดซ่อม : ${value.repair_type}
    END        

Select "add/not" and Fill & Select Gross premium code
    [Arguments]                 ${value.gross_code}
    SeleniumLibrary.Wait Until Page Contains    ${value.gross_code_header}
    # check user fill gross premium input or not
    ${Result_gross_code}=      Run Keyword And Return Status    Should Not Be Empty       ${value.gross_code}
    IF  '${Result_gross_code}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible   ${search_premium_filter_campaign_page.yes_gross_code_radioButton}
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.yes_gross_code_radioButton}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.gross_code_textField}
        SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.gross_code_textField} 
        SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.gross_code_textField}       ${value.gross_code}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.gross_code_dropdown} 
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.gross_code_dropdown}
    ELSE 
        # ในกรณีที่ ไม่ได้ใส่ค่า รวม พ.ร.บ. มาใน input จะทำการเลือก "ไม่มี" ให้อัตโนมัติ
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.no_gross_code_radioButton} 
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.no_gross_code_radioButton}
    END

Click Advance search button
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.advance_search_button} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.advance_search_button}

Select Insurer
    [Arguments]                 @{value.insurer}
    SeleniumLibrary.Wait Until Page Contains    ${value.insurer_header}
    ${Result_insurer}=        Run Keyword And Return Status    Should Not Be Empty       ${value.insurance_type}
    # insurer are found in input variable
    IF  '${Result_insurer}' == 'True'
        FOR    ${insurer_list}    IN    @{value.insurer}
            SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[contains(text(),'${insurer_list}')]
            SeleniumLibrary.Click Element   xpath=//span[contains(text(),'${insurer_list}')]
        END
    END

Select Insurance type
    [Arguments]                 @{value.insurance_type}
    SeleniumLibrary.Wait Until Page Contains    ${value.insurance_type_header}
    ${Result_insure_type}=        Run Keyword And Return Status    Should Not Be Empty       ${value.insurance_type}
    # insurance type are found in input variable
    IF  '${Result_insure_type}' == 'True'
        FOR    ${insure_type_list}    IN    @{value.insurance_type}
            # type 1 is always default selected
            IF  '${insure_type_list}' != 'ประเภท 1'
                SeleniumLibrary.Wait Until Element Is Visible    xpath=//span[text()=' ${insure_type_list}']
                SeleniumLibrary.Click Element   xpath=//span[text()=' ${insure_type_list}']
            END
        END
    END

Fill Select Coverage amount od
    [Arguments]                 ${value.coverage_amount_od}
    SeleniumLibrary.Wait Until Page Contains    ${value.coverage_amount_od_header}
    SeleniumLibrary.Wait Until Page Contains    ${value.coverage_amount_od_description}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.coverage_amount_od_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.coverage_amount_od_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.coverage_amount_od_textField}       ${value.coverage_amount_od}

Select Discount and percent
    [Arguments]                 ${value.discount_percent}
    SeleniumLibrary.Wait Until Page Contains    ${value.discount_header}
    # check user fill discount input or not
    ${Result_discount}=      Run Keyword And Return Status    Should Not Be Empty       ${value.discount_percent}
    IF  '${Result_discount}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.yes_discount_radioButton} 
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.yes_discount_radioButton}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.discount_percent_selection_box} 
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.discount_percent_selection_box}
        ${discount_percent_value}=         evaluate       '${value.discount_percent}'.replace(' ','')
        Set Global Variable    ${global_value.discount_percent}    ${discount_percent_value}
    ELSE 
        # ในกรณีที่ ไม่ได้ใส่ค่า ส่วนลดประวัติดี มาใน input จะทำการเลือก "ไม่มี" ให้อัตโนมัติ
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.no_discount_radioButton} 
        SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.no_discount_radioButton}
    END

Fill & Select Car color
    [Arguments]                 ${value.car_color}
    SeleniumLibrary.Wait Until Page Contains    ${value.car_color_header}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_color_textField}
    SeleniumLibrary.Clear Element Text      ${search_premium_filter_campaign_page.car_color_textField}
    SeleniumLibrary.Input Text  ${search_premium_filter_campaign_page.car_color_textField}       ${value.car_color}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.car_color_dropdown} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.car_color_dropdown}

Select Driver identification
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Page Contains    ${value.driver_birthday_header}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.yes_driver_birthday_radioButton} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.yes_driver_birthday_radioButton}
    common.Wait for process 2s

Select Driver 1 birthday
    [Arguments]                 ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}
    # driver1 birthdate
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${value.year_driver1_birthday}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${value.month_driver1_birthday}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${value.day_driver1_birthday}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.driver1_birthday_datepicker} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.driver1_birthday_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${value.year_driver1_birthday}
        common.Logic check how many times to click "Previous 24 button" linked to input desired year      ${input_year}
        # DD MM YYYY
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.year_driver1_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.year_driver1_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.month_driver1_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.month_driver1_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.day_driver1_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.day_driver1_birthday_button}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Select Driver 2 birthday logic
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Driver1 birthday 
    END 

Select Driver 2 birthday
    [Arguments]                 ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}
    # driver2 birthdate
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${value.year_driver2_birthday}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${value.month_driver2_birthday}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${value.day_driver2_birthday}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.driver2_birthday_datepicker} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.driver2_birthday_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${value.year_driver2_birthday}
        common.Logic check how many times to click "Previous 24 button" linked to input desired year      ${input_year}
        # DD MM YYYY
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.year_driver2_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.year_driver2_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.month_driver2_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.month_driver2_birthday_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.day_driver2_birthday_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.day_driver2_birthday_button}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Next step
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Driver2 birthday 
    END 

Select Start campaign effective date
    [Arguments]                 ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}
    SeleniumLibrary.Wait Until Page Contains    ${value.start_campaign_effective_date_header}
    # start campaign effective date
    ${Result_year}=       Run Keyword And Return Status    Should Not Be Empty       ${value.year_start_campaign_effective_date}
    ${Result_month}=      Run Keyword And Return Status    Should Not Be Empty       ${value.month_start_campaign_effective_date}
    ${Result_day}=        Run Keyword And Return Status    Should Not Be Empty       ${value.day_start_campaign_effective_date}
    # all year month day values are found in input variable
    IF  '${Result_year}' == 'True' and '${Result_month}' == 'True' and '${Result_day}' == 'True'
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.start_campaign_effective_date_datepicker} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.start_campaign_effective_date_datepicker}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.choose_month_and_year_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.choose_month_and_year_button}
        # Logic check how many times to click "Previous or Next 24 button" linked to input desired year
        Set Global Variable    ${input_year}    ${value.year_start_campaign_effective_date}
        common.Logic check how many times to click "Previous or Next 24 button" linked to input desired year   ${input_year}
        # start date
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.year_start_campaign_effective_date_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.year_start_campaign_effective_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.month_start_campaign_effective_date_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.month_start_campaign_effective_date_button}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.day_start_campaign_effective_date_button} 
        SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.day_start_campaign_effective_date_button}
    # all year month day values are not found in input variable
    ELSE IF   '${Result_year}' == 'False' and '${Result_month}' == 'False' and '${Result_day}' == 'False'
        Log     Go to Next step
    # some of year month day values are not found in input variable 
    ELSE
        Fail    Error!! Please, Complete all input Year/Month/Day of Start campaign effective date
    END 

Select campaign checkbox
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.select_campaign_checkbox} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.select_campaign_checkbox}

Get campaign column
    # SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.select_campaign_checkbox} 
    # ${for_value}=   Get Element Attribute  ${search_premium_filter_campaign_page.select_campaign_checkbox}  value
    # Log  ${for_value}
    # # store campaign selection value
    # ${substring} =     Split String    ${for_value}    ' 
    # FOR    ${item}    IN    @{substring}
    #     Log     ${value.count} = ${item}
    #     ${value.count} =    Evaluate    ${value.count} + 1
    # END
    # # coverage amount od (ทุนประกันภัย (OD))
    # ${coverage_amount_od}=         evaluate       '${substring}[40]'.replace(':','')
    # ${set_coverage_amount_od}=         evaluate       '${coverage_amount_od}'.replace(',','') if ',' in '${coverage_amount_od}' else '${coverage_amount_od}'
    # # total premium (เบี้ยประกันภัยรวม)
    # ${total_premium_value}=         evaluate       '${substring}[44]'.replace(':','')
    # ${replace_total_premium_value}=         evaluate       '${total_premium_value}'.replace(',','') if ',' in '${total_premium_value}' else '${total_premium_value}'
    # ${2decimal_total_premium_value}=         evaluate       round(${replace_total_premium_value}, 2)
    # # repair type (การจัดซ่อม)
    # ${repair_type}      Get Text        ${search_premium_filter_campaign_page.campaign_column_repair_type}

    # insurer (บริษัทประกันภัย)
    ${get_campaign_column_insurer}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_insurer}
    # insurance type (ประเภทประกัน)
    ${get_campaign_column_insurance_type}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_insurance_type}
    # coverage amount od (ทุนประกันภัย (OD))
    ${get_campaign_column_coverage_amount_od}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_coverage_amount_od}
    ${set_coverage_amount_od}=         evaluate       '${get_campaign_column_coverage_amount_od}'.replace(',','') if ',' in '${get_campaign_column_coverage_amount_od}' else '${get_campaign_column_coverage_amount_od}'
    # total premium (เบี้ยประกันภัยรวม)
    ${get_campaign_column_total_premium}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_total_premium}
    ${replace_total_premium_value}=         evaluate       '${get_campaign_column_total_premium}'.replace(',','') if ',' in '${get_campaign_column_total_premium}' else '${get_campaign_column_total_premium}'
    IF  '${replace_total_premium_value}' == '0.00'
        ${set_total_premium_value}=         Set Variable    0
    ELSE
        ${set_total_premium_value}=         evaluate       round(${replace_total_premium_value}, 2)
    END
    # repair type (การจัดซ่อม)
    ${get_campaign_column_repair_type}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_repair_type}
    # campaign name (แคมเปญ (กดเพื่อดูรายละเอียด))
    ${get_campaign_column_campaign_name}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_campaign(link)_name}

    Set Global Variable    ${value.get_campaign_result_column_insurer}                ${get_campaign_column_insurer}
    Set Global Variable    ${value.get_campaign_result_column_insurance_type}         ${get_campaign_column_insurance_type}
    Set Global Variable    ${value.get_campaign_result_column_amount_od}              ${set_coverage_amount_od}
    Set Global Variable    ${value.get_campaign_result_column_total_premium_value}    ${set_total_premium_value}
    Set Global Variable    ${value.get_campaign_result_column_repair_type_value}      ${get_campaign_column_repair_type}
    Set Global Variable    ${value.get_campaign_result_column_campaign_name_value}    ${get_campaign_column_campaign_name}

Get campaign column (Tisco renew table)
    # insurer (บริษัทประกันภัย)
    ${get_campaign_column_insurer}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_renew_table_insurer}
    # insurance type (ประเภทประกัน)
    ${get_campaign_column_insurance_type}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_renew_table_insurance_type}
    # coverage amount od (ทุนประกันภัย (OD))
    ${get_campaign_column_coverage_amount_od}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_renew_table_coverage_amount_od}
    ${set_coverage_amount_od}=         evaluate       '${get_campaign_column_coverage_amount_od}'.replace(',','') if ',' in '${get_campaign_column_coverage_amount_od}' else '${get_campaign_column_coverage_amount_od}'
    # total premium (เบี้ยประกันภัยรวม)
    ${get_campaign_column_total_premium}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_renew_table_total_premium}
    ${replace_total_premium_value}=         evaluate       '${get_campaign_column_total_premium}'.replace(',','') if ',' in '${get_campaign_column_total_premium}' else '${get_campaign_column_total_premium}'
    IF  '${replace_total_premium_value}' == '0.00'
        ${set_total_premium_value}=         Set Variable    0
    ELSE
        ${set_total_premium_value}=         evaluate       round(${replace_total_premium_value}, 2)
    END
    # campaign name (แคมเปญ)
    ${get_campaign_column_campaign_name}=   Get Text  ${search_premium_filter_campaign_page.campaign_column_renew_table_campaign_name}

    Set Global Variable    ${value.get_campaign_result_column_insurer}                ${get_campaign_column_insurer}
    Set Global Variable    ${value.get_campaign_result_column_insurance_type}         ${get_campaign_column_insurance_type}
    Set Global Variable    ${value.get_campaign_result_column_amount_od}              ${set_coverage_amount_od}
    Set Global Variable    ${value.get_campaign_result_column_total_premium_value}    ${set_total_premium_value}
    Set Global Variable    ${value.get_campaign_result_column_repair_type_value}      -
    Set Global Variable    ${value.get_campaign_result_column_campaign_name_value}    ${get_campaign_column_campaign_name}

Check campaign card 
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.campaign_card_detail}
    # get campaign name from campaign card (แคมเปญ)
    ${get_campaign_card_header_campaign_name}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_header_campaign_name}
    Log  แคมเปญ : ${get_campaign_card_header_campaign_name}
    # get insurer from campaign card (บริษัทประกันภัย)
    ${get_campaign_card_detail_insurer}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_insurer}
    Log  บริษัทประกันภัย : ${get_campaign_card_detail_insurer}
    # get insurance type from campaign card (ประเภทประกันภัย)
    ${get_campaign_card_detail_insurance_type_and_repair_type}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_insurance_type_and_repair_type}
    Log  ประเภทประกันภัย : ${get_campaign_card_detail_insurance_type_and_repair_type}
    # get coverage amount od from campaign card (ทุนประกันภัย (บาท))
    ${get_campaign_card_detail_coverage_amount_od}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_coverage_amount_od}
    ${get_campaign_card_detail_coverage_amount_od}=         evaluate       '${get_campaign_card_detail_coverage_amount_od}'.replace(' บาท','')
    ${replace_campaign_card_detail_coverage_amount_od}=         evaluate       '${get_campaign_card_detail_coverage_amount_od}'.replace(',','') if ',' in '${get_campaign_card_detail_coverage_amount_od}' else '${get_campaign_card_detail_coverage_amount_od}'
    Log  ทุนประกันภัย (บาท) : ${replace_campaign_card_detail_coverage_amount_od}
    # get total premium value from campaign card (เบี้ยประกันภัย (บาท))
    ${get_campaign_card_detail_total_premium_value}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_total_premium_value}
    ${get_campaign_card_detail_total_premium_value}=         evaluate       '${get_campaign_card_detail_total_premium_value}'.replace(' บาท','')
    ${replace_campaign_card_detail_total_premium_value}=         evaluate       '${get_campaign_card_detail_total_premium_value}'.replace(',','') if ',' in '${get_campaign_card_detail_total_premium_value}' else '${get_campaign_card_detail_total_premium_value}'
    IF  '${replace_campaign_card_detail_total_premium_value}' == '0'
        ${2decimal_campaign_card_detail_total_premium_value}=         Set Variable    0
    ELSE
        ${2decimal_campaign_card_detail_total_premium_value}=         evaluate       round(${replace_campaign_card_detail_total_premium_value}, 2)
        ${2decimal_campaign_card_detail_total_premium_value}=    convert to number   ${2decimal_campaign_card_detail_total_premium_value}   
    END
    Log  เบี้ยประกันภัย (บาท) : ${2decimal_campaign_card_detail_total_premium_value}
    # get gross value from campaign card (รวมค่าเบี้ยประกันภัย (พ.ร.บ.))
    ${get_campaign_card_detail_gross_value}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_gross_value}
    ${get_campaign_card_detail_gross_value}=         evaluate       '${get_campaign_card_detail_gross_value}'.replace(' บาท','')
    ${get_campaign_card_detail_gross_value}=    evaluate       '${get_campaign_card_detail_gross_value}'.replace(',','') if ',' in '${get_campaign_card_detail_gross_value}' else '${get_campaign_card_detail_gross_value}'
    ${get_campaign_card_detail_gross_value}=    convert to number   ${get_campaign_card_detail_gross_value}     
    Log  พ.ร.บ : ${get_campaign_card_detail_gross_value}
    # get total gross premium value from result campaign card
    ${value.count1}=    Set Variable    0 
    ${get_campaign_card_detail_total_gross_premium_value}=   Get Text  ${search_premium_filter_campaign_page.campaign_card_detail_total_gross_premium_value}
    ${substring_get_campaign_card_detail_total_gross_premium_value} =     Split String    ${get_campaign_card_detail_total_gross_premium_value}    ${SPACE} 
    FOR    ${item}    IN    @{substring_get_campaign_card_detail_total_gross_premium_value}
        Log     ${value.count1} = ${item}
        ${value.count1} =    Evaluate    ${value.count1} + 1
    END
    ${replace_campaign_card_detail_total_gross_premium_value}=         evaluate       '${substring_get_campaign_card_detail_total_gross_premium_value}[2]'.replace(',','')
    ${replace_campaign_card_detail_total_gross_premium_value}=         evaluate       '${replace_campaign_card_detail_total_gross_premium_value}'.replace(' บาท','')
    ${round_campaign_card_detail_total_gross_premium_value}=     Evaluate    round(${replace_campaign_card_detail_total_gross_premium_value}, 2)
    Log  รวมค่าเบี้ยประกันภัย (พ.ร.บ.) : ${round_campaign_card_detail_total_gross_premium_value}
    # calculation gross premium value from gross value & total premium value
    ${gross_premium_value}=     Evaluate    ${2decimal_campaign_card_detail_total_premium_value} + ${get_campaign_card_detail_gross_value}
    ${round_gross_premium_value}=     Evaluate    round(${gross_premium_value}, 2)
    Log  คำนวณรวมค่าเบี้ยประกันภัย (พ.ร.บ.) : ${round_gross_premium_value}

    Set Global Variable    ${value_grobal.campaign_card_header_campaign_name}                      ${get_campaign_card_header_campaign_name}
    Set Global Variable    ${value_grobal.campaign_card_detail_insurer}                            ${get_campaign_card_detail_insurer}
    Set Global Variable    ${value_grobal.campaign_card_detail_insurance_type_and_repair_type}     ${get_campaign_card_detail_insurance_type_and_repair_type}
    Set Global Variable    ${value_grobal.campaign_card_detail_coverage_amount_od}                 ${replace_campaign_card_detail_coverage_amount_od}
    Set Global Variable    ${value_grobal.campaign_card_detail_total_premium_value}                ${2decimal_campaign_card_detail_total_premium_value}
    Set Global Variable    ${value_grobal.round_gross_premium_value}                               ${round_gross_premium_value}
    Set Global Variable    ${value_grobal.round_campaign_card_detail_total_gross_premium_value}    ${round_campaign_card_detail_total_gross_premium_value}
    search_premium_filter_campaign_page.Verify all value between "Campaign card" and "Campaign column"    

Verify all value between "Campaign card" and "Campaign column"
    # verify campaign name between campaign card detail and campaign column table
    ${Result_campaign_name}=      Run Keyword And Return Status    Should Contain Any    ${value_grobal.campaign_card_header_campaign_name}    ${value.get_campaign_result_column_campaign_name_value}
    IF  '${Result_campaign_name}' == 'False'
        Fail     Value from campaign card: ${value_grobal.campaign_card_header_campaign_name}, Value from campaign column: ${value.get_campaign_result_column_campaign_name_value}
    END
    # compare value between campaign card detail and campaign column table
    @{get_campaign_detail_card}    Create List    ${value_grobal.campaign_card_detail_insurer}   ${value_grobal.campaign_card_detail_coverage_amount_od}     ${value_grobal.campaign_card_detail_total_premium_value}
    @{get_campaign_detail_column}    Create List    ${value.get_campaign_result_column_insurer}     ${value.get_campaign_result_column_amount_od}     ${value.get_campaign_result_column_total_premium_value}
    FOR    ${ELEMENT}    IN     @{get_campaign_detail_card}
        IF  '${ELEMENT}' != '${get_campaign_detail_column}[${value.count}]'
            Fail    Error! not equal : get_campaign_detail_card = ${ELEMENT} , get_campaign_detail_column = ${get_campaign_detail_column}[${value.count}]
        END
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    # compare insurance type between campaign card detail and campaign column table
    Should Contain Any    ${value_grobal.campaign_card_detail_insurance_type_and_repair_type}      ${value.get_campaign_result_column_insurance_type}
    # compare gross premium value between campaign card and calculation
    ${diff} =    Evaluate    abs(${value_grobal.round_gross_premium_value} - ${value_grobal.round_campaign_card_detail_total_gross_premium_value})
    ${tolerance}=         Set Variable    0.1
    IF  ${diff} <= ${tolerance}
        Log     The numbers are almost equal: ${value_grobal.round_gross_premium_value}, ${value_grobal.round_campaign_card_detail_total_gross_premium_value}
    ELSE    
        Fail    The numbers are not equal: ${value_grobal.round_gross_premium_value}, ${value_grobal.round_campaign_card_detail_total_gross_premium_value}
    END

Verify found premium by "Coverage amount od"
    [Arguments]                 ${value.coverage_amount_od}
    ${Result_premium_table}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${search_premium_filter_campaign_page.dataInfoEmpty}
    ${column_coverage_amount_od_values}    Create List
    IF  '${Result_premium_table}' == 'True'
        ${row_count}    Get Element Count    xpath=//table[@id="searchPremiumTable"]/tbody/tr
        # store all premium value every row from search premium table (เอาแค่ผลลัพธ์หน้าแรก 5 row มาเช็คก่อน)
        FOR    ${row_index}    IN RANGE    1    ${row_count}+1   # Start from 1 to final result row
            ${column_coverage_amount_od_value}    Get Text    xpath=//table[@id="searchPremiumTable"]/tbody/tr[${row_index}]/td[4]
            Append To List    ${column_coverage_amount_od_values}    ${column_coverage_amount_od_value}
        END
        Log     all Coverage amount od values: ${column_coverage_amount_od_values}
        # check every value in ${column_coverage_amount_od_values} contains ${value.coverage_amount_od}
        FOR    ${coverage_amount_od}    IN    @{column_coverage_amount_od_values}
            ${replace_coverage_amount_od}=         evaluate       '${coverage_amount_od}'.replace(',','') if ',' in '${coverage_amount_od}' else '${coverage_amount_od}'
            ${Result_coverage_amount_od}=      Run Keyword And Return Status    Should Contain Any    ${replace_coverage_amount_od}    ${value.coverage_amount_od}
            IF  '${Result_coverage_amount_od}' == 'True'
                Log     ${replace_coverage_amount_od} contain: ${value.coverage_amount_od}
            ELSE
                Fail    ${replace_coverage_amount_od}, ${value.coverage_amount_od} มีข้อมูลไม่ตรงกัน
            END
        END
    ELSE
        Log    ไม่พบข้อมูลค่าเบี้ย โดย จำนวนเงินทุนประกัน : ${value.coverage_amount_od}
    END        

Click Reset campaign selection button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.default_reset_campaign_button} 
    SeleniumLibrary.Click Button    ${search_premium_filter_campaign_page.default_reset_campaign_button} 

Check campaign card should be disappeared
    SeleniumLibrary.Element Should Not Be Visible       ${search_premium_filter_campaign_page.campaign_card_detail}

Check validate message
    ${value.count}=    Set Variable    0
    @{check_validate_message_after_changing_cus_type}   Create List    กรุณาเลือก ยี่ห้อรถ      กรุณาเลือก รุ่นรถ       กรุณาเลือก รุ่นรถย่อย    กรุณาเลือก ปีที่จดทะเบียน     กรุณาเลือก ลักษณะการใช้งาน      กรุณาเลือก ขนาดเครื่องยนต์       กรุณาระบุ จำนวนเงินทุนประกัน
    FOR    ${text}    IN    @{check_validate_message_after_changing_cus_type}
        ${Result_validate_message}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_validate_message}' == 'True'
            Log     Validate message (แสดงถูกต้อง) = ${check_validate_message_after_changing_cus_type}[${value.count}]
        ELSE
            Fail    Validate message (แสดงไม่ถูกต้อง) = ${check_validate_message_after_changing_cus_type}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END

Verify turn new customer to existing customer correctly
    ${value.count}=    Set Variable    0
    @{check_existing_input_field_header_message}    Create List    App Code / Account      ชื่อลูกค้า      นามสกุลลูกค้า      เลขทะเบียนรถ
    FOR    ${text}    IN    @{check_existing_input_field_header_message}
        ${Result_existing_input_field}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_existing_input_field}' == 'True'
            Log     ตรวจสอบชื่อ input field = ${check_existing_input_field_header_message}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END

Click "Previous" button to search premium main page button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.previous_to_search_premium_main_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.previous_to_search_premium_main_button}
    # check some element in main page
    SeleniumLibrary.Element Should Not Be Visible    ${search_premium_filter_campaign_page.advance_search_button}

Check Campaign Selection modal
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.campaign_selection_modal} 

Click Campaign comparison selection button
    common.Scroll down to 1200
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.campaign_comparison_selection_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.campaign_comparison_selection_button}
    search_premium_filter_campaign_page.Check Campaign Selection modal

Click "Yes" to confirm campaign selection button
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.yes_campaign_selection_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.yes_campaign_selection_button}

Click "No" to cancel campaign selection button
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.no_campaign_selection_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.no_campaign_selection_button}

Check Calculation page should not be available
    common.Wait for process 3s
    common.Scroll up to 800
    SeleniumLibrary.Element Should Not Be Visible    ${search_premium_filter_campaign_page.calculation_page_labelLink} 

Get "Car information" after search premium
    # ยี่ห้อรถ
    ${get_brand}=   Get Element Attribute  ${search_premium_filter_campaign_page.brand_label}        value
    Log  Brand : ${get_brand}
    Set Global Variable    ${value.get_brand}    ${get_brand}
    # รุ่นรถ
    ${get_main_model}=   Get Element Attribute  ${search_premium_filter_campaign_page.main_model_label}        value
    Log  Main model : ${get_main_model}
    Set Global Variable    ${value.get_main_model}    ${get_main_model}
    # รุ่นรถย่อย
    ${get_sub_brand}=   Get Element Attribute  ${search_premium_filter_campaign_page.sub_brand_label}        value
    Log  Sub brand : ${get_sub_brand}
    Set Global Variable    ${value.get_sub_brand}    ${get_sub_brand}
    # ปีที่จดทะเบียน
    ${get_car_year}=   Get Element Attribute  ${search_premium_filter_campaign_page.car_year_label}        value
    Log  Car year : ${get_car_year}
    Set Global Variable    ${value.get_car_year}    ${get_car_year}
    # ลักษณะการใช้งาน
    ${get_car_type}=   Get Element Attribute  ${search_premium_filter_campaign_page.car_type_label}        value
    Log  Car type : ${get_car_type}
    Set Global Variable    ${value.get_car_type}    ${get_car_type}
    # ขนาดเครื่องยนต์ (ซีซี.)
    ${get_car_power}=   Get Element Attribute  ${search_premium_filter_campaign_page.car_power_label}        value
    Log  Car power : ${get_car_power}
    Set Global Variable    ${value.get_car_power}    ${get_car_power}
    # โครงการพิเศษ
    ${get_special_campaign}=   Get Element Attribute       ${search_premium_filter_campaign_page.special_campaign_label}        value
    Log  Special campaign : ${get_special_campaign}
    Set Global Variable    ${value.get_special_campaign}    ${get_special_campaign}

Check car information in Calculation page
    ${value.count}=    Set Variable    0
    ${text_car_value}    Create List    ${value.get_brand}    ${value.get_main_model}    ${value.get_sub_brand}    ${value.get_car_year}    ${value.get_car_type}     ${value.get_car_power}  
    FOR    ${text}    IN    @{text_car_value}
        ${Result_car_value}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_car_value}' == 'True'
            Log  พบข้อมูลรถยนต์ตรงกับที่เลือก = ${text_car_value}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลรถยนต์ตรงกับที่เลือก = ${text_car_value}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END

Check normal car search text header 
    ${text_carTextHeader}    Create List    ${search_premium_filter_campaign_page.brand_header}    ${search_premium_filter_campaign_page.main_model_header}    ${search_premium_filter_campaign_page.sub_brand_header}    ${search_premium_filter_campaign_page.car_year_header}    ${search_premium_filter_campaign_page.car_type_header}     ${search_premium_filter_campaign_page.car_power_header}      ${search_premium_filter_campaign_page.special_campaign_header}    ${search_premium_filter_campaign_page.special_equipment_header}
    FOR    ${text}    IN    @{text_carTextHeader}
        SeleniumLibrary.Wait Until Element Is Visible    ${text}
    END

Click "Select" to changing customer type button
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.select_changing_customer_type_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.select_changing_customer_type_button}

Click "Continue editing" to cancel changing customer type button
    common.Wait for process 3s
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.continue_editing_button} 
    SeleniumLibrary.Click Button   ${search_premium_filter_campaign_page.continue_editing_button}

Click "Campaign link" of premium campaign result
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.campaign_detail_labelLink}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.campaign_detail_labelLink}

Check "Premium Condition policy" tab
    # เงื่อนไขการรับประกัน(tab in premium modal)
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.premium_condition_policy_tab} 
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.premium_condition_policy_tab}
    # use same verifying car information as Premium calculation page 
    search_premium_filter_campaign_page.Check car information in "Premium Condition policy" tab

Check car information in "Premium Condition policy" tab
    # check car information text label
    ${value.count}=    Set Variable    0
    ${text_car_label}    Create List    ยี่ห้อรถยนต์    รุ่นรถยนต์     รุ่นรถย่อย     ขนาดเครื่องยนต์    ปีที่จดทะเบียน      วันที่เริ่มใช้    วันที่สิ้นสุด     ส่วนลดประวัติดี     โครงการพิเศษ
    FOR    ${text}    IN    @{text_car_label}
        ${Result_text_car}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_text_car}' == 'True'
            Log  Found text label = ${text_car_label}[${value.count}]
        ELSE
            Fail  Not found text label = ${text_car_label}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    # check car information value
    ${value.count}=    Set Variable    0
    ${text_car_value}    Create List    ${value.get_brand}   ${value.get_main_model}   ${value.get_sub_brand}   ${value.get_car_year}   ${value.get_car_power}   ${value.get_special_campaign}
    FOR    ${value}    IN    @{text_car_value}
        ${Result_car_value}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${value}
        IF  '${Result_car_value}' == 'True'
            Log  พบข้อมูลรถยนต์ตรงกับที่เลือก = ${text_car_value}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลรถยนต์ตรงกับที่เลือก = ${text_car_value}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    
Check "Coverage detail" tab
    # รายละเอียดความคุ้มครอง(tab in premium modal)
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.coverage_detail_tab}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.coverage_detail_tab}
    common.Wait for process 1s
    search_premium_filter_campaign_page.Check coverage insurance detail on modal

Check coverage insurance detail on modal
    ${value.count}=    Set Variable    0
    ${text_coverage_detail_section1}    Create List    แคมเปญ      โครงการพิเศษ       ประเภทประกันภัย       การจัดซ่อม     ทุนประกันภัย    ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร)      รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ        ความรับผิดต่อบุคคลภายนอก  ชีวิต ร่างกาย อนามัย  ต่อคน      ความรับผิดต่อบุคคลภายนอก  ชีวิต ร่างกาย อนามัย  ต่อครั้ง    ความรับผิดต่อบุคคลภายนอก  ความเสียหายต่อทรัพย์สิน    ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง    ทุนประกันภัย ความเสียหายต่อรถยนต์     ทุนประกันภัย รถยนต์สูญหาย ไฟไหม้     ความเสียหายต่อตัวรถยนต์ ส่วนแรก      อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร     ค่ารักษาพยาบาล      การประกันตัวผู้ขับขี่    ค่า พ.ร.บ.   รวมยอดค่าเบี้ยประกันภัย และ พ.ร.บ.
    FOR    ${text}    IN    @{text_coverage_detail_section1}
        ${Result_text_coverage_detail}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_text_coverage_detail}' == 'True'
            Log  พบข้อมูลรายละเอียดความคุ้มครอง = ${text_coverage_detail_section1}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${text_coverage_detail_section1}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END
    search_premium_filter_campaign_page.Verify "Insurer" in campaign coverage details
    search_premium_filter_campaign_page.Verify "Insurance type" in campaign coverage details
    search_premium_filter_campaign_page.Verify "Repair type" in campaign coverage details
    search_premium_filter_campaign_page.Verify "Voluntary car insurance premium value" in campaign coverage details
    search_premium_filter_campaign_page.Verify "Gross value" in campaign coverage details
    search_premium_filter_campaign_page.Verify "Total gross premium value" in campaign coverage details

Verify "Insurer" in campaign coverage details
    # get Insurer (บริษัทประกันภัย)
    ${get_insurer_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_insurer_value}
    # compare value from column to modal
    IF  '${get_insurer_value}' == '${value.get_campaign_result_column_insurer}'
        Log     matching value = ${get_insurer_value}
    ELSE
        Fail    not matching value = ${get_insurer_value} , ${value.get_campaign_result_column_insurer}
    END

Verify "Insurance type" in campaign coverage details
    # get Insurance type (ประเภทประกันภัย)
    ${get_insurance_type_text}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_insurance_type_text}
    ${get_insurance_type_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_insurance_type_value}
    # compare value from column to modal
    IF  '${get_insurance_type_value}' == '${value.get_campaign_result_column_insurance_type}'
        Log     matching value = ${get_insurance_type_value}
    ELSE
        Fail    not matching value = ${get_insurance_type_value} , ${value.get_campaign_result_column_insurance_type}
    END

Verify "Repair type" in campaign coverage details
    # get Repair type (การจัดซ่อม)
    ${get_repair_type_text}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_repair_type_text}
    ${get_repair_type_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_repair_type_value}
    # compare value from column to modal
    Should Contain Any    ${get_repair_type_value}      ${value.get_campaign_result_column_repair_type_value}

Verify "Voluntary car insurance premium value" in campaign coverage details
    # get Voluntary car insurance premium (ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร))
    ${get_voluntary_car_insurance_premium_text}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_voluntary_car_insurance_premium_text}
    ${get_voluntary_car_insurance_premium_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_voluntary_car_insurance_premium_value}
    ${get_campaign_details_modal_voluntary_car_insurance_premium_value}=         Evaluate       '${get_voluntary_car_insurance_premium_value}'.replace(',','') if ',' in '${get_voluntary_car_insurance_premium_value}' else '${get_voluntary_car_insurance_premium_value}'
    Log     ${get_voluntary_car_insurance_premium_text} = ${get_campaign_details_modal_voluntary_car_insurance_premium_value}
    # compare value from column to modal
    Should Be Equal As Numbers    ${value.get_campaign_result_column_total_premium_value}    ${get_campaign_details_modal_voluntary_car_insurance_premium_value}    tolerance=0.1
    Set Global Variable    ${value.get_campaign_details_modal_voluntary_car_insurance_premium_value}    ${get_campaign_details_modal_voluntary_car_insurance_premium_value}

Verify "Gross value" in campaign coverage details
    # get Gross (ค่า พ.ร.บ.)
    ${get_gross_text}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_gross_text}
    ${get_gross_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_gross_value}
    ${get_campaign_details_modal_gross_value}=         Evaluate       '${get_gross_value}'.replace(',','') if ',' in '${get_gross_value}' else '${get_gross_value}'
    ${get_campaign_details_modal_gross_value}=    convert to number   ${get_campaign_details_modal_gross_value}     
    Log     ${get_gross_text} = ${get_campaign_details_modal_gross_value}
    Set Global Variable    ${value.get_campaign_details_modal_gross_value}    ${get_campaign_details_modal_gross_value}

Verify "Total gross premium value" in campaign coverage details
    # get Total gross premium  (รวมยอดค่าเบี้ยประกันภัย และ พ.ร.บ.)
    ${get_total_gross_premium_text}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_total_gross_premium_text}
    ${get_total_gross_premium_value}=    Get Text    ${search_premium_filter_campaign_page.view_more_campaign_total_gross_premium_value}
    ${converted_total_gross_premium_value}=         Evaluate       '${get_total_gross_premium_value}'.replace(',','') if ',' in '${get_total_gross_premium_value}' else '${get_total_gross_premium_value}'
    ${converted_total_gross_premium_value}=    convert to number   ${converted_total_gross_premium_value}   
    ${round_total_gross_premium_value}=     Evaluate    round(${converted_total_gross_premium_value}, 2)
    Log     ${get_total_gross_premium_text} = ${round_total_gross_premium_value}
    # calculation of Voluntary car insurance premium value & Gross value
    ${calculation_of_total_gross_premium_value}=         Evaluate       ${value.get_campaign_details_modal_voluntary_car_insurance_premium_value} + ${value.get_campaign_details_modal_gross_value}
    ${round_calculation_of_total_gross_premium_value}=     Evaluate    round(${calculation_of_total_gross_premium_value}, 2)
    Log     คำนวณรวมยอดค่าเบี้ยประกันภัย และ พ.ร.บ. = ${round_calculation_of_total_gross_premium_value}
    # compare gross premium value from campaign card & calculation
    ${diff} =    Evaluate    abs(${round_total_gross_premium_value} - ${round_calculation_of_total_gross_premium_value})
    ${tolerance}=         Set Variable    0.1
    IF  ${diff} <= ${tolerance}
        Log     The numbers are almost equal: ${round_total_gross_premium_value}, ${round_calculation_of_total_gross_premium_value}
    ELSE    
        Fail    The numbers are not equal: ${round_total_gross_premium_value}, ${round_calculation_of_total_gross_premium_value}
    END

Check "Special coverage rights" tab
    # สิทธิประโยชน์และความคุ้มครองพิเศษ(tab in premium modal)
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.special_coverage_rights_tab}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.special_coverage_rights_tab}
    common.Wait for process 1s

Check "Premium result table" column header
    ${value.count}=    Set Variable    0
    ${text_premium_result_table_column_header}    Create List    บริษัทประกันภัย    แคมเปญ (กดเพื่อดูรายละเอียด)    วันสิ้นสุดแคมเปญ    ประเภทประกัน     ระบุผู้ขับขี่     ทุนประกันภัย (OD)      ทุนประกันภัย (FT)      เบี้ยประกันภัยรวม   การจัดซ่อม
    FOR    ${text}    IN    @{text_premium_result_table_column_header}
        ${Result_text_premium_result_table_column}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text}
        IF  '${Result_text_premium_result_table_column}' == 'True'
            Log  ผลการค้นหาค่าเบี้ยประกันภัย(Column header) = ${text_premium_result_table_column_header}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${text_premium_result_table_column_header}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END

Click Save premium history button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.save_premium_history_button}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.save_premium_history_button}

Click "Confirm" to Save premium history button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_premium_filter_campaign_page.confirm_save_premium_history_button}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.confirm_save_premium_history_button}
    common.Wait for process 7s

Get UW code and close Completed UW Code modal
    ${getUWcode}=    Get Text    ${search_premium_filter_campaign_page.generate_uw_code}
    Set Global Variable    ${value.getUWcodeFromModal}    ${getUWcode}
    Log     Generated UW code = ${getUWcode}
    SeleniumLibrary.Wait Until Element Is Visible       ${search_premium_filter_campaign_page.ok_uw_code_generate_button}
    SeleniumLibrary.Click Element   ${search_premium_filter_campaign_page.ok_uw_code_generate_button}

Verify All input field are cleaned up 
    search_premium_filter_campaign_page.Check validate message

