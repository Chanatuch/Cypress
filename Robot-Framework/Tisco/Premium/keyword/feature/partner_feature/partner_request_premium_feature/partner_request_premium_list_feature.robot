***Keywords***
# # sub flow
Click "Request premium list tab" & Click "List search field"
    common.Click (Partner) Request premium list tab
    partner_request_premium_list_main_page.Click Request premium list search field

Click "OK button" in Search field & Click "Search button"
    partner_request_premium_list_main_page.Click OK button in Search field
    partner_request_premium_list_main_page.Click Search button

# # main flow
(Partner) Search Request Premium list by "Policy number"
    [Arguments]                 ${partner_input_list.policy_number}   
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Fill Policy number                        ${partner_input_list.policy_number}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"

(Partner) Search Request Premium list by "License no"    
    [Arguments]                 ${partner_input_list.license_no}
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Fill License no                           ${partner_input_list.license_no}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for License no column

(Partner) Search Request Premium list by "Customer"     
    [Arguments]                 ${partner_input_list.customer_first_name}   ${partner_input_list.customer_last_name}
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Fill Customer first name     ${partner_input_list.customer_first_name}
    partner_request_premium_list_main_page.Fill Customer last name      ${partner_input_list.customer_last_name}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Customer column

(Partner) Search Request Premium list by "UW No."      
    [Arguments]                 ${partner_input_list.uw_no}
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Fill UW No.  ${partner_input_list.uw_no}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for UW no & Check premium type column

(Partner) Search Request Premium list by "Range date" 
    [Arguments]                 ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Select Start-End Range date  ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Created date column

(Partner) Search Request Premium list by "All field"      
    [Arguments]                 ${partner_input_list.policy_number}   ${partner_input_list.license_no}   ${partner_input_list.customer_first_name}   ${partner_input_list.customer_last_name}   ${partner_input_list.uw_no}   ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
    partner_request_premium_list_feature.Click "Request premium list tab" & Click "List search field"
    partner_request_premium_list_main_page.Fill Policy number           ${partner_input_list.policy_number}
    partner_request_premium_list_main_page.Fill License no              ${partner_input_list.license_no}
    partner_request_premium_list_main_page.Fill Customer first name     ${partner_input_list.customer_first_name}
    partner_request_premium_list_main_page.Fill Customer last name      ${partner_input_list.customer_last_name}
    partner_request_premium_list_main_page.Fill UW No.                  ${partner_input_list.uw_no}
    partner_request_premium_list_main_page.Select Start-End Range date  ${partner_input_list.start_day_range_date}   ${partner_input_list.end_day_range_date}   ${partner_input_list.month_range_date}   ${partner_input_list.year_range_date}
    partner_request_premium_list_feature.Click "OK button" in Search field & Click "Search button"    
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for License no column
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Customer column
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for UW no & Check premium type column
    partner_request_premium_list_main_page.Verify "FOUND / NOT FOUND" Partner list Table for Created date column

(Partner)Filter request premium list by "Renewal premium type" type filter button
    [Arguments]                 @{partner_input_list.renewal_premium_type}
    common.Click (Partner) Request premium list tab
    partner_request_premium_list_main_page.Click "Renewal premium type" filter button & Verify "Renewal premium type" column  @{partner_input_list.renewal_premium_type}
    
(Partner)Filter request premium list by "Check premium type" type filter button
    [Arguments]                 @{partner_input_list.check_premium_type}
    common.Click (Partner) Request premium list tab
    partner_request_premium_list_main_page.Click "Check premium type" filter button & Verify "Check premium type" column  @{partner_input_list.check_premium_type}

(Partner)Filter request premium list by "Request premium status" type filter button   
    [Arguments]                 @{partner_input_list.request_premium_status}
    common.Click (Partner) Request premium list tab
    partner_request_premium_list_main_page.Click "Request premium status" filter button & Verify "Request premium status" column  @{partner_input_list.request_premium_status}

Click "Reply" in Action button
    partner_request_premium_list_main_page.Click "Action" button in Partner request premium list
    partner_request_premium_list_main_page.Click "Reply" button in Action button

Click "View details" in Action button
    partner_request_premium_list_main_page.Click "Action" button in Partner request premium list
    partner_request_premium_list_main_page.Click "View details" button in Action button

Click "View premium result" in Action button
    partner_request_premium_list_main_page.Click "Action" button in Partner request premium list
    partner_request_premium_list_main_page.Click "View premium result" button in Action button

Click "Cancel" in Action button
    partner_request_premium_list_main_page.Click "Action" button in Partner request premium list
    partner_request_premium_list_main_page.Click "Cancel" button in Action button

