***Keywords***
Search Group Name
    [Arguments]              ${value_dealer.group_name}
    group_of_assignment_main_page.Click 'Setting' tab
    group_of_assignment_main_page.Click 'Group of Assign Tag Management' tab
    group_of_assignment_main_page.Input 'Search Group' search field             ${value_dealer.group_name}
    common.Wait for process 2s

Search Assign Tag Name
    [Arguments]              ${value_dealer.assign_tag}
    group_of_assignment_main_page.Input 'Search Assign Tag' search field        ${value_dealer.assign_tag}
    common.Wait for process 2s

Add Member in Group
    [Arguments]              ${value_dealer.member_name}
    FOR    ${member_name_list}    IN    @{value_dealer.member_name}
        group_of_assignment_main_page.Click 'Add member' button
        group_of_assignment_main_page.Input 'Add member' input field    ${member_name_list}
        group_of_assignment_main_page.Select 'Member' Dropdown list     ${member_name_list}
        group_of_assignment_main_page.Click 'Confirm' button
        group_of_assignment_main_page.Check 'Success (Add member)' message
        common.Wait for process 3s
    END

Delete Member in Group
    [Arguments]              ${value_dealer.member_name}
    FOR    ${member_name_list}    IN    @{value_dealer.member_name}
        group_of_assignment_main_page.Input 'Search Member' search field    ${member_name_list}
        group_of_assignment_main_page.Select 'Checkbox' member list
        group_of_assignment_main_page.Click 'Delete Selected member' button
        group_of_assignment_main_page.Click 'Confirm to Delete' button
        group_of_assignment_main_page.Check 'Success (Delete member)' message
        group_of_assignment_main_page.Clear text 'Search Member' search field
        common.Wait for process 3s
    END