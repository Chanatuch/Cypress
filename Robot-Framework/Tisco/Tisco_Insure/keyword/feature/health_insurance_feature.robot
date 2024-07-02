*** Settings ***
Resource    ../../resource/import.robot
***Keywords***
Buy insurance product
    health_insurance_page.Current page is health insurance page
    common.Scroll down
    common.Scroll down
    health_insurance_page.Click cancer insurance
    health_insurance_page.Click buy cancer insurance