Fill & Send Reply comment 
    [Arguments]                 ${partner_input_list.reply_comment}
    partner_request_premium_list_details_page.Fill Reply Comment                                            ${partner_input_list.reply_comment}
    partner_request_premium_list_details_page.Click "Reply comment" button
    partner_request_premium_list_details_page.Click "Confirm reply" button

Fill (Warranty) Section: Insurance premium details
    [Arguments]                 ${partner_reply_warranty_input.campaign_name}   ${partner_reply_warranty_input.special_campaign}   ${partner_reply_warranty_input.repair_type}   ${partner_reply_warranty_input.coverage_amount_od}   ${partner_reply_warranty_input.voluntary_car_insurance_premiums}   ${partner_reply_warranty_input.gross_premium}
    partner_request_premium_list_details_page.Fill Campaign name                        ${partner_reply_warranty_input.campaign_name}
    partner_request_premium_list_details_page.Fill & Select Special campaign            ${partner_reply_warranty_input.special_campaign}
    partner_request_premium_list_details_page.Fill & Select Repair type                 ${partner_reply_warranty_input.repair_type}
    partner_request_premium_list_details_page.Fill Coverage amount od                   ${partner_reply_warranty_input.coverage_amount_od}
    partner_request_premium_list_details_page.Fill Voluntary car insurance premiums     ${partner_reply_warranty_input.voluntary_car_insurance_premiums}
    partner_request_premium_list_details_page.Fill Gross premium                        ${partner_reply_warranty_input.gross_premium}

Fill (Warranty) Section: Details of voluntary car insurance         
    [Arguments]                 ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}   ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}   ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}   ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}   ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}   ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}   ${partner_reply_warranty_input.First_part_of_vehicle_damage}   ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}   ${partner_reply_warranty_input.nursing_expenses}   ${partner_reply_warranty_input.driver_insurance}   ${partner_reply_warranty_input.number_of_passengers}
    partner_request_premium_list_details_page.Fill Liability to third parties life body health per person               ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_person}
    partner_request_premium_list_details_page.Fill Liability to third parties life body health per time                 ${partner_reply_warranty_input.Liability_to_third_parties_life_body_health_per_time}
    partner_request_premium_list_details_page.Fill Liability to third party property per time                           ${partner_reply_warranty_input.Liability_to_third_party_property_per_time}
    partner_request_premium_list_details_page.Fill First part damage to third party property per time                   ${partner_reply_warranty_input.first_part_damage_to_third_party_property_per_time}
    partner_request_premium_list_details_page.Fill Coverage amount for vehicle damage                                   ${partner_reply_warranty_input.coverage_amount_for_vehicle_damage}
    partner_request_premium_list_details_page.Fill Coverage amount for lost car and fire                                ${partner_reply_warranty_input.coverage_amount_for_lost_car_and_fire}
    partner_request_premium_list_details_page.Fill First part of vehicle damage                                         ${partner_reply_warranty_input.First_part_of_vehicle_damage}
    partner_request_premium_list_details_page.Fill Personal accidents death loss of organs and permanent disability     ${partner_reply_warranty_input.Personal_accidents_death_loss_of_organs_and_permanent_disability}
    partner_request_premium_list_details_page.Fill Nursing expenses                                                     ${partner_reply_warranty_input.nursing_expenses}
    partner_request_premium_list_details_page.Fill Driver insurance                                                     ${partner_reply_warranty_input.driver_insurance}
    partner_request_premium_list_details_page.Fill Number of passengers                                                 ${partner_reply_warranty_input.number_of_passengers}

Fill (Warranty) Section: Additional details of terms and conditions
    [Arguments]                 ${partner_reply_warranty_input.car_inspection_before_warranty}   ${partner_reply_warranty_input.additional_special_protection}   ${partner_reply_warranty_input.insurance_conditions}   ${partner_reply_warranty_input.details_report}
    partner_request_premium_list_details_page.Select Inspect car before warranty    ${partner_reply_warranty_input.car_inspection_before_warranty}
    partner_request_premium_list_details_page.Fill Additional special protection    ${partner_reply_warranty_input.additional_special_protection}
    partner_request_premium_list_details_page.Fill Insurance conditions             ${partner_reply_warranty_input.insurance_conditions}
    partner_request_premium_list_details_page.Fill Details report                   ${partner_reply_warranty_input.details_report}

