*** Settings ***
Resource    ../../resource/import.robot
*** Keywords ***
Pay money
    [Arguments]    ${cc_number}    ${name}    ${date}    ${code}
    Run Keyword And Ignore Error    payment_page.Click confirm
    common.Wait for page load
    common.Scroll to    1000
    common.Wait for page load
    payment_page.Click credit card type
    common.Wait for page load
    common.Wait for page load
    common.Wait for page load
    payment_page.Fill credit card field    ${cc_number}
    payment_page.Fill name on card    ${name}
    payment_page.Fill expire date    ${date}
    payment_page.Fill ccv    ${code}
    payment_page.Click pay button