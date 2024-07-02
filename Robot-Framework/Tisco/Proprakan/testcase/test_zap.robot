*** Settings ***
Resource    ../resource/import.robot
Test Setup    common.Open tisco website
Test Teardown    Close browser

*** Test Cases ***
zap proprakan website
    select_insurance_feature.Select zap and fill information  ${test_zap.birthdate.day}  ${test_zap.birthdate.month}  ${test_zap.birthdate.year}
    fill_information_feature.Fill zap information  ${test_zap.name_title}  ${test_zap.name}  ${test_zap.surname}  ${test_zap.height}  ${test_zap.weight}  
    ...    ${test_zap.id}  ${test_zap.phone}  ${test_zap.email}  ${test_zap.job}  ${test_zap.job_desc}  ${test_zap.address}  ${test_zap.district}    ${test_zap.sub_district}
    check_information_feature.Verify date zap
    check_information_feature.Go to OTP step
    Debug
    #input otp input "c" in command line
    payment_feature.Pay money    ${test_zap.cc}    ${test_zap.name}    ${test_zap.date}    ${test_zap.code}
    payment_success_page.Wait for message
    ${track_number}    payment_success_page.Get track number
    Test dataset zap    ${track_number}