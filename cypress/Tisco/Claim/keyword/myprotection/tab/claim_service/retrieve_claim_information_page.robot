*** Variables ***

# element xpath variable
${retrieve_claim_info_page.accident_no_field}                       xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[1]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.accident_no_calendar}                    xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[1]/div[2]/mbs-common-field/mbs-widget-date-between/div/div/span/input[1]
${retrieve_claim_info_page.year_calendar}                           xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/owl-date-time-calendar/div[1]/div/button/span/span
${retrieve_claim_info_page.claim_no_field}                          xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[2]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.claim_no_calendar}                       xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[2]/div[2]/mbs-common-field/mbs-widget-date-between/div/div/span/input[1]
${retrieve_claim_info_page.claim_no_year_calendar}                  xpath=/html/body/div/div[2]/div/owl-date-time-container/div[2]/owl-date-time-calendar/div[1]/div/button/span/span
${retrieve_claim_info_page.brand_field}                             xpath=//input[@id="id.O2_D4_97.search.criteria.criteriafield._1337"]
${retrieve_claim_info_page.brand_dropdown}                          xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[3]/div[1]/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_claim_info.brand}')]
${retrieve_claim_info_page.model_field}                             xpath=//input[@id="id.O2_D4_97.search.criteria.criteriafield._1338"]
${retrieve_claim_info_page.model_dropdown}                          xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[3]/div[2]/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_claim_info.model}')]
${retrieve_claim_info_page.customer_id_field}                       xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[4]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.customer_full_name_field}                xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[4]/div[2]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.accident_province_field}                 xpath=//input[@id="id.O2_D4_97.search.criteria.criteriafield._1662"]
${retrieve_claim_info_page.accident_province_dropdown}              xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[5]/div[1]/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_claim_info.accident_province}')]
${retrieve_claim_info_page.accident_zipcode_field}                  xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[5]/div[2]/mbs-common-field/mbs-widget-number/div/div/div/input
${retrieve_claim_info_page.license_no_field}                        xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[6]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.customer_zipcode_field}                  xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[6]/div[2]/mbs-common-field/mbs-widget-number/div/div/div/input
${retrieve_claim_info_page.customer_province_field}                 xpath=//input[@id="id.O2_D4_97.search.criteria.criteriafield._16668"]
${retrieve_claim_info_page.customer_province_dropdown}              xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[7]/div/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_claim_info.customer_province}')]
${retrieve_claim_info_page.app_code_field}                          xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[10]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.account_field}                           xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[10]/div[2]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.phone_number_at_accident_field}          xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[11]/div[1]/mbs-common-field/mbs-widget-textbox/div/div/span/input
${retrieve_claim_info_page.search_button}                           xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[14]/div/mbs-widget-button/div/button

# # text variable
# element description
${value.process_completed}          ท่านทำรายการสำเร็จ
*** Keywords ***
Input 'Accident no' field
    [Arguments]              ${value_claim_info.accident_no}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.accident_no_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.accident_no_field}      ${value_claim_info.accident_no}

Input 'Accident No Date' field
    [Arguments]              ${value_claim_info.accident_no_date_first}   ${value_claim_info.accident_no_date_last}
    ${accident_no_date_ranges}    Create List    ${value_claim_info.accident_no_date_first}   ${value_claim_info.accident_no_date_last}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.accident_no_calendar}
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.accident_no_calendar}
    common.Wait for process 2s
    FOR  ${accident_no_date}    IN    @{accident_no_date_ranges}
        SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.year_calendar} 
        SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.year_calendar}
        # Select Process date (Year)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${accident_no_date}[2]')]
        SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${accident_no_date}[2]')]
        common.Wait for process 1s
        # Select Process date (Month)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${accident_no_date}[1] ${accident_no_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${accident_no_date}[1] ${accident_no_date}[2]"]
        common.Wait for process 1s
        # Select Process date (Day)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${accident_no_date}[0] ${accident_no_date}[1] ${accident_no_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${accident_no_date}[0] ${accident_no_date}[1] ${accident_no_date}[2]"]
        common.Wait for process 1s
    END

Input 'Claim no' field
    [Arguments]              ${value_claim_info.claim_no}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.claim_no_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.claim_no_field}      ${value_claim_info.claim_no}

