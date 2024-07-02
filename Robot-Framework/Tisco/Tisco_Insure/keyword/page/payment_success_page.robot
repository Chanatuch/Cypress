*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${payment_success_page.accomplishment}    xpath=//h2[contains(text(),"ขอบคุณที่ท่าน")]
${payment_success_page.track_number}    xpath=//div[text()="การสั่งซื้อดำเนินการเรียบร้อยแล้ว"]/..//div[contains(@class,"tisco-order")]
*** Keywords ***
Wait for message
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_success_page.accomplishment}    200s

Get track number
    ${text}    SeleniumLibrary.Get Text    ${payment_success_page.track_number}
    ${splited_text}    Split String    ${text}
    [Return]    ${splited_text}[1]