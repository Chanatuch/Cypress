*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem 

*** Keywords ***
Remove Screenshot Files

    ${files}    OperatingSystem.Get File    .    
    FOR    ${file}    IN    @{files}
        Run Keyword If    'selenium-screenshot' in ${file}    Remove File    ${file}
    END