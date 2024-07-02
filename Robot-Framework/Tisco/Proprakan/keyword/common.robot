*** Settings ***
Resource    ../resource/import.robot
*** Keywords ***
Open tisco website
    SeleniumLibrary.Open Browser    https://myprotection-proprakan-state2.tbeta.co/buy-insurance    Chrome
    SeleniumLibrary.Set Window Size    ${1366}   ${700}

Wait for page load
    sleep    3s

Scroll down
    Execute JavaScript    window.scrollBy(0,450)

Scroll to
    [Arguments]    ${range}
    Execute JavaScript    window.scrollTo(0,${range})

Switch to window with url
    [Arguments]    ${url}
    ${all_window}=   SeleniumLibrary.Get Window Handles
    FOR    ${handle}    IN    @{all_window}
        SeleniumLibrary.Switch Window    ${handle}
        ${current_url}=     Get Location
        IF    "${current_url}"=="${url}"
            SeleniumLibrary.Switch Window    ${handle}
            Exit For Loop
        END
    END

Scroll Div to position
    [Arguments]    ${element_locator}    ${x_position}    ${y_position}
    ${scroll_js_code}=    Set Variable    arguments[0].scrollTo(arguments[1], arguments[2])
    Execute Javascript    ${scroll_js_code}    ${element_locator}    ${x_position}    ${y_position}