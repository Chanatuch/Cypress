***Keywords***
Input All field in 'Retrieve Claim Appointment'           
    [Arguments]                             ${value_claim_appointment.start_claim_appointment_date_first}
                                    ...     ${value_claim_appointment.start_claim_appointment_date_last}
                                    ...     ${value_claim_appointment.end_claim_appointment_date_first}
                                    ...     ${value_claim_appointment.end_claim_appointment_date_last}
                                    ...     ${value_claim_appointment.contact_name}
                                    ...     ${value_claim_appointment.contact_phone_number}

    retrieve_claim_appointment_page.Input 'Start Claim Appointment Date' field       ${value_claim_appointment.start_claim_appointment_date_first}   ${value_claim_appointment.start_claim_appointment_date_last}
    retrieve_claim_appointment_page.Input 'End Claim Appointment Date' field         ${value_claim_appointment.end_claim_appointment_date_first}     ${value_claim_appointment.end_claim_appointment_date_last}
    retrieve_claim_appointment_page.Input 'Contact Name' field                       ${value_claim_appointment.contact_name}
    retrieve_claim_appointment_page.Input 'Contact Phone Number' field               ${value_claim_appointment.contact_phone_number}

