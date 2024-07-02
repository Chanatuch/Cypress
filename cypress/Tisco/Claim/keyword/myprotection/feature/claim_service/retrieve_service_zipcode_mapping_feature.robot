***Keywords***
Input All field in 'Retrieve Service Zipcode Mapping'   
    [Arguments]                             ${value_zipcode_map.brand}
                        ...                 ${value_zipcode_map.zipcode}
                        ...                 ${value_zipcode_map.province}
                        ...                 ${value_zipcode_map.oem_code}
    retrieve_service_zipcode_mapping_page.Input 'Brand' field       ${value_zipcode_map.brand}
    retrieve_service_zipcode_mapping_page.Input 'Zipcode' field     ${value_zipcode_map.zipcode}
    retrieve_service_zipcode_mapping_page.Input 'Province' field    ${value_zipcode_map.province}
    retrieve_service_zipcode_mapping_page.Input 'OEM code' field    ${value_zipcode_map.oem_code}