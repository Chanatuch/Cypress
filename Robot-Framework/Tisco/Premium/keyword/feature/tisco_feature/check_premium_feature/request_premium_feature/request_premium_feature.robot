***Keywords***
# sub flow
# sub case
Click request premium form tab & Select New customer
    common.Click Request Premium form tab
    request_premium_form_main_page.Select New Customer

Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table"
    request_premium_drafting_main_page.Verify matching UW No from in Request Premium drafting
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Brand / Model column
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for License No column
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Check premium type column
    request_premium_drafting_main_page.Verify Request Premium status column is "Drafting" 

Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table" for (Tisco customer)
    request_premium_drafting_main_page.Verify matching UW No from in Request Premium drafting
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Check premium type column
    request_premium_drafting_main_page.Verify Request Premium status column is "Drafting" 
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column

Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table" for (Hiree no)
    request_premium_drafting_main_page.Verify matching UW No from in Request Premium drafting
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Check premium type column
    request_premium_drafting_main_page.Verify Request Premium status column is "Drafting"
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column 

Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table"
    request_premium_list_main_page.Verify matching UW No from in Request Premium list
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Customer column
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Brand / Model column
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for License No column
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column
    request_premium_list_main_page.Verify Request Premium status column is "Pending" 

Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table" for (Tisco customer)
    request_premium_list_main_page.Verify matching UW No from in Request Premium list
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column
    request_premium_list_main_page.Verify Request Premium status column is "Pending" 
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Ref No column 

Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table" (Hiree no)
    request_premium_list_main_page.Verify matching UW No from in Request Premium list
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column
    request_premium_list_main_page.Verify Request Premium status column is "Pending" 
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Ref No column 

Access search premium tab (Existing cus) & input App code/Account
    [Arguments]                 ${input_form.App_code}   ${input_form.Account}
    common.Click Request Premium form tab
    request_premium_form_main_page.Select Existing Customer
    request_premium_form_main_page.Select App code    $${input_form.App_code}
    request_premium_form_main_page.Fill Account       ${input_form.Account}

Click search & check found existing customer by App Code / Account
    common.Wait for process 3s
    request_premium_form_main_page.Click Search button
    Sleep   12s
    request_premium_form_main_page.Check found existing customer by App Code / Account

Select desired Tisco customer
    [Arguments]                 ${input_form.App_code}   ${input_form.Account}
    request_premium_feature.Access search premium tab (Existing cus) & input App code/Account   ${input_form.App_code}   ${input_form.Account}
    request_premium_feature.Click search & check found existing customer by App Code / Account
    request_premium_form_main_page.Get "All values" from searchCustomerRequestCompany Table
    request_premium_form_main_page.Select desired Existing Customer
    common.Wait for process 3s
    request_premium_form_fill_page.Verify "Tisco Customer description" card

Save Drafting request premium form and Get & Search UW No generation
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form
    request_premium_form_fill_page.Click save drafting button
    request_premium_form_fill_page.Get UW code after creating request premium
    request_premium_drafting_main_page.Fill UW code in Request Premium drafting
    request_premium_drafting_main_page.Click Search button

Save Drafting request premium form (By Other tabs) and Get & Search UW No generation
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form
    request_premium_form_fill_page.Click save drafting button by Other tabs
    request_premium_form_fill_page.Get UW code after creating request premium
    request_premium_drafting_main_page.Fill UW code in Request Premium drafting
    request_premium_drafting_main_page.Click Search button

Save Drafting request premium form (By Return to main page button) and Get & Search UW No generation
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form
    request_premium_form_fill_page.Click save drafting button by Return to main page
    request_premium_form_fill_page.Get UW code after creating request premium
    common.Click Request premium draft tab (for drafting)
    request_premium_drafting_main_page.Fill UW code in Request Premium drafting
    request_premium_drafting_main_page.Click Search button

Save Drafting request premium form and Get & Search UW No generation (For tisco customer)
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form (For tisco customer)
    request_premium_form_fill_page.Click save drafting button
    request_premium_form_fill_page.Get UW code after creating request premium
    request_premium_drafting_main_page.Fill UW code in Request Premium drafting
    request_premium_drafting_main_page.Click Search button

Save & Send request premium form and Get & Search UW No generation
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form
    request_premium_form_fill_page.Click save & send button
    request_premium_form_fill_page.Get UW code after creating request premium
    request_premium_list_main_page.Fill UW code in Request Premium list
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Get "All column values" in Request premium table

Save & Send request premium form and Get & Search UW No generation (For tisco customer)
    request_premium_form_fill_page.Get "Request premium value" from Request Premium form (For tisco customer)
    request_premium_form_fill_page.Click save & send button
    request_premium_form_fill_page.Get UW code after creating request premium
    request_premium_list_main_page.Fill UW code in Request Premium list
    request_premium_list_main_page.Click Search button


