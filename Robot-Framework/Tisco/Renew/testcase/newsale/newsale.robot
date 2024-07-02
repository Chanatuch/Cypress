*** Setting ***
Resource      ../../resource/import.robot
Test Setup       common.Access to "okta Beta" login     ${value.state2_username}      ${value.state2_password}     ${value.state2_url}       ${xpath.state2_username_inputField}     ${xpath.state2_password_inputField}      ${xpath.state2_submitutton}      ${value.checkISP}
Test Teardown    Close All Browsers

*** Variables ***
## value input of "okta beta" login
${value.state2_url}     https://beta-tisco.okta.com/login/login.htm
${value.state2_username}    puangkae
${value.state2_password}    Aum711467345
${value.checkISP}           1269-Insurance Sale Portal-Beta_State2

## xpath of "okta beta" login
${xpath.state2_username_inputField}    xpath=//input[@autocomplete="username"]
${xpath.state2_password_inputField}    xpath=//input[@autocomplete="current-password"]
${xpath.state2_submitutton}            xpath=//input[@id="okta-signin-submit"]
${xpath.state2_search}                 xpath=//input[@data-se="search-input"]

#||||------------------------------------------------------------------||||#

# # xpath of "okta Beta" login
${xpath.state2_username_inputField}     xpath=//input[@autocomplete="username"]
${xpath.state2_password_inputField}     xpath=//input[@autocomplete="current-password"]
${xpath.state2_submitutton}             xpath=//input[@id="okta-signin-submit"]
${value.checknewsale}                   1269-Insurance Sale Portal-Beta_State2
${xpath.state2_1269}                    xpath=//span[contains(text(),'${value.checknewsale}')] 

#value
${value.isp_title}      Insurance Sale Portal                
*** Keywords ***

*** Test Cases ***
click Element
    feature.Varidate search button before input data
    
    

