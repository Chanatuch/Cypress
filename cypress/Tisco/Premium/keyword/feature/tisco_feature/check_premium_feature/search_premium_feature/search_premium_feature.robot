***Keywords***
# ----- search_premium_main_page -----
Access Search Premium by clicking on tab 
    common.Click search premium tab

Check Dashboard & Search Premium label link
    search_premium_main_page.Check Dashboard label link
    search_premium_main_page.Check Search Premium label link

Check Reset & Search button
    search_premium_main_page.Check Reset button
    search_premium_main_page.Check Search button

# ----- search_premium_filter_campaign_page -----
Fill & Select Brand to Car type
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Check normal car search text header     
    search_premium_filter_campaign_page.Fill & Select Brand         ${value.brand_name}
    search_premium_filter_campaign_page.Fill & Select Main model    ${value.main_model}
    search_premium_filter_campaign_page.Fill & Select Sub brand     ${value.sub_brand}
    search_premium_filter_campaign_page.Fill & Select Car year      ${value.car_year}
    search_premium_filter_campaign_page.Fill & Select Car type      ${value.car_type}
    search_premium_filter_campaign_page.Fill & Select Car power     ${value.car_power}

Click search (normal) and check premium result
    search_premium_filter_campaign_page.Get "Car information" after search premium 
    common.Wait for process 5s
    search_premium_main_page.Click Search button
    common.Wait for process 10s
    search_premium_filter_campaign_page.Scroll down to check premium table
    search_premium_filter_campaign_page.Check found/not found check premium list
    # common.Wait for process 3s

Click search (advance) and check premium result
    common.Scroll up to 400
    search_premium_filter_campaign_page.Get "Car information" after search premium 
    common.Wait for process 4s
    search_premium_main_page.Click Search button
    common.Wait for process 5s
    common.Scroll down to 800
    common.Wait for process 7s
    search_premium_filter_campaign_page.Check found/not found check premium list
    # common.Wait for process 3s

Select Normal search field from "Special campaign" to "Gross premium code"
    [Arguments]                 ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
    search_premium_filter_campaign_page.Fill & Select Special Campaign                       ${value.special_campaign}
    search_premium_filter_campaign_page.Select Special equipment                             ${value.special_equipment}
    search_premium_filter_campaign_page.Select Insurance type                                @{value.insurance_type}
    search_premium_filter_campaign_page.Fill Select Coverage amount od                       ${value.coverage_amount_od}
    search_premium_filter_campaign_page.Select Repair type                                   ${value.repair_type}
    search_premium_filter_campaign_page.Select "add/not" and Fill & Select Gross premium code    ${value.gross_code}

Select & Fill all advance search field
    [Arguments]                 ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
    # search_premium_filter_campaign_page.Select Insurer                         @{value.insurer}
    search_premium_filter_campaign_page.Select Discount and percent            ${value.discount_percent}
    search_premium_filter_campaign_page.Fill & Select Car color                ${value.car_color}
    search_premium_filter_campaign_page.Select Driver identification
    search_premium_filter_campaign_page.Select Driver 1 birthday               ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}
    search_premium_filter_campaign_page.Select Driver 2 birthday               ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}
    search_premium_filter_campaign_page.Select Start campaign effective date   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}

Select campaign card & check details in card 
    search_premium_filter_campaign_page.Select campaign checkbox
    common.Scroll down to 1200
    search_premium_filter_campaign_page.Get campaign column
    search_premium_filter_campaign_page.Check campaign card 
    common.Wait for process 1s

Get & check details in card (Tisco customer)
    common.Scroll down to 1200
    search_premium_filter_campaign_page.Get campaign column (Tisco renew table)
    search_premium_filter_campaign_page.Check campaign card 
    common.Wait for process 1s

Click Campaign comparison selection button & Click "Yes" to confirm
    search_premium_filter_campaign_page.Click Campaign comparison selection button
    search_premium_filter_campaign_page.Click "Yes" to confirm campaign selection button

Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Click "Confirm" to Save premium history button
    search_premium_filter_campaign_page.Get UW code and close Completed UW Code modal

