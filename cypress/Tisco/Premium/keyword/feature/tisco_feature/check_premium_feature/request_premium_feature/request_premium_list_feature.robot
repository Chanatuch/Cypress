***Keywords***
# sub flow
# sub case

    
# main flow
Search request premium list by Ref No
    [Arguments]                                  ${input_list.ref_no} 
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill Ref No            ${input_list.ref_no} 
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Ref No column

Search request premium list by Customer first name
    [Arguments]                                  ${input_list.customer_first_name} 
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill Customer first name   ${input_list.customer_first_name} 
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Customer column

Search request premium list by Customer last name
    [Arguments]                                  ${input_list.customer_last_name}
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill Customer last name   ${input_list.customer_last_name}
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Customer column

Search request premium list by License no
    [Arguments]                                  ${input_list.license_no}
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill License no   ${input_list.license_no}
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for License No column

Search request premium list by UW No
    [Arguments]                                  ${input_list.uw_no}
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill UW No   ${input_list.uw_no}
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify matching UW No from in Request Premium list

Search request premium list by Insure company        
    [Arguments]                                  @{input_list.insure_company}
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill & Select Insure company   @{input_list.insure_company}
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Insure company column
    common.Wait for process 5s

Search request premium list by All Field
    [Arguments]                                  ${input_list.ref_no}   ${input_list.customer_first_name}   ${input_list.customer_last_name}   ${input_list.license_no}   ${input_list.uw_no}   @{input_list.insure_company}
    common.Click Request Premium list tab
    request_premium_list_main_page.Fill Ref No                    ${input_list.ref_no} 
    request_premium_list_main_page.Fill Customer first name       ${input_list.customer_first_name} 
    request_premium_list_main_page.Fill Customer last name        ${input_list.customer_last_name}
    request_premium_list_main_page.Fill License no                ${input_list.license_no}
    request_premium_list_main_page.Fill UW No                     ${input_list.uw_no}
    request_premium_list_main_page.Fill & Select Insure company   @{input_list.insure_company}
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Ref No column
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Customer column
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for License No column
    request_premium_list_main_page.Verify matching UW No from in Request Premium list
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Insure company column

Filter status request premium list by "Request premium status" filter button
    [Arguments]                                  @{input_list.request_premium_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Click "Status" filter button & Verify "Status" column  @{input_list.request_premium_status}

Filter request premium list by "Urgent" filter button
    [Arguments]                                  ${input_list.urgent_type_filter_button}
    common.Click Request Premium list tab
    request_premium_list_main_page.Click "Urgent" filter button   ${input_list.urgent_type_filter_button}
    request_premium_list_main_page.Verify total request premium list result by "Urgent" filter button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column

Filter request premium list by "Normal" filter button
    [Arguments]                                  ${input_list.normal_type_filter_button}
    common.Click Request Premium list tab
    request_premium_list_main_page.Click "Normal" filter button   ${input_list.normal_type_filter_button}
    request_premium_list_main_page.Verify total request premium list result by "Normal" filter button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Check premium type column

Filter status request premium list by "Pending" status filter button
    [Arguments]                                  ${input_list.pending_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.pending_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Wait for insurance reply" status filter button      
    [Arguments]                                  ${input_list.wait_for_insurance_reply_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.wait_for_insurance_reply_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Request additional documents" status filter button 
    [Arguments]                                  ${input_list.request_additional_documents_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.request_additional_documents_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Warranty" status filter button                      
    [Arguments]                                  ${input_list.warranty_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.warranty_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Not Warranted" status filter button                 
    [Arguments]                                  ${input_list.not_warranted_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.not_warranted_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Premium period exceeded" status filter button        
    [Arguments]                                  ${input_list.premium_period_exceeded_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.premium_period_exceeded_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Filter status request premium list by "Canceled" status filter button                      
    [Arguments]                                  ${input_list.canceled_status}
    common.Click Request Premium list tab
    request_premium_list_main_page.Select "Status" by status filter button   ${input_list.canceled_status}
    request_premium_list_main_page.Get "All column values" in Request premium table
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column
    common.Wait for process 2s

Click "View details" in Action button
    request_premium_list_main_page.Click "Action" button in request premium list
    request_premium_list_main_page.Click "View details" button in Action button

Verify "All value" in Request premium details
    request_premium_list_details_page.Verify "Request premium header" in Request premium details
    request_premium_list_details_page.Verify "Request premium content" in Request premium details
    request_premium_list_details_page.Verify "Question detail" in Request premium details
    request_premium_list_details_page.Verify "Car Information" in Request premium details
    request_premium_list_details_page.Verify "Insurance Information" in Request premium details
    request_premium_list_details_page.Verify "Created by & Created date" in Request premium details
    request_premium_list_details_page.Verify "Claim summary" Information

Click "Reply" in Action button
    request_premium_list_main_page.Click "Action" button in request premium list
    request_premium_list_main_page.Click "Reply" button in Action button

Click "Cancel" in Action button
    request_premium_list_main_page.Click "Action" button in request premium list
    request_premium_list_main_page.Click "Cancel" button in Action button

Click "View premium result" in Action button
    request_premium_list_main_page.Click "Action" button in request premium list
    request_premium_list_main_page.Click "View premium result" button in Action button

Input & Send request premium comment 
    [Arguments]                                  ${input_list.tisco_comment}
    request_premium_list_details_page.Fill Request premium comment    ${input_list.tisco_comment}
    request_premium_list_details_page.Click "Send comment" button
    request_premium_list_details_page.Verify "Send comment" successfully and Close "Notification modal"
    request_premium_list_details_page.Verify "Comment" is already sent in Comment feed

Input & Confirm "Canceled" request premium list 
    [Arguments]                                  ${input_list.cancel_message}   ${input_list.canceled_status}
    request_premium_list_main_page.Fill "Cancel message" in Canceled Modal    ${input_list.cancel_message}
    request_premium_list_main_page.Click "Confirm cancel" button    ${input_list.canceled_status}

Verify status is "Canceled" after confirm cancellation
    common.Refresh Request Premium list page
    request_premium_list_main_page.Fill UW code in Request Premium list
    request_premium_list_main_page.Click Search button
    request_premium_list_main_page.Verify "FOUND / NOT FOUND" Request Premium list result for Request premium status column

Verify "All values" in Premium result
    request_premium_list_premium_result_page.Verify "Premium result" header
    request_premium_list_premium_result_page.Verify "Premium coverage" details
    request_premium_list_details_page.Verify "Claim summary" Information

Verify "Header, Content, Created By/Date and Claim Summary" in Request premium details
    request_premium_list_details_page.Verify "Request premium header" in Request premium details
    request_premium_list_details_page.Check "Request premium content" value for each status flow
    # request_premium_list_details_page.Check "Created by & Created date" value
    request_premium_list_details_page.Verify "Claim summary" Information

