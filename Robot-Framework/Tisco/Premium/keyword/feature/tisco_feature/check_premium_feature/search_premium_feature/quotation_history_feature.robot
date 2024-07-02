***Keywords***
# sub flow
Click Search
    search_premium_main_page.Click Search button
    common.Wait for process 5s

# main flow
Search history by only UW No
    [Arguments]                                  ${input_quotation.uw_no}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill UW No      ${input_quotation.uw_no}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for UW No column

Search history by only Ref No
    [Arguments]                                  ${input_quotation.ref_no}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill Ref No      ${input_quotation.ref_no}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column
    
Search history by only Customer name
    [Arguments]                                  ${input_quotation.customer_name}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill Customer name      ${input_quotation.customer_name}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by name

Search quotation by only Customer surname
    [Arguments]                                  ${input_quotation.customer_surname}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill Customer surname       ${input_quotation.customer_surname}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by surname

Search quotation by Customer name & surname
    [Arguments]                                  ${input_quotation.customer_name}    ${input_quotation.customer_surname}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill Customer name      ${input_quotation.customer_name}
    quotation_history_main_page.Fill Customer surname       ${input_quotation.customer_surname}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by name
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by surname

Search quotation by only Created date
    [Arguments]                                  ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Select Created date     ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Created date column

Search quotation by only Sale channel
    [Arguments]                                  ${input_quotation.sale_channel}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Select Sale Channel     ${input_quotation.sale_channel}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result

Search quotation by All field
    [Arguments]                                  ${input_quotation.uw_no}    ${input_quotation.ref_no}     ${input_quotation.customer_name}    ${input_quotation.customer_surname}     ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}   ${input_quotation.sale_channel}
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Fill UW No      ${input_quotation.uw_no}
    quotation_history_main_page.Fill Ref No       ${input_quotation.ref_no}
    quotation_history_main_page.Fill Customer name      ${input_quotation.customer_name}
    quotation_history_main_page.Fill Customer surname       ${input_quotation.customer_surname}
    quotation_history_main_page.Select Created date     ${input_quotation.year_created_date}    ${input_quotation.month_created_date}   ${input_quotation.day_created_date}
    quotation_history_main_page.Select Sale Channel     ${input_quotation.sale_channel}
    quotation_history_feature.Click Search
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for UW No column
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by name
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column by surname
    quotation_history_main_page.Verify "FOUND / NOT FOUND" searching result for Created date column

Clear searching quotation by Clear button
    common.Click Quotation history tab (Main flow)
    search_premium_main_page.Click Reset button
    quotation_history_main_page.Verify clear quotation table

Verify quotation table length
    common.Click Quotation history tab (Main flow)
    quotation_history_main_page.Select quotation table length

View quotation history detail by click view button
    [Arguments]                 ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
    # case นี้ตรวจสอบรายละเอียดความคุ้มครอง ใน ใบเสนอราคาด้วย สามารถใช้ร่วมกันได้
    search_premium_feature.(New customer) Save campaign comparison by Save premium history button   ${value.brand_name}   ${value.main_model}   ${value.sub_brand}   ${value.car_year}   ${value.car_power}   ${value.car_type}   ${value.gross_code}
