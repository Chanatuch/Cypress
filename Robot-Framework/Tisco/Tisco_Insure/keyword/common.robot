*** Settings ***
Resource    ../resource/import.robot
*** Keywords ***
Open tisco website
    SeleniumLibrary.Open Browser    https://myprotection3-state2.tbeta.co/buy-insurance    Chrome
    SeleniumLibrary.Set Window Size    ${1366}   ${700}

Wait for page load
    sleep    3s

Scroll down
    Execute JavaScript    window.scrollBy(0,450)

Scroll to
    [Arguments]    ${range}
    Execute JavaScript    window.scrollTo(0,${range})