# main flow
Fill in Request premium form Part 1: Car Information
    [Arguments]                                  ${input_form.assured_name}   ${input_form.assured_surname}   ${input_form.license_no}   ${input_form.red_label}   ${input_form.car_year}   ${input_form.brand_name}   ${input_form.main_model}   ${input_form.sub_brand}   ${input_form.car_year}   ${input_form.car_type}   ${input_form.car_power}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_form_fill_page.Fill Assured name                    ${input_form.assured_name}
    request_premium_form_fill_page.Fill Assured surname                 ${input_form.assured_surname}
    request_premium_form_fill_page.Fill License no                      ${input_form.license_no}
    request_premium_form_fill_page.Select Red label                     ${input_form.red_label}
    request_premium_form_fill_page.Fill & Select Car year               ${input_form.car_year}
    request_premium_form_fill_page.Fill & Select Brand                  ${input_form.brand_name}
    request_premium_form_fill_page.Fill & Select Main model             ${input_form.main_model}
    request_premium_form_fill_page.Fill & Select Sub brand              ${input_form.sub_brand}
    request_premium_form_fill_page.Fill & Select Car type               ${input_form.car_type}
    request_premium_form_fill_page.Fill & Select Car power              ${input_form.car_power}
    request_premium_form_fill_page.Fill Car type detail                 ${input_form.car_type_detail}
    request_premium_form_fill_page.Fill Chassis number                  ${input_form.chassis_number}
    request_premium_form_fill_page.Fill Engine number                   ${input_form.engine_number}
    request_premium_form_fill_page.Select Special equipment             ${input_form.special_equipment}
    request_premium_form_fill_page.Fill Special equipment detail        ${input_form.special_equipment_detail}
    request_premium_form_fill_page.Fill & Select Car color              ${input_form.car_color}
    # request_premium_form_fill_page.Fill & Select Sale channel           ${input_form.sale_channel}

Fill in Request premium form Part 1: Car Information (For Tisco customer)
    [Arguments]                                  ${input_form.car_type_detail}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_form_fill_page.Fill Car type detail                 ${input_form.car_type_detail}
    request_premium_form_fill_page.Select Special equipment             ${input_form.special_equipment}
    request_premium_form_fill_page.Fill Special equipment detail        ${input_form.special_equipment_detail}
    request_premium_form_fill_page.Fill & Select Car color              ${input_form.car_color}
    # request_premium_form_fill_page.Fill & Select Sale channel           ${input_form.sale_channel}

Fill in Request premium form Part 1: Car Information (For hiree no)
    [Arguments]                                  ${input_form.red_label}   ${input_form.car_type_detail}   ${input_form.chassis_number}   ${input_form.engine_number}   ${input_form.special_equipment}   ${input_form.special_equipment_detail}   ${input_form.car_color}    ${input_form.sale_channel}
    request_premium_form_fill_page.Select Red label                     ${input_form.red_label}
    request_premium_form_fill_page.Fill Car type detail                 ${input_form.car_type_detail}
    request_premium_form_fill_page.Fill Chassis number                  ${input_form.chassis_number}
    request_premium_form_fill_page.Fill Engine number                   ${input_form.engine_number}
    request_premium_form_fill_page.Select Special equipment             ${input_form.special_equipment}
    request_premium_form_fill_page.Fill Special equipment detail        ${input_form.special_equipment_detail}
    request_premium_form_fill_page.Fill & Select Car color              ${input_form.car_color}
    # request_premium_form_fill_page.Fill & Select Sale channel           ${input_form.sale_channel}

Fill in Request premium form Part 2: Insurance policy
    [Arguments]                                  ${input_form.old_policy_number}   ${input_form.old_insure_company}   ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}   ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_form_fill_page.Fill Old policy number               ${input_form.old_policy_number}
    request_premium_form_fill_page.Fill Old insure company              ${input_form.old_insure_company}
    request_premium_form_fill_page.Select Old campaign expire date      ${input_form.year_old_campaign_expire_date}   ${input_form.month_old_campaign_expire_date}   ${input_form.day_old_campaign_expire_date}
    request_premium_form_fill_page.Select Campaign effective date       ${input_form.year_campaign_effective_date}    ${input_form.month_campaign_effective_date}    ${input_form.day_campaign_effective_date}
    request_premium_form_fill_page.Select Campaign expire date          ${input_form.year_campaign_expire_date}       ${input_form.month_campaign_expire_date}       ${input_form.day_campaign_expire_date}
    request_premium_form_fill_page.Select Premium type                  ${input_form.premium_type}
    request_premium_form_fill_page.Fill Coverage amount od              ${input_form.coverage_amount_od}
    request_premium_form_fill_page.Fill & Select Repair type            ${input_form.repair_type}
    request_premium_form_fill_page.Click Advance input button
    request_premium_form_fill_page.Select Driver 1 birthday             ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}
    request_premium_form_fill_page.Select Driver 2 birthday             ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}
    request_premium_form_fill_page.Select Discount and percent          ${input_form.discount_percent}