Click "Campaign link" and verify All tab in Campaign modal
    search_premium_filter_campaign_page.Click "Campaign link" of premium campaign result
    search_premium_filter_campaign_page.Check "Coverage detail" tab
    search_premium_filter_campaign_page.Check "Premium Condition policy" tab
    search_premium_filter_campaign_page.Check "Special coverage rights" tab

#  ||----- Tisco customer flow -----||
# sub case
Access search premium tab (Existing cus) & input App code/Account
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    common.Click search premium tab
    search_premium_main_page.Select Existing Customer
    search_premium_main_page.Select App code    ${value_premium_main.App_code}
    search_premium_main_page.Fill Account       ${value_premium_main.Account}

Click search & check found existing customer
    common.Wait for process 3s
    search_premium_main_page.Click Search button
    common.Wait for process 8s
    search_premium_main_page.Check found existing customer

Click search & check found existing customer by App Code / Account
    common.Wait for process 3s
    search_premium_main_page.Click Search button
    common.Wait for process 10s
    search_premium_main_page.Check found existing customer by App Code / Account

Select desired Tisco customer
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Search Existing Customer by App code/Account    ${value_premium_main.App_code}   ${value_premium_main.Account}
    common.Wait for process 5s
    search_premium_main_page.Get app code/account from searchCustomer Table
    search_premium_main_page.Get customer name from searchCustomer Table
    search_premium_main_page.Select desired Existing Customer
    common.Wait for process 3s

Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify "Customer" in Quotation history table
    quotation_history_main_page.Verify "Ref No" in Quotation history table

# main case
(Tisco customer) Search Existing Customer by App code/Account
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Access search premium tab (Existing cus) & input App code/Account    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Click search & check found existing customer by App Code / Account

(Tisco customer) Search Existing Customer by First name and Lastname
    search_premium_feature.Access search premium tab (Existing cus) & input App code/Account
    search_premium_main_page.Fill First name
    search_premium_main_page.Fill Last name
    search_premium_feature.Click search & check found existing customer

(Tisco customer) Search Existing Customer by License no
    search_premium_feature.Access search premium tab (Existing cus) & input App code/Account
    search_premium_main_page.Fill License no
    search_premium_feature.Click search & check found existing customer

(Tisco customer) Search Existing Customer by All field
    search_premium_feature.Access search premium tab (Existing cus) & input App code/Account
    search_premium_main_page.Fill First name
    search_premium_main_page.Fill Last name
    search_premium_main_page.Fill License no
    search_premium_feature.Click search & check found existing customer

(Tisco customer) Clear searching by Reset button
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Search Existing Customer by App code/Account        ${value_premium_main.App_code}   ${value_premium_main.Account}
    common.Wait for process 3s
    search_premium_main_page.Click Reset button
    common.Wait for process 2s
    search_premium_main_page.Check not found existing customer

(Tisco customer) Change to new customer after taking action by Select button
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Select desired Tisco customer                                    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_main_page.Select New Customer
    search_premium_filter_campaign_page.Click "Select" to changing customer type button
    common.Wait for process 3s
    search_premium_filter_campaign_page.Check validate message

(Tisco customer) Normal search Premium information
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Select desired Tisco customer    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with special campaign
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Fill & Select Special Campaign 
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with special equipment
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Select have Special equipment
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with insurance type 
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Select Insurance type
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with coverage amount od
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.coverage_amount_od}
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Fill Select Coverage amount od                       ${value.coverage_amount_od}
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with repair type
    search_premium_feature.Select desired Tisco customer
    # search_premium_filter_campaign_page.Select Repair type
    search_premium_filter_campaign_page.Click Repair type & search for checking result
    # search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information with gross code
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.coverage_amount_od}   ${value.gross_code}
    search_premium_feature.Select desired Tisco customer                                    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_filter_campaign_page.Fill Select Coverage amount od                       ${value.coverage_amount_od}
    search_premium_filter_campaign_page.Select "add/not" and Fill & Select Gross premium code   ${value.gross_code}
    search_premium_feature.Click search (normal) and check premium result

