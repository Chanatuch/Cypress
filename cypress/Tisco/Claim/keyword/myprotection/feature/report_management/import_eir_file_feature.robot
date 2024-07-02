***Keywords***
Search All Field for 'EIR file'       
    [Arguments]                                                     ${search_eir_file.eir_file_name}
                                                ...                 ${search_eir_file.import_date_first}
                                                ...                 ${search_eir_file.import_date_last}
    import_eir_file_main_page.Input 'EIR file name' field           ${search_eir_file.eir_file_name}
    import_eir_file_main_page.Input 'Import Date' field             ${search_eir_file.import_date_first}   ${search_eir_file.import_date_last}
