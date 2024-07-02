*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to Octopus           ${value.email}   ${value.pin}   ${value.okta_url}   
                                            ...     ${xpath.email_inputField}   ${value.all_pin_field}   ${xpath.signIn_button}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://octopus2.tbeta.co/line-login/login
${value.email}      atiwit_nissan@tisco.co.th
@{value.pin}        1   7   1   2   9   8
# # xpath of "okta Beta" login
${xpath.email_inputField}       xpath=//input[@id="username"]
@{value.all_pin_field}          ${xpath.pin1}   ${xpath.pin2}   ${xpath.pin3}   ${xpath.pin4}   ${xpath.pin5}   ${xpath.pin6}
${xpath.pin1}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[1]
${xpath.pin2}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[2]
${xpath.pin3}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[3]
${xpath.pin4}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[4]
${xpath.pin5}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[5]
${xpath.pin6}                   xpath=/html/body/div/div/div/section/main/div/div[1]/div/div[2]/div/div/div[2]/div/div/swd-pin-field/input[6]
${xpath.signIn_button}          xpath=/html/body/div/div/div/section/main/div/div/div[1]/div/div[2]/div[4]/div/button



# # # || ----- Value Delete member Input ----- ||
${value_delete_dealer.group_name}       NISSAN Assistance
${value_delete_dealer.assign_tag}       N204
@{value_delete_dealer.member_name}      atiwit_nissan@tisco.co.th   

# # # || ----- Value Add member Input ----- ||
${value_assign_dealer.group_name}       NISSAN Assistance
${value_assign_dealer.assign_tag}       N205
@{value_assign_dealer.member_name}      atiwit_nissan@tisco.co.th

*** Test Cases ***
# # ||----- Searching draft flow -----||
Delete Dealer flow - Nissan
    group_of_assignment_feature.Search Group Name               ${value_delete_dealer.group_name}
    group_of_assignment_feature.Search Assign Tag Name          ${value_delete_dealer.assign_tag}
    group_of_assignment_feature.Delete Member in Group          ${value_delete_dealer.member_name}

Assign Dealer flow - Nissan
    group_of_assignment_feature.Search Group Name           ${value_assign_dealer.group_name}
    group_of_assignment_feature.Search Assign Tag Name      ${value_assign_dealer.assign_tag}
    group_of_assignment_feature.Add Member in Group         ${value_assign_dealer.member_name}