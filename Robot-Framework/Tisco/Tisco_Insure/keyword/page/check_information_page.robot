*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${check_information_page.go_to_next_step}     xpath=//app-step-third-review//button[contains(text(),'ขั้นตอนถัดไป')]
${check_information_page.start_protection_date}     xpath=//*[text()="วันที่เริ่มคุ้มครอง"]/../..//div[contains(@class,"right")]/strong

*** Keywords ***
Scroll to last
    Execute JavaScript    window.scrollTo(0,3000)

Click go to next step
    SeleniumLibrary.Wait Until Element Is Visible    ${check_information_page.go_to_next_step}
    SeleniumLibrary.Click Element    ${check_information_page.go_to_next_step}

Get date
    SeleniumLibrary.Wait Until Element Is Visible    ${check_information_page.start_protection_date}
    ${text}    SeleniumLibrary.Get Text    ${check_information_page.start_protection_date}
    [Return]   ${text}