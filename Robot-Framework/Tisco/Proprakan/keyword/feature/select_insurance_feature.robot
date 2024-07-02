*** Settings ***
Resource    ../../resource/import.robot
***Keywords***
Select zcp and fill information
    [Arguments]    ${day}    ${month}    ${year}
    common.Wait for page load
    common.Wait for page load
    common.Switch to window with url    https://insure.proprakan.com/buy-insurance?utm_source=web_proprakan&utm_medium=cancer_home&utm_campaign=plan1
    select_insurance_page.Click accept cookie
    select_insurance_page.Click accept terms and condition
    common.Scroll down
    select_insurance_page.Click select product
    select_insurance_page.Click zero cancer
    select_insurance_page.Click self insurance
    select_insurance_page.Click male
    select_insurance_page.Select day  ${day}
    select_insurance_page.Select month  ${month}
    select_insurance_page.Select year  ${year}
    select_insurance_page.Click no sign of cancer
    select_insurance_page.Click search insurance
    common.Wait for page load
    select_insurance_page.Click forth plan
    common.Wait for page load
    select_insurance_page.Scroll to next step button
    select_insurance_page.Click next step
    common.Wait for page load

Select zap and fill information
    [Arguments]    ${day}    ${month}    ${year}
    common.Wait for page load
    common.Wait for page load
    common.Switch to window with url    https://insure.proprakan.com/buy-insurance?utm_source=web_proprakan&utm_medium=cancer_home&utm_campaign=plan1
    select_insurance_page.Click accept cookie
    select_insurance_page.Click accept terms and condition
    common.Scroll down
    select_insurance_page.Click select product
    select_insurance_page.Click zero accident
    select_insurance_page.Click self insurance
    select_insurance_page.Click male
    select_insurance_page.Select day  ${day}
    select_insurance_page.Select month  ${month}
    select_insurance_page.Select year  ${year}
    select_insurance_page.Click search insurance
    common.Wait for page load
    select_insurance_page.Click first plan
    common.Wait for page load
    select_insurance_page.Scroll to next step button
    select_insurance_page.Click next step
    common.Wait for page load