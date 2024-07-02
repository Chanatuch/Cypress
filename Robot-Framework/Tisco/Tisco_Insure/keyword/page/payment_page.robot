*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${payment_page.credit_card_type}    xpath=//*[contains(text(),"Credit Card")]
${payment_page.credit_card_field}    xpath=//input[contains(@id,"cc-number")]
${payment_page.name_on_card}    xpath=//input[contains(@name,"name_on_card")]
${payment_page.exp_date}    xpath=//input[contains(@name,"exp_date")]
${payment_page.security_code}    xpath=//input[contains(@name,"security_code")]
${payment_page.pay_button}    xpath=//button[contains(text(),"ชำระเงิน")]
${payment_page.confirm}    xpath=//button[text()="ยืนยัน"]
${payment_page.payment_text}    xpath=//h3[text()="การชำระเงิน"]
*** Keywords ***
Click confirm
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.confirm}
    SeleniumLibrary.Click Element    ${payment_page.confirm}
Click credit card type
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.credit_card_type}
    SeleniumLibrary.Click Element    ${payment_page.credit_card_type}

Fill credit card field
    [Arguments]    ${cc_number}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.credit_card_field}    60s
    SeleniumLibrary.Click Element    ${payment_page.credit_card_field}
    SeleniumLibrary.Press Keys    ${payment_page.credit_card_field}    ${cc_number}

Fill name on card
    [Arguments]    ${name}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.name_on_card}
    SeleniumLibrary.Input text    ${payment_page.name_on_card}    ${name}

Fill expire date
    [Arguments]    ${date}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.exp_date}
    SeleniumLibrary.Click Element    ${payment_page.exp_date}
    SeleniumLibrary.Press Keys    ${payment_page.exp_date}    ${date}

Fill ccv
    [Arguments]    ${code}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.security_code}
    SeleniumLibrary.Input text    ${payment_page.security_code}    ${code}

Click pay button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.pay_button}
    SeleniumLibrary.Click Element    ${payment_page.pay_button}

Click payment text
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_page.payment_text}
    SeleniumLibrary.Click Element    ${payment_page.payment_text}