Fill in Request premium form Part 2: Insurance policy (For Tisco customer)
    [Arguments]                                  ${input_form.year_campaign_effective_date}   ${input_form.month_campaign_effective_date}   ${input_form.day_campaign_effective_date}   ${input_form.year_campaign_expire_date}   ${input_form.month_campaign_expire_date}   ${input_form.day_campaign_expire_date}   ${input_form.premium_type}   ${input_form.coverage_amount_od}   ${input_form.repair_type}   ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}   ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}   ${input_form.discount_percent}
    request_premium_form_fill_page.Select Campaign effective date       ${input_form.year_campaign_effective_date}    ${input_form.month_campaign_effective_date}    ${input_form.day_campaign_effective_date}
    request_premium_form_fill_page.Select Campaign expire date          ${input_form.year_campaign_expire_date}       ${input_form.month_campaign_expire_date}       ${input_form.day_campaign_expire_date}
    request_premium_form_fill_page.Select Premium type                  ${input_form.premium_type}
    request_premium_form_fill_page.Fill Coverage amount od              ${input_form.coverage_amount_od}
    request_premium_form_fill_page.Fill & Select Repair type            ${input_form.repair_type}
    request_premium_form_fill_page.Click Advance input button
    request_premium_form_fill_page.Select Driver 1 birthday             ${input_form.year_driver1_birthday}   ${input_form.month_driver1_birthday}   ${input_form.day_driver1_birthday}
    request_premium_form_fill_page.Select Driver 2 birthday             ${input_form.year_driver2_birthday}   ${input_form.month_driver2_birthday}   ${input_form.day_driver2_birthday}
    request_premium_form_fill_page.Select Discount and percent          ${input_form.discount_percent}

Fill in Request premium form Part 3: Premium question to insurance company
    [Arguments]                                  ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}   
    request_premium_form_fill_page.Select Specify insurance company                          @{input_form.specify_insure_company}   
    request_premium_form_fill_page.Select Check premium type                                 ${input_form.check_premium_type}
    request_premium_form_fill_page.Fill & Select "Question set" and Fill "Question detail"   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}   

Fill in Request premium form Part 3: Premium question to insurance company (For Tisco customer)
    [Arguments]                                  ${input_form.check_premium_type}   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}   
    request_premium_form_fill_page.Select Specify insurance company (For tisco customer)     @{input_form.specify_insure_company}   
    request_premium_form_fill_page.Select Check premium type                                 ${input_form.check_premium_type}
    request_premium_form_fill_page.Fill & Select "Question set" and Fill "Question detail"   ${input_form.question_set_for_renew}   ${input_form.question_detail_for_renew}   ${input_form.question_set_for_new_customer_or_new}   ${input_form.question_detail_for_new_customer_or_new}    @{input_form.specify_insure_company}   

Save drafting and verify value in Request premium drafting page
    request_premium_feature.Save Drafting request premium form and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table"

Save drafting by other tabs and verify value in Request premium drafting page
    request_premium_feature.Save Drafting request premium form (By Other tabs) and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table"

Save drafting by Return to main page and verify value in Request premium drafting page
    request_premium_feature.Save Drafting request premium form (By Return to main page button) and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table"

Save drafting and verify value in Request premium drafting page (Tisco customer)
    request_premium_feature.Save Drafting request premium form and Get & Search UW No generation (For tisco customer)
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table" for (Tisco customer)

Save drafting and verify value in Request premium drafting page (Hiree No)
    request_premium_feature.Save Drafting request premium form and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium draft table" for (Hiree no)

Save & Send and verify value in Request premium list page
    request_premium_feature.Save & Send request premium form and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table"

Save & Send and verify value in Request premium list page (Tisco customer)
    request_premium_feature.Save & Send request premium form and Get & Search UW No generation (For tisco customer)
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table" for (Tisco customer)

Save & Send and verify value in Request premium list page (Hiree No)
    request_premium_feature.Save & Send request premium form and Get & Search UW No generation
    request_premium_feature.Verify "FOUND / NOT FOUND" all value result column from "Request Premium list table" (Hiree no)

Fill & Search Hiree No
    [Arguments]                                  ${input_form.hiree_no}
    request_premium_form_fill_page.Fill Hiree No            ${input_form.hiree_no}
    request_premium_form_fill_page.Click Hiree no search button
    common.Wait for process 7s
    
