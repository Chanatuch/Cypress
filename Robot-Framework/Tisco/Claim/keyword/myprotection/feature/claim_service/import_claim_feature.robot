***Keywords***

Execution : Upload Claim
    [Arguments]              ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    # import_claim_main_page.Get Day Month Year   ${value_claim.process_date}
    import_claim_main_page.Select Process date      ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    common.Wait for process 5s
    import_claim_main_page.Click "OK" button
    common.Wait for process 9 mins
    import_claim_main_page.Click "Next" button

Execution : Update Claim Status
    [Arguments]              ${value_claim_status.process_date_day}     ${value_claim_status.process_date_month}   ${value_claim_status.process_date_year}   ${value_claim_status.hour_time}   ${value_claim_status.mins_time}
    import_claim_main_page.Select Date process      ${value_claim_status.process_date_day}     ${value_claim_status.process_date_month}   ${value_claim_status.process_date_year}
    import_claim_main_page.Input Timer              ${value_claim_status.hour_time}   ${value_claim_status.mins_time}
    common.Wait for process 7s
    import_claim_main_page.Click "OK" button
    common.Wait for process 5 mins
    import_claim_main_page.Click "Next" button

Execution : Notify Appointment
    [Arguments]              ${value_claim_notify.process_date_day}     ${value_claim_notify.process_date_month}   ${value_claim_notify.process_date_year}
    import_claim_main_page.Select Date process Noti Appointment     ${value_claim_notify.process_date_day}     ${value_claim_notify.process_date_month}   ${value_claim_notify.process_date_year}
    common.Wait for process 5s
    import_claim_main_page.Click "OK" button
    common.Wait for process 5 mins
    import_claim_main_page.Click "Next" button

Export Claim Service from Insurer
    [Arguments]              ${value_claim_export.start_date}   ${value_claim_export.end_date}
    import_claim_main_page.Input Export Claim (Start date)      ${value_claim_export.start_date}
    import_claim_main_page.Input Export Claim (End date)        ${value_claim_export.end_date}
    common.Wait for process 5s
    import_claim_main_page.Click "OK" button
    common.Wait for process 4 mins  
    import_claim_main_page.Click "Next" button

