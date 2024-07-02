*** Settings ***
Resource    ../../resource/import.robot

*** Variables ***
${navigator_bar.buy_insurance}      xpath=//div[contains(@class,"header")]//a[text()="ซื้อประกัน"]
${navigator_bar.buy_cancer_insurance}      xpath=//span[contains(text(),"ประกันมะเร็ง")and contains(@class,"ux-menu")]

*** Keywords ***
Click buy insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.buy_insurance}
    SeleniumLibrary.Click Element    ${navigator_bar.buy_insurance}

Click buy cancer insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.buy_cancer_insurance}
    SeleniumLibrary.Click Element    ${navigator_bar.buy_cancer_insurance}
