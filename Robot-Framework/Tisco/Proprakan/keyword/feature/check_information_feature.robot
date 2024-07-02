*** Settings ***
Resource    ../../resource/import.robot
***Keywords***
Verify date zcp
    common.Scroll down
    ${date_text}    check_information_page.Get date
    ${date_split}    Split String    ${date_text}

    ${current_date}=   Get Current Date    result_format=datetime
    ${day_int}    Convert To Integer    ${date_split}[0]
    Should Be Equal    ${day_int}    ${current_date.day}
    ${month_int}    Convert To Integer      ${current_date.month}
    IF    ${month_int}==${1}
         Should Be Equal    ${date_split}[1]    มกราคม
    END
    IF    ${month_int}==${2}
         Should Be Equal    ${date_split}[1]    กุมภาพันธ์
    END
    IF    ${month_int}==${3}
         Should Be Equal    ${date_split}[1]    มีนาคม
    END
    IF    ${month_int}==${4}
         Should Be Equal    ${date_split}[1]    เมษายน
    END
    IF    ${month_int}==${5}
         Should Be Equal    ${date_split}[1]    พฤษภาคม
    END
    IF    ${month_int}==${6}
         Should Be Equal    ${date_split}[1]    มิถุนายน
    END
    IF    ${month_int}==${7}
         Should Be Equal    ${date_split}[1]    กรกฎาคม
    END
    IF    ${month_int}==${8}
         Should Be Equal    ${date_split}[1]    สิงหาคม
    END
    IF    ${month_int}==${9}
         Should Be Equal    ${date_split}[1]    กันยายน
    END
    IF    ${month_int}==${10}
         Should Be Equal    ${date_split}[1]    ตุลาคม
    END
    IF    ${month_int}==${11}
         Should Be Equal    ${date_split}[1]    พฤศจิกายน
    END
    IF    ${month_int}==${12}
         Should Be Equal    ${date_split}[1]    ธันวาคม
    END
    ${year_int}    Convert To Integer    ${current_date.year}
    ${year_thai}=    Evaluate    ${year_int}+543
    ${year_web_int}    Convert To Integer    ${date_split}[2]
    Should Be Equal    ${year_web_int}    ${year_thai}

Verify date zap
    common.Scroll down
    ${date_text}    check_information_page.Get date
    ${date_split}    Split String    ${date_text}

    ${current_date}=   Get Current Date    result_format=datetime
    ${current_date}=    Add Time To Date    ${current_date}    1 days
    
    ${current_date_split}    Split String    ${current_date}
    ${current_date_split}=    Set Variable    ${current_date_split}[0]
    ${start_protection_date}    Split String    ${current_date_split}    -
    ${start_protection_day}     Set Variable    ${start_protection_date}[2]
    ${start_protection_month}     Set Variable    ${start_protection_date}[1]
    ${start_protection_year}     Set Variable    ${start_protection_date}[0]

    ${start_protection_day}    Convert To Integer    ${start_protection_day} 
    ${day_int}    Convert To Integer    ${date_split}[0]
    Should Be Equal    ${day_int}    ${start_protection_day}
    ${month_int}    Convert To Integer      ${start_protection_month}
    IF    ${month_int}==${1}
         Should Be Equal    ${date_split}[1]    มกราคม
    END
    IF    ${month_int}==${2}
         Should Be Equal    ${date_split}[1]    กุมภาพันธ์
    END
    IF    ${month_int}==${3}
         Should Be Equal    ${date_split}[1]    มีนาคม
    END
    IF    ${month_int}==${4}
         Should Be Equal    ${date_split}[1]    เมษายน
    END
    IF    ${month_int}==${5}
         Should Be Equal    ${date_split}[1]    พฤษภาคม
    END
    IF    ${month_int}==${6}
         Should Be Equal    ${date_split}[1]    มิถุนายน
    END
    IF    ${month_int}==${7}
         Should Be Equal    ${date_split}[1]    กรกฎาคม
    END
    IF    ${month_int}==${8}
         Should Be Equal    ${date_split}[1]    สิงหาคม
    END
    IF    ${month_int}==${9}
         Should Be Equal    ${date_split}[1]    กันยายน
    END
    IF    ${month_int}==${10}
         Should Be Equal    ${date_split}[1]    ตุลาคม
    END
    IF    ${month_int}==${11}
         Should Be Equal    ${date_split}[1]    พฤศจิกายน
    END
    IF    ${month_int}==${12}
         Should Be Equal    ${date_split}[1]    ธันวาคม
    END
    ${year_int}    Convert To Integer    ${start_protection_year}
    ${year_thai}=    Evaluate    ${year_int}+543
    ${year_web_int}    Convert To Integer    ${date_split}[2]
    Should Be Equal    ${year_web_int}    ${year_thai}

Go to OTP step
    check_information_page.Scroll to last
    check_information_page.Click zcp go to next step