Verify "Coverage details" in Request premium results
    # section: รายละเอียดค่าเบี้ยประกัน
    partner_request_premium_list_result_page.Check "Campaign name" value
    partner_request_premium_list_result_page.Check "Special campaign" value
    partner_request_premium_list_result_page.Check "Coverage amount od" value
    partner_request_premium_list_result_page.Check "Voluntary car insurance premiums" value
    # รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ
    partner_request_premium_list_result_page.Check "Liability to third parties life body health per person" value
    partner_request_premium_list_result_page.Check "Liability to third parties life body health per time" value
    partner_request_premium_list_result_page.Check "Liability to third party property per time" value
    partner_request_premium_list_result_page.Check "First part damage to third party property per time" value
    partner_request_premium_list_result_page.Check "Coverage amount for vehicle damage" value
    partner_request_premium_list_result_page.Check "Coverage amount for lost car and fire" value
    partner_request_premium_list_result_page.Check "First part of vehicle damage" value
    partner_request_premium_list_result_page.Check "Personal accidents death loss of organs and permanent disability" value
    partner_request_premium_list_result_page.Check "Nursing expenses" value
    partner_request_premium_list_result_page.Check "Driver insurance" value
    partner_request_premium_list_result_page.Check "Inspect car before warranty" value
    partner_request_premium_list_result_page.Check "Gross premium" value
    partner_request_premium_list_result_page.Check "Total gross premium value" value 

Verify "Car Information" in Request premium details (Partner)
    partner_request_premium_list_details_page.Check "Brand/Model" value
    partner_request_premium_list_details_page.Check "Car power" value
    partner_request_premium_list_details_page.Check "Car year" value
    partner_request_premium_list_details_page.Check "Engine number" value
    partner_request_premium_list_details_page.Check "Chassis number" value
    partner_request_premium_list_details_page.Check "Car color" value
    # partner_request_premium_list_details_page.Check "Car type" value
    partner_request_premium_list_details_page.Check "Special equipment" value
    partner_request_premium_list_details_page.Check "Car type details" value

Verify "Insurance Information" in Request premium details (Partner)
    partner_request_premium_list_details_page.Check "Renewal premium type" value
    partner_request_premium_list_details_page.Check "Old policy number" value
    partner_request_premium_list_details_page.Check "Old insure company" value
    partner_request_premium_list_details_page.Check "Old campaign expire date" value
    partner_request_premium_list_details_page.Check "Campaign effective and expire date" value
    partner_request_premium_list_details_page.Check "Coverage amount od" value
    partner_request_premium_list_details_page.Check "Premium type" value
    partner_request_premium_list_details_page.Check "Repair type" value
    partner_request_premium_list_details_page.Check "Check premium type" value
    partner_request_premium_list_details_page.Check "Discount percent" value
    partner_request_premium_list_details_page.Check "Driver1 birthdate" value
    partner_request_premium_list_details_page.Check "Driver2 birthdate" value

Verify "Insurance Information" in Request premium details (Partner Warranty case)
    partner_request_premium_list_details_page.Check "Renewal premium type" value
    partner_request_premium_list_details_page.Check "Old policy number" value
    partner_request_premium_list_details_page.Check "Old insure company" value
    partner_request_premium_list_details_page.Check "Old campaign expire date" value
    partner_request_premium_list_details_page.Check "Campaign effective and expire date" value
    partner_request_premium_list_details_page.Check "Coverage amount od" value (Warranty case)
    partner_request_premium_list_details_page.Check "Premium type" value
    partner_request_premium_list_details_page.Check "Repair type" value (Warranty case)
    partner_request_premium_list_details_page.Check "Check premium type" value
    partner_request_premium_list_details_page.Check "Discount percent" value
    partner_request_premium_list_details_page.Check "Driver1 birthdate" value
    partner_request_premium_list_details_page.Check "Driver2 birthdate" value

Verify "Question detail" in Request premium details (Partner)
    partner_request_premium_list_details_page.Check "Question detail" value

Verify "All values" in Premium result (Partner)
    common.Scroll down to 800
    partner_request_premium_list_result_page.Verify "Header explain" value in Request premium details (Partner)
    partner_request_premium_list_feature.Verify "Car Information" in Request premium details (Partner)
    partner_request_premium_list_feature.Verify "Insurance Information" in Request premium details (Partner Warranty case)
    partner_request_premium_list_result_page.Verify "Topic comment" value in Request premium results (Partner)
    partner_request_premium_list_feature.Verify "Coverage details" in Request premium results

Verify "All values" in Request premium details (Partner) 
    partner_request_premium_list_details_page.Verify "Header explain" value in Request premium details (Partner)
    partner_request_premium_list_feature.Verify "Question detail" in Request premium details (Partner)
    partner_request_premium_list_feature.Verify "Car Information" in Request premium details (Partner)
    partner_request_premium_list_feature.Verify "Insurance Information" in Request premium details (Partner)

Input & Confirm "Cancel" in Cancel modal
        [Arguments]                 ${partner_input_list.cancel_comment}
    partner_request_premium_list_main_page.Fill "Cancel text" in modal  ${partner_input_list.cancel_comment}
    partner_request_premium_list_main_page.Click Confirm "Cancel" button
