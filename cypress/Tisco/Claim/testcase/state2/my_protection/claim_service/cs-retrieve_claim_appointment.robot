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
# Retrieve Claim Appointment
@{value_claim_appointment.start_claim_appointment_date_first}         1   เมษายน   2567
@{value_claim_appointment.start_claim_appointment_date_last}          3   เมษายน   2567
@{value_claim_appointment.end_claim_appointment_date_first}           1   เมษายน   2567
@{value_claim_appointment.end_claim_appointment_date_last}            4   เมษายน   2567
${value_claim_appointment.contact_name}                               อธิวิทRDS ทดสอบอธิวิทRDSAA
${value_claim_appointment.contact_phone_number}                       0846422332


*** Test Cases ***
# # ||----- Retrieve Claim Appointment flow -----||
RetrieveClaimAppointment_flow - Search Claim Appointment
    common.Click 'Retrieve Claim Appointment' tab
    Sleep  5s
    retrieve_claim_appointment_feature.Input All field in 'Retrieve Claim Appointment'  ${value_claim_appointment.start_claim_appointment_date_first}
                                                                                ...     ${value_claim_appointment.start_claim_appointment_date_last}
                                                                                ...     ${value_claim_appointment.end_claim_appointment_date_first}
                                                                                ...     ${value_claim_appointment.end_claim_appointment_date_last}
                                                                                ...     ${value_claim_appointment.contact_name}
                                                                                ...     ${value_claim_appointment.contact_phone_number}
    retrieve_claim_appointment_page.Click 'Search' Button
    retrieve_claim_appointment_page.Verify "Claim Appointment" details