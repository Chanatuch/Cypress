*** Settings ***
Resource    ../../resource/import.robot
***Keywords***
Go to health insurance product
    navigator_bar.Close pop up
    common.Wait for page load
    Click accept cookie
    navigator_bar.Hover insurance product
    common.Wait for page load
    navigator_bar.Hover health and deceases insurance
    navigator_bar.Click health and deceases insurance
    navigator_bar.Hover contact us