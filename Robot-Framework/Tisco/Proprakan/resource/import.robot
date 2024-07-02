*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    String
Library    Collections
Library    JSONLibrary
Library    RequestsLibrary
Library    DateTime

Variables    setting.yaml

Resource    ../keyword/common.robot
Resource    ../keyword/page/navigator_bar.robot
Resource    ../keyword/page/cancer_insurance_page.robot
Resource    ../keyword/page/select_insurance_page.robot
Resource    ../keyword/page/fill_information_page.robot
Resource    ../keyword/page/check_information_page.robot
Resource    ../keyword/page/payment_page.robot
Resource    ../keyword/page/payment_success_page.robot

Resource    ../keyword/feature/select_insurance_feature.robot
Resource    ../keyword/feature/fill_information_feature.robot
Resource    ../keyword/feature/cancer_insurance_feature.robot
Resource    ../keyword/feature/navigator_bar_feature.robot
Resource    ../keyword/feature/check_information_feature.robot
Resource    ../keyword/feature/payment_feature.robot
Resource    ../keyword/feature/payment_success_feature.robot

Library    ../keyword/page/dataset/date_time.py
Resource    ../keyword/page/dataset/request.robot