(Tisco customer) Normal search Premium information all field/custom and saving history correctly   
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
    search_premium_feature.Select desired Tisco customer                                    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Select Normal search field from "Special campaign" to "Gross premium code"   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
    search_premium_feature.Click search (normal) and check premium result
    search_premium_feature.Get & check details in card (Tisco customer)
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab 
    search_premium_feature.Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(Tisco customer) Advance search Premium information by insurer
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Click Advance search button
    search_premium_filter_campaign_page.Select Insurer
    search_premium_feature.Click search (advance) and check premium result    

(Tisco customer) Advance search Premium information by discount
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Click Advance search button
    search_premium_filter_campaign_page.Select Discount and percent 
    search_premium_feature.Click search (advance) and check premium result

(Tisco customer) Advance search Premium information by car color
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Click Advance search button
    search_premium_filter_campaign_page.Fill & Select Car color
    search_premium_feature.Click search (advance) and check premium result

(Tisco customer) Advance search Premium information by driver1 birthday
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Click Advance search button
    common.Scroll down to 400
    search_premium_filter_campaign_page.Select Driver identification
    search_premium_filter_campaign_page.Select Driver 1 birthday
    common.Scroll up to top & click search button and check found/not found check premium list
    common.Wait for process 3s

(Tisco customer) Advance search Premium information by start/end campaign effective date
    search_premium_feature.Select desired Tisco customer
    search_premium_filter_campaign_page.Click Advance search button
    search_premium_filter_campaign_page.Select Start campaign effective date
    # search_premium_filter_campaign_page.Select End campaign effective date
    common.Scroll up to top & click search button and check found/not found check premium list

(Tisco customer) Advance search Premium information by all advance search field and saving history correctly
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.car_year}   ${value.coverage_amount_od}   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
    search_premium_feature.Select desired Tisco customer                                    ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_filter_campaign_page.Fill & Select Car year      ${value.car_year}
    search_premium_filter_campaign_page.Fill Select Coverage amount od                       ${value.coverage_amount_od}
    search_premium_filter_campaign_page.Click Advance search button
    search_premium_feature.Select & Fill all advance search field   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
    common.Scroll up to top & click search button and check found/not found check premium list
    search_premium_feature.Get & check details in card (Tisco customer)
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab 
    search_premium_feature.Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(Tisco customer) Select Campaign card after search premium
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Normal search Premium information   ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Get & check details in card (Tisco customer)
    # search_premium_feature.Select desired Tisco customer
    # search_premium_feature.Fill normal search & Select Gross premium code and click advance search button
    # search_premium_filter_campaign_page.Select Insurer
    # search_premium_feature.Click search (advance) and check premium result    
    # search_premium_feature.Select campaign card & check details in card

(Tisco customer) Clear Campaign card by Reset campaign selection button
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_filter_campaign_page.Click Reset campaign selection button
    common.Wait for process 3s
    search_premium_filter_campaign_page.Check campaign card should be disappeared

(Tisco customer) Save campaign comparison by Save premium history button
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab
    search_premium_feature.Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(Tisco customer) Save campaign comparison in case of wanting to change to other tab
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}
    quotation_history_main_page.Click Quotation history tab 
    search_premium_feature.Click save premium history & Get UW code
    common.Wait for process 5s 
    search_premium_feature.Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(Tisco customer) Save campaign comparison in case of wanting to return to search premium main page
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_filter_campaign_page.Click "Previous" button to search premium main page button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_main_page.Verify back to Search premium main page correctly
    quotation_history_main_page.Click Quotation history tab
    search_premium_feature.Verify "Customer" and "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(Tisco customer) Go to Calculation page by Campaign comparison button and verify coverage details
    # search_premium_feature.(Tisco customer) Normal search Premium information
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}
    search_premium_feature.Click Campaign comparison selection button & Click "Yes" to confirm
    search_premium_calculation_page.Check Calculation page available
    search_premium_feature.Verify "Coverage details" of Premium calculation page

