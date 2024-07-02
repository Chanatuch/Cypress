*** Variables ***

# element xpath variable
${retrieve_claim_appointment_page.start_appointment_calendar}           xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-0ea1cd3e-e6a1-4c4b-9253-7674025f9ba2/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[2]/div[1]/mbs-common-field/mbs-widget-date-between/div/div/span/input[1]
${retrieve_claim_appointment_page.end_appointment_calendar}             xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-0ea1cd3e-e6a1-4c4b-9253-7674025f9ba2/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[2]/div[2]/mbs-common-field/mbs-widget-date-between/div/div/span/input[1]
${retrieve_claim_appointment_page.year_calendar}                        xpath=/html/body/div[1]/div[2]/div/owl-date-time-container/div[2]/owl-date-time-calendar/div[1]/div/button/span/span
${retrieve_claim_appointment_page.contact_name_field}                   xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-0ea1cd3e-e6a1-4c4b-9253-7674025f9ba2/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[3]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_appointment_page.contact_phone_number_field}           xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-0ea1cd3e-e6a1-4c4b-9253-7674025f9ba2/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[3]/div[2]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_appointment_page.search_button}                        xpath=//div[@class="widget-button"]/button[@type="submit"]/span[contains(text(),'ค้นหา')]
# # text variable
# element description
${value.process_completed}          ท่านทำรายการสำเร็จ
*** Keywords ***
Input 'Start Claim Appointment Date' field
    [Arguments]              ${value_claim_appointment.start_claim_appointment_date_first}   ${value_claim_appointment.start_claim_appointment_date_last}
    ${start_claim_appointment_date_ranges}    Create List    ${value_claim_appointment.start_claim_appointment_date_first}   ${value_claim_appointment.start_claim_appointment_date_last}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.start_appointment_calendar} 
    SeleniumLibrary.Click Element                       ${retrieve_claim_appointment_page.start_appointment_calendar}
    common.Wait for process 2s
    FOR  ${start_appoint_date}    IN    @{start_claim_appointment_date_ranges}
        SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.year_calendar} 
        SeleniumLibrary.Click Element                       ${retrieve_claim_appointment_page.year_calendar}
        # Select Process date (Year)
        # ${gregorian_year}=      common.Convert Year to Gregorian Calender  ${start_appoint_date}[2]
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${start_appoint_date}[2]')]
        SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${start_appoint_date}[2]')]
        common.Wait for process 1s
        # Select Process date (Month)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${start_appoint_date}[1] ${start_appoint_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${start_appoint_date}[1] ${start_appoint_date}[2]"]
        common.Wait for process 1s
        # Select Process date (Day)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${start_appoint_date}[0] ${start_appoint_date}[1] ${start_appoint_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${start_appoint_date}[0] ${start_appoint_date}[1] ${start_appoint_date}[2]"]
        common.Wait for process 1s
    END

Input 'End Claim Appointment Date' field
    [Arguments]              ${value_claim_appointment.end_claim_appointment_date_first}     ${value_claim_appointment.end_claim_appointment_date_last}
    ${end_claim_appointment_date_ranges}    Create List    ${value_claim_appointment.end_claim_appointment_date_first}     ${value_claim_appointment.end_claim_appointment_date_last}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.end_appointment_calendar} 
    SeleniumLibrary.Click Element                       ${retrieve_claim_appointment_page.end_appointment_calendar}
    common.Wait for process 2s
    FOR  ${end_appoint_date}    IN    @{end_claim_appointment_date_ranges}
        SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.year_calendar} 
        SeleniumLibrary.Click Element                       ${retrieve_claim_appointment_page.year_calendar}
        # Select Process date (Year)
        # ${gregorian_year}=      common.Convert Year to Gregorian Calender  ${end_appoint_date}[2]
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${end_appoint_date}[2]')]
        SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${end_appoint_date}[2]')]
        common.Wait for process 1s
        # Select Process date (Month)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${end_appoint_date}[1] ${end_appoint_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${end_appoint_date}[1] ${end_appoint_date}[2]"]
        common.Wait for process 1s
        # Select Process date (Day)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${end_appoint_date}[0] ${end_appoint_date}[1] ${end_appoint_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${end_appoint_date}[0] ${end_appoint_date}[1] ${end_appoint_date}[2]"]
        common.Wait for process 1s
    END

Input 'Contact Name' field
    [Arguments]              ${value_claim_appointment.contact_name}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.contact_name_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_appointment_page.contact_name_field}      ${value_claim_appointment.contact_name}

Input 'Contact Phone Number' field
    [Arguments]              ${value_claim_appointment.contact_phone_number}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_appointment_page.contact_phone_number_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_appointment_page.contact_phone_number_field}      ${value_claim_appointment.contact_phone_number}

Click 'Search' Button
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_appointment_page.search_button}
    common.Wait for process 7s

Verify "Claim Appointment" details
    ${value.count}=    Set Variable    0
    @{list_claim_appointment}    Create List    
                                        # ...     ${value_claim_appointment.contact_name}
                                        ...     ${value_claim_appointment.contact_phone_number}

    FOR    ${claim_appoint_value}    IN    @{list_claim_appointment}
        ${Result_claim_appoint}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${claim_appoint_value}
        IF  '${Result_claim_appoint}' == 'True'
            Log  พบข้อมูลรายละเอียดความคุ้มครอง = ${list_claim_appointment}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${list_claim_appointment}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END

