*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to My Protection    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.MyProtection}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}      xpath=//input[@name="identifier"]
${xpath.password_inputField}   xpath=//input[@name="credentials.passcode"]
${xpath.signIn_button}         xpath=//input[@value="Sign in"]
${value.MyProtection}          (RDBMS) Protection Platform - State2 (OpenID)



# # # || ----- Value Input ----- ||
# Execution : Upload Claim
${value_claim.process_date_day}                 6
${value_claim.process_date_month}               March
${value_claim.process_date_year}                2024
# Execution : Update Claim Status
${value_claim_status.process_date_day}          ${value_claim.process_date_day}
${value_claim_status.process_date_month}        ${value_claim.process_date_month}
${value_claim_status.process_date_year}         ${value_claim.process_date_year}
${value_claim_status.hour_time}                 17
${value_claim_status.mins_time}                 30
# Execution : Notify Appointment
${value_claim_notify.process_date_day}          ${value_claim.process_date_day}
${value_claim_notify.process_date_month}        ${value_claim.process_date_month}
${value_claim_notify.process_date_year}         ${value_claim.process_date_year}
# Export Claim Service from Insurer
${value_claim_export.start_date}                2024-04-3
${value_claim_export.end_date}                  2024-04-3

*** Test Cases ***
# # ||----- Upload Claim flow -----||
ImportClaim_flow
    common.Click 'Import Claim' tab
    Sleep  5s
    import_claim_feature.Execution : Upload Claim               ${value_claim.process_date_day}     ${value_claim.process_date_month}   ${value_claim.process_date_year}
    # import_claim_feature.Execution : Update Claim Status        ${value_claim_status.process_date_day}     ${value_claim_status.process_date_month}   ${value_claim_status.process_date_year}   ${value_claim_status.hour_time}   ${value_claim_status.mins_time}
    # import_claim_feature.Execution : Notify Appointment         ${value_claim_notify.process_date_day}     ${value_claim_notify.process_date_month}   ${value_claim_notify.process_date_year}
    # import_claim_feature.Export Claim Service from Insurer      ${value_claim_export.start_date}   ${value_claim_export.end_date}
    # import_claim_main_page.Check Import Claim Completed