(Tisco customer) View more detail of Search premium result by Campaign text link
    # search_premium_feature.(Tisco customer) Advance search Premium information by insurer
    [Arguments]                 ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_feature.(Tisco customer) Select Campaign card after search premium           ${value_premium_main.App_code}   ${value_premium_main.Account}   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_filter_campaign_page.Get campaign column
    search_premium_feature.Click "Campaign link" and verify All tab in Campaign modal
    common.Wait for process 3s

#  ||----- New customer flow -----||
# sub case
Click search premium tab & Select New customer
    common.Click search premium tab
    search_premium_main_page.Select New Customer

Fill normal search and click advance search button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Click Advance search button
    common.Scroll down to 600

Fill normal search & Select Gross premium code and click advance search button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select "add/not" and Fill & Select Gross premium code   ${value.gross_code}
    search_premium_filter_campaign_page.Click Advance search button
    common.Scroll down to 600

Verify "Coverage details" of Premium calculation page
    search_premium_filter_campaign_page.Check car information in Calculation page
    search_premium_calculation_page.Verify all coverage insurance detail of Premium calculation / Quotation history
    search_premium_calculation_page.Verify "Special coverage rights" tab after click "Additional special coverage" view more link
    search_premium_calculation_page.Verify "Premium Condition policy" tab after click "Premium Condition policy" view more link

# main case
(New customer) Change to tisco customer after taking action by Select button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_main_page.Select Existing Customer
    search_premium_filter_campaign_page.Click "Select" to changing customer type button
    search_premium_filter_campaign_page.Verify turn new customer to existing customer correctly

(New customer) Search Premium information by Hiree No and saving history correctly
    [Arguments]                 ${value.hiree_no}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_filter_campaign_page.Fill Hiree No   ${value.hiree_no}
    search_premium_filter_campaign_page.Click Hiree no search button
    search_premium_feature.Click search (normal) and check premium result
    search_premium_feature.Select campaign card & check details in card
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab
    quotation_history_main_page.Verify hiree no in "Ref No" in Quotation history table
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Normal search Premium information
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Click search (normal) and check premium result

(New customer) Normal search Premium information with special campaign
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Fill & Select Special Campaign      ${value.special_campaign}
    search_premium_feature.Click search (normal) and check premium result

(New customer) Normal search Premium information with special equipment
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_equipment}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select have Special equipment
    search_premium_feature.Click search (normal) and check premium result

(New customer) Normal search Premium information with insurance type 
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   @{value.insurance_type}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select Insurance type   @{value.insurance_type}
    search_premium_feature.Click search (normal) and check premium result

(New customer) Normal search Premium information with coverage amount od
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.coverage_amount_od}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Fill Select Coverage amount od      ${value.coverage_amount_od}
    search_premium_feature.Click search (normal) and check premium result
    search_premium_filter_campaign_page.Verify found premium by "Coverage amount od"   ${value.coverage_amount_od}

(New customer) Normal search Premium information with repair type
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}   ${value.repair_type}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    # search_premium_filter_campaign_page.Click Repair type & search for checking result   ${value.special_campaign}
    search_premium_filter_campaign_page.Select Repair type    ${value.repair_type}
    search_premium_feature.Click search (normal) and check premium result
    search_premium_filter_campaign_page.Verify found premium by "Repair type"  ${value.repair_type}   ${value.special_campaign}

(New customer) Normal search Premium information with gross code
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select "add/not" and Fill & Select Gross premium code   ${value.gross_code}
    search_premium_feature.Click search (normal) and check premium result

(New customer) Normal search Premium information all field/custom and saving history correctly
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill & Select Brand to Car type      ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Select Normal search field from "Special campaign" to "Gross premium code"   ${value.special_campaign}   ${value.special_equipment}   ${value.coverage_amount_od}   ${value.repair_type}   ${value.gross_code}   @{value.insurance_type}
    search_premium_feature.Click search (normal) and check premium result
    search_premium_feature.Select campaign card & check details in card
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab 
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Advance search Premium information by insurer
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   @{value.insurer}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select Insurer   @{value.insurer}
    search_premium_feature.Click search (advance) and check premium result    

