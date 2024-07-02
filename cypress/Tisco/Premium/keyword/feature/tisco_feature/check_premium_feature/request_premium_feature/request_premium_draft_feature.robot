***Keywords***
# sub flow
# sub case

    
# main flow
Search request premium draft by Ref No
    [Arguments]                                  ${input_draft.ref_no} 
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill Ref No            ${input_draft.ref_no} 
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column

Search request premium draft by Customer first name
    [Arguments]                                  ${input_draft.customer_first_name} 
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill Customer first name   ${input_draft.customer_first_name} 
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column

Search request premium draft by Customer last name
    [Arguments]                                  ${input_draft.customer_last_name}
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill Customer last name   ${input_draft.customer_last_name}
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column

Search request premium draft by License no
    [Arguments]                                  ${input_draft.license_no}
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill License no   ${input_draft.license_no}
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for License No column

Search request premium draft by UW No
    [Arguments]                                  ${input_draft.uw_no}
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill UW No   ${input_draft.uw_no}
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify matching UW No from in Request Premium drafting

Search request premium draft by Insure company        
    [Arguments]                                  @{input_draft.insure_company}
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill & Select Insure company   @{input_draft.insure_company}
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Insure company column
    common.Wait for process 5s

Search request premium draft by All Field
    [Arguments]                                  ${input_draft.ref_no}   ${input_draft.customer_first_name}   ${input_draft.customer_last_name}   ${input_draft.license_no}   ${input_draft.uw_no}   @{input_draft.insure_company}
    common.Click Request Premium draft tab
    request_premium_drafting_main_page.Fill Ref No                    ${input_draft.ref_no} 
    request_premium_drafting_main_page.Fill Customer first name       ${input_draft.customer_first_name} 
    request_premium_drafting_main_page.Fill Customer last name        ${input_draft.customer_last_name}
    request_premium_drafting_main_page.Fill License no                ${input_draft.license_no}
    request_premium_drafting_main_page.Fill UW No                     ${input_draft.uw_no}
    request_premium_drafting_main_page.Fill & Select Insure company   @{input_draft.insure_company}
    request_premium_drafting_main_page.Click Search button
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Ref No column
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Customer column
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for License No column
    request_premium_drafting_main_page.Verify matching UW No from in Request Premium drafting
    request_premium_drafting_main_page.Verify "FOUND / NOT FOUND" searching result for Insure company column
