*** Variables ***

# element xpath variable
${import_eir_file_main_page.Import_eir_file}                    xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-b8f8d9f2-235b-4f9f-9759-0e649c8fb90c/mbs-templates-main/mbs-templates-upload/mbs-widget-panel/div/div[2]/div[2]/div/form/div[1]/div/div/div/div/input
${import_eir_file_main_page.Upload_button}                      xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-b8f8d9f2-235b-4f9f-9759-0e649c8fb90c/mbs-templates-main/mbs-templates-upload/mbs-widget-panel/div/div[2]/div[2]/div/form/div[2]/div[3]/mbs-widget-button/div/button
${import_eir_file_main_page.ok_button}                          xpath=//button[contains(text(),'OK')]
${import_eir_file_main_page.eir_file_name_field}                xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-b8f8d9f2-235b-4f9f-9759-0e649c8fb90c/mbs-templates-main/mbs-templates-upload/div[1]/div/div[1]/div/input
${import_eir_file_main_page.import_eir_calendar}                xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-b8f8d9f2-235b-4f9f-9759-0e649c8fb90c/mbs-templates-main/mbs-templates-upload/div[1]/div/div[2]/mbs-widget-date-between/div/div/span/div/i
${import_eir_file_main_page.year_calendar}                      xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/owl-date-time-calendar/div[1]/div/button/span/span
# # text variable
# element description
${value.upload_success_modal}          Success
${value.not_found}                     Not Found

*** Keywords ***
Upload 'EIR' file
    [Arguments]                             ${import_eir_file.eir_file_path}
    Choose File     ${import_eir_file_main_page.Import_eir_file}     ${import_eir_file.eir_file_path}
    Click Element   ${import_eir_file_main_page.Upload_button}

Verify 'Upload file' success
    common.Wait for process 5s
    ${Result_verify_upload_success}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${value.upload_success_modal}
    IF  '${Result_verify_upload_success}' != 'True'
        Fail  Upload file failed
    END        

Click 'OK' button
    common.Wait for process 2s
    SeleniumLibrary.Click Button        ${import_eir_file_main_page.ok_button}

Input 'EIR file name' field
    [Arguments]              ${search_eir_file.eir_file_name}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${import_eir_file_main_page.eir_file_name_field}
    SeleniumLibrary.Input Text                          ${import_eir_file_main_page.eir_file_name_field}      ${search_eir_file.eir_file_name}

Input 'Import Date' field
    [Arguments]              ${search_eir_file.import_date_first}   ${search_eir_file.import_date_last}
    ${import_date_ranges}    Create List    ${search_eir_file.import_date_first}   ${search_eir_file.import_date_last}
    SeleniumLibrary.Wait Until Element Is Visible       ${import_eir_file_main_page.import_eir_calendar} 
    SeleniumLibrary.Click Element                       ${import_eir_file_main_page.import_eir_calendar}
    common.Wait for process 2s
    FOR  ${import_eir_date}    IN    @{import_date_ranges}
        SeleniumLibrary.Wait Until Element Is Visible       ${import_eir_file_main_page.year_calendar} 
        SeleniumLibrary.Click Element                       ${import_eir_file_main_page.year_calendar}
        # Select Process date (Year)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${import_eir_date}[2]')]
        SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${import_eir_date}[2]')]
        common.Wait for process 1s
        # Select Process date (Month)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${import_eir_date}[1] ${import_eir_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${import_eir_date}[1] ${import_eir_date}[2]"]
        common.Wait for process 1s
        # Select Process date (Day)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${import_eir_date}[0] ${import_eir_date}[1] ${import_eir_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${import_eir_date}[0] ${import_eir_date}[1] ${import_eir_date}[2]"]
        common.Wait for process 1s
    END

Verify "FOUND / NOT FOUND" searching result for 'EIR file name' column
    ${Result}=      Run Keyword And Return Status    SeleniumLibrary.Element Should Not Be Visible    ${value.not_found}
    ${column_eir_file_name_values}    Create List
    IF  '${Result}' == 'True'
    ${Result_search_eir_file_success}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${search_eir_file.eir_file_name}
        IF  '${Result_search_eir_file_success}' != 'True'
            Fail  Search EIR Name: ${search_eir_file.eir_file_name} not found
        END        
    ELSE
        Fail    ไม่พบข้อมูล 
    END      