(New customer) Advance search Premium information by discount
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.discount_percent}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select Discount and percent     ${value.discount_percent}
    search_premium_feature.Click search (advance) and check premium result

(New customer) Advance search Premium information by car color
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.car_color}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Fill & Select Car color     ${value.car_color}
    search_premium_feature.Click search (advance) and check premium result

(New customer) Advance search Premium information by driver birthday
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select Driver identification
    search_premium_filter_campaign_page.Select Driver 1 birthday    ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}
    search_premium_filter_campaign_page.Select Driver 2 birthday    ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}
    common.Scroll up to top & click search button and check found/not found check premium list

(New customer) Advance search Premium information by start/end campaign effective date
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_filter_campaign_page.Select Start campaign effective date   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}
    common.Scroll up to top & click search button and check found/not found check premium list

(New customer) Advance search Premium information by all advance search field and saving history correctly
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}
    search_premium_feature.Select & Fill all advance search field   ${value.discount_percent}   ${value.car_color}   ${value.year_driver1_birthday}   ${value.month_driver1_birthday}   ${value.day_driver1_birthday}   ${value.year_driver2_birthday}   ${value.month_driver2_birthday}   ${value.day_driver2_birthday}   ${value.year_start_campaign_effective_date}   ${value.month_start_campaign_effective_date}   ${value.day_start_campaign_effective_date}   @{value.insurer}
    common.Scroll up to top & click search button and check found/not found check premium list
    search_premium_feature.Select campaign card & check details in card
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab 
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Clear premium result and campaign card by click reset searching button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    common.Scroll up to 600
    search_premium_main_page.Click Reset button
    common.Scroll down to 600
    search_premium_filter_campaign_page.Check search field and premium result should be reset
    search_premium_filter_campaign_page.Check campaign card should be disappeared

(New customer) Select Campaign card after search premium
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    # search_premium_feature.(New customer) Normal search Premium information with gross code
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search & Select Gross premium code and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_filter_campaign_page.Select Insurer   @{value.insurer}
    search_premium_feature.Click search (advance) and check premium result    
    search_premium_feature.Select campaign card & check details in card

(New customer) Clear Campaign card by Reset campaign selection button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_filter_campaign_page.Click Reset campaign selection button
    common.Wait for process 3s
    search_premium_filter_campaign_page.Check campaign card should be disappeared

(New customer) Save campaign comparison by Save premium history button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_filter_campaign_page.Click Save premium history button
    search_premium_feature.Click save premium history & Get UW code 
    search_premium_filter_campaign_page.Verify All input field are cleaned up
    quotation_history_main_page.Click Quotation history tab 
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Save campaign comparison in case of wanting to change to other tab
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    quotation_history_main_page.Click Quotation history tab 
    search_premium_feature.Click save premium history & Get UW code 
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Save campaign comparison in case of wanting to return to search premium main page
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_filter_campaign_page.Click "Previous" button to search premium main page button
    search_premium_feature.Click save premium history & Get UW code
    search_premium_main_page.Verify back to Search premium main page correctly
    quotation_history_main_page.Click Quotation history tab 
    quotation_history_main_page.Verify matching "UW code & All values" and "Quotation History details" in Premium history 

(New customer) Verify validate message for Brand to Car power field
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_filter_campaign_page.Check validate message

(New customer) Go to Calculation page by Campaign comparison button and verify coverage details
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.(New customer) Select Campaign card after search premium     ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.Click Campaign comparison selection button & Click "Yes" to confirm
    search_premium_calculation_page.Check Calculation page available
    search_premium_feature.Verify "Coverage details" of Premium calculation page

(New customer) View more detail of Search premium result by Campaign text link
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}   @{value.insurer}
    search_premium_feature.Click search premium tab & Select New customer
    search_premium_feature.Fill normal search & Select Gross premium code and click advance search button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    search_premium_filter_campaign_page.Select Insurer   @{value.insurer}
    search_premium_feature.Click search (advance) and check premium result    
    search_premium_filter_campaign_page.Get campaign column
    search_premium_feature.Click "Campaign link" and verify All tab in Campaign modal
    common.Wait for process 3s