Input 'Claim No Date' field
    [Arguments]              ${value_claim_info.claim_no_date_first}  ${value_claim_info.claim_no_date_last}
    ${claim_no_date_ranges}    Create List    ${value_claim_info.claim_no_date_first}   ${value_claim_info.claim_no_date_last}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.claim_no_calendar}
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.claim_no_calendar}
    common.Wait for process 2s
    FOR  ${claim_no_date}    IN    @{claim_no_date_ranges}
        SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.claim_no_year_calendar} 
        SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.claim_no_year_calendar}
        # Select Process date (Year)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td/span[contains(text(),'${claim_no_date}[2]')]
        SeleniumLibrary.Click Element                       xpath=//td/span[contains(text(),'${claim_no_date}[2]')]
        common.Wait for process 1s
        # Select Process date (Month)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${claim_no_date}[1] ${claim_no_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${claim_no_date}[1] ${claim_no_date}[2]"]
        common.Wait for process 1s
        # Select Process date (Day)
        SeleniumLibrary.Wait Until Element Is Visible       xpath=//td[@aria-label="${claim_no_date}[0] ${claim_no_date}[1] ${claim_no_date}[2]"]
        SeleniumLibrary.Click Element                       xpath=//td[@aria-label="${claim_no_date}[0] ${claim_no_date}[1] ${claim_no_date}[2]"]
        common.Wait for process 1s
    END

Input 'Brand' field
    [Arguments]              ${value_claim_info.brand}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.brand_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.brand_field}      ${value_claim_info.brand}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.brand_dropdown} 

Input 'Model' field
    [Arguments]              ${value_claim_info.model}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.model_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.model_field}      ${value_claim_info.model}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.model_dropdown} 

Input 'Customer ID' field
    [Arguments]              ${value_claim_info.customer_id}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.customer_id_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.customer_id_field}      ${value_claim_info.customer_id}

Input 'Customer Full Name' field
    [Arguments]              ${value_claim_info.customer_full_name}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.customer_full_name_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.customer_full_name_field}      ${value_claim_info.customer_full_name}

Input 'Accident Province' field
    [Arguments]              ${value_claim_info.accident_province}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.accident_province_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.accident_province_field}      ${value_claim_info.accident_province}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.accident_province_dropdown}      

Input 'Accident Zipcode' field
    [Arguments]              ${value_claim_info.accident_zipcode}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.accident_zipcode_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.accident_zipcode_field}      ${value_claim_info.accident_zipcode}

Input 'License no' field
    [Arguments]              ${value_claim_info.license_no}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.license_no_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.license_no_field}      ${value_claim_info.license_no}

Input 'Customer Zipcode' field
    [Arguments]              ${value_claim_info.customer_zipcode}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.customer_zipcode_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.customer_zipcode_field}      ${value_claim_info.customer_zipcode}

Input 'Customer Province' field
    [Arguments]              ${value_claim_info.customer_province}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.customer_province_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.customer_province_field}      ${value_claim_info.customer_province}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.customer_province_dropdown}      

Input 'App code' field
    [Arguments]              ${value_claim_info.app_code}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.app_code_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.app_code_field}      ${value_claim_info.app_code}

Input 'Account' field
    [Arguments]              ${value_claim_info.account}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.account_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.account_field}      ${value_claim_info.account}

Input 'Phone Number At Accident' field
    [Arguments]              ${value_claim_info.phone_number_at_accident}
    common.Wait for process 1s
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_claim_info_page.phone_number_at_accident_field}
    SeleniumLibrary.Input Text                          ${retrieve_claim_info_page.phone_number_at_accident_field}      ${value_claim_info.phone_number_at_accident}

Click 'Search' Button
    common.Wait for process 2s
    Scroll Element Into View                            xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-16e2e802-ed24-4bbf-826c-2c5bb0815a2d/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[14]/div/mbs-widget-button/div/button
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_claim_info_page.search_button} 
    common.Wait for process 7s

Verify "Claim Information" details
    ${value.count}=    Set Variable    0
    @{list_claim_information}    Create List    ${value_claim_info.accident_no}
                                        ...     ${value_claim_info.claim_no}
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

    FOR    ${claim_info_value}    IN    @{list_claim_information}
        ${Result_claim_info}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${claim_info_value}
        IF  '${Result_claim_info}' == 'True'
            Log  พบข้อมูลรายละเอียดความคุ้มครอง = ${list_claim_information}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${list_claim_information}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END
