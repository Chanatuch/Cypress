*** Settings ***
Resource    ../source/import.robot
Test Setup    common.Open website

***Test Cases***
Insured
    Insured-Info_feature.input insured Info   ${Insured-Info.input_name}    ${Insured-Info.input_surname}
    
    Debug