*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${select_insurance_page.accept_cookie}    xpath=//button[contains(text(),"ยอมรับ")]
${select_insurance_page.accept_terms_and_condition}    xpath=//button[text()="ตกลง"]
${select_insurance_page.select_product}    xpath=//select[@id="products"]
${select_insurance_page.zero_cancer_product_option}    xpath=//option[contains(text(),"TISCO Zero Cancer")]
${select_insurance_page.zero_accident_product_option}    xpath=//option[contains(text(),"TISCO Zero Accident")]
${select_insurance_page.self_insurance}    xpath=//label[contains(text(), 'ตนเอง')]
${select_insurance_page.male}    xpath=//label[contains(text(), 'ชาย')]
${select_insurance_page.day}    xpath=//select[@name="birthDate[0]"]
${select_insurance_page.month}    xpath=//select[@name="birthDate[1]"]
${select_insurance_page.year}    xpath=//select[@name="birthDate[2]"]
${select_insurance_page.no_cancer_signal}    xpath=//label[contains(text(),'ไม่เคย')]
${select_insurance_page.search_insurance}    xpath=//button[contains(text(),'ค้นหาเเบบประกันที่ใช่')]
${select_insurance_page.forth_plan}    xpath=//h3[contains(text(),'Plan 4')]/..
${select_insurance_page.second_plan}    xpath=//h3[contains(text(),'Plan 2')]/..
${select_insurance_page.first_plan}    xpath=//h3[contains(text(),'Plan 1')]/..
${select_insurance_page.proceed_to_fill_information}    xpath=//button[contains(text(),'ขั้นตอนต่อไป')]

*** Keywords ***
Click accept cookie
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.accept_cookie}
    SeleniumLibrary.Click Element    ${select_insurance_page.accept_cookie}

Click accept terms and condition
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.accept_terms_and_condition}
    SeleniumLibrary.Click Element    ${select_insurance_page.accept_terms_and_condition}

Click select product
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.select_product}
    SeleniumLibrary.Click Element    ${select_insurance_page.select_product}

Click zero cancer
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.zero_cancer_product_option}
    SeleniumLibrary.Click Element    ${select_insurance_page.zero_cancer_product_option}

Click zero accident
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.zero_accident_product_option}
    SeleniumLibrary.Click Element    ${select_insurance_page.zero_accident_product_option}

Click self insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.self_insurance}
    SeleniumLibrary.Click Element    ${select_insurance_page.self_insurance}

Click male
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.male}
    SeleniumLibrary.Click Element    ${select_insurance_page.male}

Select day
    [Arguments]    ${day}
    SeleniumLibrary.Select From List By Value    ${select_insurance_page.day}    ${day}

Select month
    [Arguments]    ${month}
    SeleniumLibrary.Select From List By Value    ${select_insurance_page.month}    ${month}

Select year
    [Arguments]    ${year}
    SeleniumLibrary.Select From List By Value    ${select_insurance_page.year}    ${year}

Click no sign of cancer
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.no_cancer_signal}
    SeleniumLibrary.Click Element    ${select_insurance_page.no_cancer_signal}

Click search insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.search_insurance}
    SeleniumLibrary.Click Element    ${select_insurance_page.search_insurance}

Click forth plan
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.forth_plan}
    SeleniumLibrary.Click Element    ${select_insurance_page.forth_plan}

Click second plan
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.second_plan}
    SeleniumLibrary.Click Element    ${select_insurance_page.second_plan}

Click first plan
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.first_plan}
    SeleniumLibrary.Click Element    ${select_insurance_page.first_plan}

Click next step
    SeleniumLibrary.Wait Until Element Is Visible    ${select_insurance_page.proceed_to_fill_information}
    SeleniumLibrary.Click Element    ${select_insurance_page.proceed_to_fill_information}

Scroll to next step button
    Execute JavaScript    window.scrollTo(0,2200)
