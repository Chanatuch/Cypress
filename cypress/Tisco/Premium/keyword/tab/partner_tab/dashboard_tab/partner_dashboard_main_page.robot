*** Variables ***
# element xpath variable
${partner_dashboard_main_page.normal_new_items_value}           xpath=//h5[contains(text(),'ปกติ')]/../h5[2]
${partner_dashboard_main_page.urgent_new_items_value}           xpath=//h5[contains(text(),'ด่วน')]/../h5[2]
${partner_dashboard_main_page.total_new_items_value}            xpath=//p[contains(text(),'รายการใหม่')]/../h3
${partner_dashboard_main_page.tisco_responded_value}            xpath=//p[contains(text(),'ทิสโก้ตอบกลับ')]/../h3
${partner_dashboard_main_page.premium_period_exceeded_value}    xpath=//p[contains(text(),'เกินกำหนดรอบเช็คเบี้ย')]/../h3
${partner_dashboard_main_page.total_items_value}                xpath=//h5[contains(text(),'ทั้งหมด')]/../h5[2]
${partner_dashboard_main_page.action_button}                    xpath=//div[@class="col-12 p-3 pt-1 pb-1"][1]/..//mat-icon[@class="mat-icon notranslate me-2 option-select-btn mat-icon-no-color"]
${partner_dashboard_main_page.reply_button}                     xpath=//div[@class="option-select-order"]/..//span[contains(text(),'ตอบกลับ')]
# feed list
${partner_dashboard_main_page.feed_list_content_header}         xpath=/html/body/app-root/app-template/div[3]/app-pc-dashboard/div/div/div[2]/div/div/div/div[2]/div/div[1]/div[1]/span
${partner_dashboard_main_page.feed_list_content_detail}         xpath=/html/body/app-root/app-template/div[3]/app-pc-dashboard/div/div/div[2]/div/div/div/div[2]/div/div[2]
${partner_dashboard_main_page.feed_list_question_detail}        xpath=/html/body/app-root/app-template/div[3]/app-pc-dashboard/div/div/div[2]/div/div/div/div[2]/div/div[3]/p[2]

# # text variable
# element description
${text_value.status_pending}    รอดำเนินการ

*** Keywords ***

Get "(Normal) New items" value
    ${get_normal_new_items_value}=   Get Text  ${partner_dashboard_main_page.normal_new_items_value}
    Set Global Variable    ${partner_dashboard.normal_new_items_value}    ${get_normal_new_items_value}

Get "(Urgent) New items" value
    ${get_urgent_new_items_value}=   Get Text  ${partner_dashboard_main_page.urgent_new_items_value}
    Set Global Variable    ${partner_dashboard.urgent_new_items_value}    ${get_urgent_new_items_value}

Get "(Total) New items" value
    # get new items value
    ${get_total_new_items_value}=   Get Text  ${partner_dashboard_main_page.total_new_items_value}
    Set Global Variable    ${partner_dashboard.total_new_items_value}    ${get_total_new_items_value}

Verify "(Total) New items" value
    # calculating by normal + urgent new items
    ${number_normal_new_items_value}=    convert to number   ${partner_dashboard.normal_new_items_value}
    ${number_urgent_new_items_value}=    convert to number   ${partner_dashboard.urgent_new_items_value}
    ${calculate_total_new_items_value}=     Evaluate    ${number_normal_new_items_value} + ${number_urgent_new_items_value}
    Should Be Equal As Numbers    ${partner_dashboard.total_new_items_value}      ${calculate_total_new_items_value}

Get "Tisco responded" value
    ${get_tisco_responded_value}=   Get Text  ${partner_dashboard_main_page.tisco_responded_value}
    Set Global Variable    ${partner_dashboard.tisco_responded_value}    ${get_tisco_responded_value}

Get "Premium period exceeded" value
    ${get_premium_period_exceeded_value}=   Get Text  ${partner_dashboard_main_page.premium_period_exceeded_value}
    Set Global Variable    ${partner_dashboard.premium_period_exceeded_value}    ${get_premium_period_exceeded_value}

Verify "Total items" value
    ${number_total_new_items_value}=    convert to number   ${partner_dashboard.total_new_items_value}
    ${number_tisco_responded_value}=    convert to number   ${partner_dashboard.tisco_responded_value}
    ${number_premium_period_exceeded_value}=    convert to number   ${partner_dashboard.premium_period_exceeded_value}
    ${calculate_total_items_value}=     Evaluate    ${number_total_new_items_value} + ${number_tisco_responded_value} + ${number_premium_period_exceeded_value}
    # get total items value
    ${get_total_items_value}=   Get Text  ${partner_dashboard_main_page.total_items_value}
    Set Global Variable    ${partner_dashboard.total_items_value}    ${get_total_items_value}
    Should Be Equal As Numbers    ${partner_dashboard.total_items_value}      ${calculate_total_items_value}

Verify "Content header" value in Feed list dashboard
    ${get_content_header_value}=   Get Text  ${partner_dashboard_main_page.feed_list_content_header}
    IF  '${value_request_premium.red_label}' == 'ป้ายแดง'
        @{check_content_header_value}   Create List    ${value_request_premium.UW_no}   ${value_request_premium.red_label}
        FOR    ${content_header_value}    IN    @{check_content_header_value}
            Should Contain Any    ${get_content_header_value}      ${content_header_value}
        END
    ELSE
        @{check_content_header_value}   Create List    ${value_request_premium.UW_no}   ${input_form.license_no}
        FOR    ${content_header_value}    IN    @{check_content_header_value}
            Should Contain Any    ${get_content_header_value}      ${content_header_value}
        END
    END

Verify "Content detail" value in Feed list dashboard
    ${get_request_premium_content_value}=   Get Text  ${partner_dashboard_main_page.feed_list_content_detail}
    ${value_request_premium.created_date_and_time}=         evaluate       '${value_request_premium.created_date}'.replace(' ',', ')
    @{check_request_premium_content_value}   Create List    ${value_request_premium_list.uw_no_value}    ${value_request_premium_list.insure_company_value}    ${value_request_premium_list.check_premium_type_value}   ${value_request_premium.created_date_and_time}
    FOR    ${content_value}    IN    @{check_request_premium_content_value}
        Should Contain Any    ${get_request_premium_content_value}      ${content_value}
    END

# # Question detail component
Verify "Question detail" value in Feed list dashboard
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_dashboard_main_page.feed_list_question_detail}
    ${get_details_question_detail_value}=   Get Text  ${partner_dashboard_main_page.feed_list_question_detail}
    Should Contain Any    ${get_details_question_detail_value}      ${value_request_premium.question_detail}

Click "Action" button in Partner dashboard
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_dashboard_main_page.action_button}
    SeleniumLibrary.Click Element                    ${partner_dashboard_main_page.action_button}

Click "Reply" button in Action button
    SeleniumLibrary.Wait Until Element Is Visible    ${partner_dashboard_main_page.reply_button}
    SeleniumLibrary.Click Element                    ${partner_dashboard_main_page.reply_button}
    common.Wait for process 5s
