*** Variables ***

# element xpath variable
${group_of_assignment_main_page.setting_tab}                                        xpath=//ul[@role="menu"]/li/ul[@class="ant-menu-item-group-list"]/*[5]
${group_of_assignment_main_page.group_fo_assign_tag_management_menuItem}            xpath=//ul[@role="menu"]/li[@role="menuitem"]/span/div/div[contains(text(),'Group of Assign Tag Management')]
${group_of_assignment_main_page.search_group_inputField}                            xpath=//span[@class="ant-input-affix-wrapper sc-fKgJPI oxoKX"]/input
${group_of_assignment_main_page.search_assign_tag_inputField}                       xpath=/html/body/div/div/div/section/section/section/main/div[2]/div[1]/div[1]/div/span/input
${group_of_assignment_main_page.search_member_inputField}                           xpath=/html/body/div/div/div/section/section/section/main/div[2]/div[1]/div[1]/div/span/input
${group_of_assignment_main_page.add_member_button}                                  xpath=//main/..//button/span[contains(text(),'Add Member')]
${group_of_assignment_main_page.add_member_inputField}                              xpath=//input[@id="rc_select_2"]
${group_of_assignment_main_page.confirm_button}                                     xpath=//span[contains(text(),'Confirm')]
${group_of_assignment_main_page.member_checkbox}                                    xpath=//th[@class="ant-table-cell ant-table-selection-column"]/..//input[@class="ant-checkbox-input"]
${group_of_assignment_main_page.delete_member_button}                               xpath=//main/..//button/span[contains(text(),'Delete Selected')]
${group_of_assignment_main_page.confirm_to_delete_button}                           xpath=//div[@class="ant-modal-content"]/..//button/span[contains(text(),'Delete')]

# # text variable
# element description
${group_of_assignment_main_page_text.success}                                       Success
${group_of_assignment_main_page_text.add_member}                                    Create Member Success
${group_of_assignment_main_page_text.deleted_member}                                Member 1 member was deleted

*** Keywords ***
Click 'Setting' tab
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.setting_tab}
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.setting_tab}

Click 'Group of Assign Tag Management' tab
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.group_fo_assign_tag_management_menuItem}
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.group_fo_assign_tag_management_menuItem}

Input 'Search Group' search field
    [Arguments]              ${value_dealer.group_name}
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.search_group_inputField}
    SeleniumLibrary.Input Text                          ${group_of_assignment_main_page.search_group_inputField}      ${value_dealer.group_name}
    common.Wait for process 2s
    group_of_assignment_main_page.Click Group Name      ${value_dealer.group_name}

Click Group Name 
    [Arguments]              ${value_dealer.group_name}
    SeleniumLibrary.Click Element                       xpath=//tbody[@class="ant-table-tbody"]/*[2]/td/div[contains(text(),'${value_dealer.group_name}')]

Input 'Search Assign Tag' search field
    [Arguments]              ${value_dealer.assign_tag}
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.search_assign_tag_inputField}
    SeleniumLibrary.Input Text                          ${group_of_assignment_main_page.search_assign_tag_inputField}      ${value_dealer.assign_tag}
    common.Wait for process 2s
    group_of_assignment_main_page.Click Assign Tag      ${value_dealer.assign_tag}

Click Assign Tag
    [Arguments]              ${value_dealer.assign_tag}
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//div[@class="ant-table-body"]/..//tbody[@class="ant-table-tbody"]/tr/td/..//span[contains(text(),'${value_dealer.assign_tag}')]
    SeleniumLibrary.Click Element                       xpath=//div[@class="ant-table-body"]/..//tbody[@class="ant-table-tbody"]/tr/td/..//span[contains(text(),'${value_dealer.assign_tag}')]

Click 'Add member' button
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.add_member_button}
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.add_member_button}

Input 'Add member' input field
    [Arguments]              ${value_dealer.member_name}
    common.Wait for process 3s
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.add_member_inputField}
    SeleniumLibrary.Input Text                          ${group_of_assignment_main_page.add_member_inputField}      ${value_dealer.member_name}

Select 'Member' Dropdown list
    [Arguments]              ${value_dealer.member_name}
    common.Wait for process 5s
    SeleniumLibrary.Wait Until Element Is Visible       xpath=//div[@name="${value_dealer.member_name}"]
    SeleniumLibrary.Click Element                       xpath=//div[@name="${value_dealer.member_name}"]
    common.Wait for process 2s

Click 'Confirm' button
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.confirm_button}
    SeleniumLibrary.Click Element                        ${group_of_assignment_main_page.confirm_button}

Check 'Success (Add member)' message
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Page Contains    ${group_of_assignment_main_page_text.success}
    SeleniumLibrary.Wait Until Page Contains    ${group_of_assignment_main_page_text.add_member}

Input 'Search Member' search field
    [Arguments]              ${dealer_member_name}
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.search_member_inputField}
    SeleniumLibrary.Input Text                          ${group_of_assignment_main_page.search_member_inputField}      ${dealer_member_name}

Clear text 'Search Member' search field
    SeleniumLibrary.Clear Element Text               ${group_of_assignment_main_page.search_member_inputField} 

Select 'Checkbox' member list
    common.Wait for process 5s
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.member_checkbox}

Click 'Delete Selected member' button
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.delete_member_button}
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.delete_member_button}

Click 'Confirm to Delete' button
    SeleniumLibrary.Wait Until Element Is Visible       ${group_of_assignment_main_page.confirm_to_delete_button}
    SeleniumLibrary.Click Element                       ${group_of_assignment_main_page.confirm_to_delete_button}

Check 'Success (Delete member)' message
    common.Wait for process 2s
    SeleniumLibrary.Wait Until Page Contains    ${group_of_assignment_main_page_text.success}
    SeleniumLibrary.Wait Until Page Contains    ${group_of_assignment_main_page_text.deleted_member}
