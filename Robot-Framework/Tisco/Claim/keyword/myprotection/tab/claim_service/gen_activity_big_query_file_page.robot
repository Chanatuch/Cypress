*** Variables ***

# element xpath variable
${gen_activity_big_query_file_page.gen_file_start_date_field}             xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[1]/div[1]/channel-widget-textbox/div/div/div/input
${gen_activity_big_query_file_page.gen_file_end_date_field}               xpath=/html/body/app-root/app-app-code/home-master-page/div/div[2]/div[2]/div/flow-controller-page/div/div/div[1]/service-node-page/div/channel-widget-panel/div/div/div[2]/div/div[1]/div[2]/channel-widget-textbox/div/div/div/input
${gen_activity_big_query_file_page.ok_button}                             xpath=//div[@class="widget-button"]/button[@id="button_"]/span[contains(text(),'ตกลง')]

# # text variable
# element description
${value.process_completed}          ท่านทำรายการสำเร็จ
*** Keywords ***
Input Generate Claim Activity Report & Layout Big Query (Start date)
    [Arguments]              ${value_gen_activity_bigQuery_file.start_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${gen_activity_big_query_file_page.gen_file_start_date_field}
    SeleniumLibrary.Input Text                          ${gen_activity_big_query_file_page.gen_file_start_date_field}      ${value_gen_activity_bigQuery_file.start_date}

Input Generate Claim Activity Report & Layout Big Query (End date)
    [Arguments]              ${value_gen_activity_bigQuery_file.end_date}
    SeleniumLibrary.Wait Until Element Is Visible       ${gen_activity_big_query_file_page.gen_file_end_date_field}
    SeleniumLibrary.Input Text                          ${gen_activity_big_query_file_page.gen_file_end_date_field}      ${value_gen_activity_bigQuery_file.end_date}

Click "OK" button
    SeleniumLibrary.Wait Until Element Is Visible    ${gen_activity_big_query_file_page.ok_button}
    SeleniumLibrary.Click Element                    ${gen_activity_big_query_file_page.ok_button}

Check Generate Claim Activity Report & Layout Big Query Completed
    SeleniumLibrary.Wait Until Page Contains    ${value.process_completed}