*** Settings ***
Resource    ../resource/import.robot
Test Setup    common.Open tisco website
Test Teardown    Close browser

*** Test Cases ***
zcp proprakan website
    select_insurance_feature.Select zcp and fill information  ${test_zcp.birthdate.day}  ${test_zcp.birthdate.month}  ${test_zcp.birthdate.year}
    fill_information_feature.Fill zcp information  ${test_zcp.name_title}  ${test_zcp.name}  ${test_zcp.surname}  ${test_zcp.height}  ${test_zcp.weight}  
    ...    ${test_zcp.id}  ${test_zcp.phone}  ${test_zcp.email}  ${test_zcp.job}  ${test_zcp.job_desc}  ${test_zcp.address}  ${test_zcp.district}    ${test_zcp.sub_district}
    check_information_feature.Verify date zcp
    check_information_feature.Go to OTP step
    Debug
    #input otp input "c" in command line
    payment_feature.Pay money    ${test_zcp.cc}    ${test_zcp.name}    ${test_zcp.date}    ${test_zcp.code}
    payment_success_page.Wait for message
    ${track_number}    payment_success_page.Get track number
    Test dataset zcp    ${track_number}