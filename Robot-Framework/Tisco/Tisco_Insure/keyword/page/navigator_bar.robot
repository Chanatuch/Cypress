*** Settings ***
Resource    ../../resource/import.robot
*** Variables ***
${navigator_bar.insurance_product}      xpath=//li[@class="ng-star-inserted"]/a[contains(text(), 'ผลิตภัณฑ์ประกัน')]
${navigator_bar.health_and_deceases_insurance}      xpath=//li[@class="dropdown-menu.item ng-star-inserted"]/a[contains(text(), 'ประกันสุขภาพและโรคร้าย')]
${navigator_bar.pop_up}      xpath=//button[contains(@class,'close-outside')]
${navigator_bar.accept_cookie}      xpath=//button[contains(@class,"cookie-accept")]
${navigator_bar.contact_us}      xpath=//a[contains(text(), 'ติดต่อเรา')]
*** Keywords ***
Hover insurance product
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.insurance_product}
    SeleniumLibrary.Mouse Over    ${navigator_bar.insurance_product}

Click health and deceases insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.health_and_deceases_insurance}
    SeleniumLibrary.Click Element    ${navigator_bar.health_and_deceases_insurance}

Hover health and deceases insurance
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.health_and_deceases_insurance}
    SeleniumLibrary.Mouse Over    ${navigator_bar.health_and_deceases_insurance}
Close pop up
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.pop_up}
    SeleniumLibrary.Click Element    ${navigator_bar.pop_up}

Click accept cookie
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.accept_cookie}
    SeleniumLibrary.Click Element    ${navigator_bar.accept_cookie}

Hover contact us
    SeleniumLibrary.Wait Until Element Is Visible    ${navigator_bar.contact_us}
    SeleniumLibrary.Mouse Over    ${navigator_bar.contact_us}