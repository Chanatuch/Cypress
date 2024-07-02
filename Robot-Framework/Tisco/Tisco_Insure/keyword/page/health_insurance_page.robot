*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${health_insurance_page.cancer_insurance}    xpath=//a[@class="uk-text-primary"]/h4[contains(text(), 'ประกันคุ้มครองโรคมะเร็ง')]
${health_insurance_page.buy_cancer_insurance}    xpath=//h3[contains(text(), 'TISCO Zero Cancer')]/../../..//a[contains(text(), 'ซื้อประกันออนไลน์')]
${health_insurance_page.page_title}    xpath=//h1[contains(text(), 'ประกันสุขภาพและโรคร้าย')]

*** Keywords ***
Click cancer insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${health_insurance_page.cancer_insurance}
    SeleniumLibrary.Click Element    ${health_insurance_page.cancer_insurance}

Click buy cancer insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${health_insurance_page.buy_cancer_insurance}
    SeleniumLibrary.Click Element    ${health_insurance_page.buy_cancer_insurance}

Current page is health insurance page
    SeleniumLibrary.Wait Until Element Is Visible    ${health_insurance_page.page_title}

Scroll down to insurance product
    Execute JavaScript    window.scrollTo(0,800)
