*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to My Protection    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.MyProtection}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}      xpath=//input[@name="identifier"]
${xpath.password_inputField}   xpath=//input[@name="credentials.passcode"]
${xpath.signIn_button}         xpath=//input[@value="Sign in"]
${value.MyProtection}          (RDBMS) Protection Platform - State2 (OpenID)



# # # || ----- Value Input ----- ||
# Upload EIR file
${import_eir_file.eir_file_path}          C:/Users/ZAtiwit/Documents/Automate/Claim/resource/file/EIR_MonthlyReport022024.XLS

*** Test Cases ***
# # ||----- Upload EIR file flow -----||
UploadEIRFile_flow - Import File
    common.Click 'Import EIR File' tab
    Sleep  5s
    import_eir_file_main_page.Upload 'EIR' file     ${import_eir_file.eir_file_path}
    import_eir_file_main_page.Verify 'Upload file' success
    import_eir_file_main_page.Click 'OK' button
    Sleep  5s
