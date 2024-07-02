*** Variables ***

# element xpath variable
${import_claim_main_page.process_date}                              xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div[2]/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[1]/div/channel-widget-datetime-picker/div/div/input[1]
${import_claim_main_page.ok_button}                                 xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div[2]/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[2]/channel-widget-button/div/button
${import_claim_main_page.year_calendar}                             xpath=//div[@class="owl-dt-calendar-control-content"]/..//span[@tabindex="-1"]/..//span[@class="owl-dt-control-button-arrow"]
${import_claim_main_page.next_button}                               xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div[2]/div[1]/service-node-page/div/div/div/div[2]/channel-widget-button/div/button
${import_claim_main_page.hour_timer_input_field}                    xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/owl-date-time-timer/owl-date-time-timer-box[1]/label/input
${import_claim_main_page.mins_timer_input_field}                    xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/owl-date-time-timer/owl-date-time-timer-box[2]/label/input
${import_claim_main_page.set_time_button}                           xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/div/button[2]/span
${import_claim_main_page.export_claim_start_date_field}             xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div[2]/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[1]/div[1]/channel-widget-textbox/div/div/div/input
${import_claim_main_page.export_claim_end_date_field}               xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div[2]/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[1]/div[2]/channel-widget-textbox/div/div/div/input
# # text variable
# element description
${value.process_completed}          ท่านทำรายการสำเร็จ
*** Keywords ***
Get Day Month Year 
    [Arguments]              ${value_claim.process_date}
    ${date_object}    Convert Date    ${value_claim.process_date}    result_format=%d/%m/%Y
    ${day}            Get Day         ${date_object}
    ${month}          Get Month       ${date_object}
    ${year}           Get Year        ${date_object}

    Set Global Variable    ${value_claim.process_date_day}                ${day}
    Set Global Variable    ${value_claim.process_date_month}                ${month}
    Set Global Variable    ${value_claim.process_date_year}                ${year}

Select Process date
    [Arguments]              ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.process_date} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.process_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.year_calendar} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.year_calendar}
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Year)
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Month)
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Day)
    common.Wait for process 1s

Select Date process
    [Arguments]              ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.process_date} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.process_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.year_calendar} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.year_calendar}
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Year)
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Month)
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Day)
    common.Wait for process 1s

Select Date process Noti Appointment
    [Arguments]              ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.process_date} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.process_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.year_calendar} 
    SeleniumLibrary.Click Element                       ${import_claim_main_page.year_calendar}
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Year)
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Month) Noti Appointment
    common.Wait for process 1s
    import_claim_main_page.Select Process date (Day) Noti Appointment
    common.Wait for process 1s

Select Process date (Year)
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${value_claim.process_date_year}"]
    SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${value_claim.process_date_year}"]

Select Process date (Month) Noti Appointment
    common.Convert Month to Month Abbreviation          ${value_claim.process_date_month}
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${value_claim.month_abbreviation}')]
    SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${value_claim.month_abbreviation}')]

Select Process date (Day) Noti Appointment
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${value_claim.process_date_day}')]
    SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${value_claim.process_date_day}')]

Select Process date (Month)
    common.Convert Month to Month Abbreviation          ${value_claim.process_date_month}
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${value_claim.process_date_month} ${value_claim.process_date_year}"]/span[contains(text(),'${value_claim.month_abbreviation}')]
    SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${value_claim.process_date_month} ${value_claim.process_date_year}"]/span[contains(text(),'${value_claim.month_abbreviation}')]

Select Process date (Day)
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${value_claim.process_date_month} ${value_claim.process_date_day}, ${value_claim.process_date_year}"]/span[contains(text(),'${value_claim.process_date_day}')]
    SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${value_claim.process_date_month} ${value_claim.process_date_day}, ${value_claim.process_date_year}"]/span[contains(text(),'${value_claim.process_date_day}')]

Click "OK" button
    SeleniumLibrary.Wait Until Element Is Visible    ${import_claim_main_page.ok_button}
    SeleniumLibrary.Click Element                    ${import_claim_main_page.ok_button}

Click "Next" button
    SeleniumLibrary.Wait Until Element Is Visible    ${import_claim_main_page.next_button}
    SeleniumLibrary.Click Element                    ${import_claim_main_page.next_button}

Input Timer
    [Arguments]              ${value_claim.hour_time}   ${value_claim.mins_time}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.hour_timer_input_field}
    SeleniumLibrary.Input Text                          ${import_claim_main_page.hour_timer_input_field}      ${value_claim.hour_time}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.mins_timer_input_field}
    SeleniumLibrary.Input Text                          ${import_claim_main_page.mins_timer_input_field}      ${value_claim.mins_time}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.set_time_button}
    SeleniumLibrary.Click Element                       ${import_claim_main_page.set_time_button}

Input Export Claim (Start date)
    [Arguments]              ${value_claim_export.start_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.export_claim_start_date_field}
    SeleniumLibrary.Input Text                          ${import_claim_main_page.export_claim_start_date_field}      ${value_claim_export.start_date}

Input Export Claim (End date)
    [Arguments]              ${value_claim_export.end_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_claim_main_page.export_claim_end_date_field}
    SeleniumLibrary.Input Text                          ${import_claim_main_page.export_claim_end_date_field}      ${value_claim_export.end_date}

Check Import Claim Completed
    SeleniumLibrary.Wait Until Page Contains    ${value.process_completed}