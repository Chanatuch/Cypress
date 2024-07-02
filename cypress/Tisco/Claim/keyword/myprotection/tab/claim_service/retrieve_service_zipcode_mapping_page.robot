*** Variables ***

# element xpath variable
${retrieve_zipcode_map_page.brand_field}        xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-47ed631a-287b-44f3-ab20-617570f7162f/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[1]/div[1]/mbs-common-field/mbs-widget-dropdown/div/div/div/input
${retrieve_zipcode_map_page.zipcode_field}      xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-47ed631a-287b-44f3-ab20-617570f7162f/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[1]/div[2]/mbs-common-field/mbs-widget-number/div/div/div/input
${retrieve_zipcode_map_page.province_field}     xpath=//input[@id="id.O2_D9_88.search.criteria.criteriafield._1662"]
${retrieve_zipcode_map_page.oem_code_field}     xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-47ed631a-287b-44f3-ab20-617570f7162f/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[2]/div[2]/mbs-common-field/mbs-widget-textbox/div/div/span/input

# # text variable
# element description
${value.process_completed}          ท่านทำรายการสำเร็จ
*** Keywords ***
Input 'Brand' field
    [Arguments]              ${value_zipcode_map.brand}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_zipcode_map_page.brand_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_zipcode_map_page.brand_field}      ${value_zipcode_map.brand}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-47ed631a-287b-44f3-ab20-617570f7162f/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel[1]/div/div[2]/div[2]/div/form/div[1]/div[1]/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_zipcode_map.brand}')] 

Input 'Zipcode' field
    [Arguments]              ${value_zipcode_map.zipcode}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_zipcode_map_page.zipcode_field}
    SeleniumLibrary.Input Text                          ${retrieve_zipcode_map_page.zipcode_field}      ${value_zipcode_map.zipcode}

Input 'Province' field
    [Arguments]              ${value_zipcode_map.province}
    common.Wait for process 2s
    SeleniumLibrary.Click Element                       ${retrieve_zipcode_map_page.province_field}
    common.Wait for process 2s
    SeleniumLibrary.Input Text                          ${retrieve_zipcode_map_page.province_field}      ${value_zipcode_map.province}
    common.Wait for process 4s
    SeleniumLibrary.Click Element                       xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/screen-node-page/div/div/div/mbs-47ed631a-287b-44f3-ab20-617570f7162f/mbs-templates-main/mbs-templates-search/mbs-common-search/mbs-widget-panel/div/div[2]/div[2]/div/form/div[2]/div[1]/mbs-common-field/mbs-widget-dropdown/div/div/div/div[2]/div/span[contains(text(),'${value_zipcode_map.province}')] 

Input 'OEM code' field
    [Arguments]              ${value_zipcode_map.oem_code}
    SeleniumLibrary.Wait Until Element Is Visible       ${retrieve_zipcode_map_page.oem_code_field}
    SeleniumLibrary.Input Text                          ${retrieve_zipcode_map_page.oem_code_field}      ${value_zipcode_map.oem_code}
