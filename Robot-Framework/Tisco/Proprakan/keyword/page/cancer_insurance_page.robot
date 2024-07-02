*** Settings ***
Resource    ../../resource/import.robot

*** Variables ***
${health_insurance_page.buy_first_plan}    xpath=//span[text()="ซื้อแผน 1"]

*** Keywords ***
Click buy first plan
    SeleniumLibrary.Wait Until Element Is Visible    ${health_insurance_page.buy_first_plan}
    SeleniumLibrary.Click Element    ${health_insurance_page.buy_first_plan}
