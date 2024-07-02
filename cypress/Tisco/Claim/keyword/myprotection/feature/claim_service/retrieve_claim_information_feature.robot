***Keywords***
Input All field in 'Retrieve Claim Information'           
    [Arguments]                             ${value_claim_info.accident_no}
                                    ...     ${value_claim_info.accident_no_date_first}
                                    ...     ${value_claim_info.accident_no_date_last}
                                    ...     ${value_claim_info.claim_no}
                                    ...     ${value_claim_info.claim_no_date_first}
                                    ...     ${value_claim_info.claim_no_date_last}
                                    ...     ${value_claim_info.brand}
                                    ...     ${value_claim_info.model}
                                    ...     ${value_claim_info.customer_id}
                                    ...     ${value_claim_info.customer_full_name}
                                    ...     ${value_claim_info.accident_province}
                                    ...     ${value_claim_info.accident_zipcode}
                                    ...     ${value_claim_info.license_no}
                                    ...     ${value_claim_info.customer_zipcode}
                                    ...     ${value_claim_info.customer_province}
                                    ...     ${value_claim_info.app_code}
                                    ...     ${value_claim_info.account}
                                    ...     ${value_claim_info.phone_number_at_accident}

    retrieve_claim_information_page.Input 'Accident no' field                   ${value_claim_info.accident_no}
    retrieve_claim_information_page.Input 'Accident No Date' field              ${value_claim_info.accident_no_date_first}  ${value_claim_info.accident_no_date_last}
    retrieve_claim_information_page.Input 'Claim no' field                      ${value_claim_info.claim_no}
    retrieve_claim_information_page.Input 'Claim No Date' field                 ${value_claim_info.claim_no_date_first}  ${value_claim_info.claim_no_date_last}
    retrieve_claim_information_page.Input 'Brand' field                         ${value_claim_info.brand}
    retrieve_claim_information_page.Input 'Model' field                         ${value_claim_info.model}
    retrieve_claim_information_page.Input 'Customer ID' field                   ${value_claim_info.customer_id}
    retrieve_claim_information_page.Input 'Customer Full Name' field            ${value_claim_info.customer_full_name}
    retrieve_claim_information_page.Input 'Accident Province' field             ${value_claim_info.accident_province}
    retrieve_claim_information_page.Input 'Accident Zipcode' field              ${value_claim_info.accident_zipcode}
    retrieve_claim_information_page.Input 'License no' field                    ${value_claim_info.license_no}
    retrieve_claim_information_page.Input 'Customer Zipcode' field              ${value_claim_info.customer_zipcode}
    retrieve_claim_information_page.Input 'Customer Province' field             ${value_claim_info.customer_province}
    retrieve_claim_information_page.Input 'App code' field                      ${value_claim_info.app_code}
    retrieve_claim_information_page.Input 'Account' field                       ${value_claim_info.account}
    retrieve_claim_information_page.Input 'Phone Number At Accident' field      ${value_claim_info.phone_number_at_accident}
