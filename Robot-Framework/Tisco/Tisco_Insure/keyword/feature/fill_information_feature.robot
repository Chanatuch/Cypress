*** Settings ***
Resource    ../../resource/import.robot
***Keywords***
Fill zcp information
    [Arguments]    ${name_title}    ${name}    ${surname}    ${height}    ${weight}    ${id}    ${phone}    ${email}    ${job}     ${job_description}    ${home_address}    ${district}    ${sub_district}
    fill_information_page.Select name title     ${name_title}
    fill_information_page.Scroll first
    fill_information_page.Input name  ${name}
    fill_information_page.Input surname  ${surname}
    fill_information_page.Input height  ${height}
    fill_information_page.Input weight  ${weight}
    fill_information_page.Input id card  ${id}
    fill_information_page.Click single
    fill_information_page.Scroll second
    fill_information_page.Input phone number  ${phone}
    fill_information_page.Input email  ${email}
    fill_information_page.Chief mechanic job should be exist
    fill_information_page.Select job     พนักงาน
    fill_information_page.Job description should be exist    ประจำสำนักงาน
    fill_information_page.Job description should be exist    ออกพื้นที่ประจำ
    fill_information_page.Job description should be exist    ทำงานนอกสำนักงานเป็นครั้งคราว
    fill_information_page.Select job     ${job}
    fill_information_page.Select job description   ${job_description}
    fill_information_page.Scroll third
    common.Wait for page load
    fill_information_page.Click no zcp question 1
    fill_information_page.Click no zcp question 2
    fill_information_page.Click no zcp question 3
    fill_information_page.Scroll forth
    common.Wait for page load
    fill_information_page.Click no zcp question 4
    fill_information_page.Click no zcp question 5
    fill_information_page.Click no zcp question 6
    fill_information_page.Click go to next step
    common.Wait for page load
    fill_information_page.Input home address  ${home_address}
    fill_information_page.Select district   ${district}
    fill_information_page.Choose address    ${sub_district}
    fill_information_page.Click sibling in law
    fill_information_page.Scroll fifth
    fill_information_page.Click no take document
    fill_information_page.Click no tax refund
    fill_information_page.Scroll sixth
    fill_information_page.Click proceed to next step
    common.Wait for page load
    common.Wait for page load

Fill zap information
    [Arguments]    ${name_title}    ${name}    ${surname}    ${height}    ${weight}    ${id}    ${phone}    ${email}    ${job}     ${job_description}    ${home_address}    ${district}    ${sub_district}
    fill_information_page.Select name title     ${name_title}
    fill_information_page.Scroll first
    fill_information_page.Input name  ${name}
    fill_information_page.Input surname  ${surname}
    fill_information_page.Input height  ${height}
    fill_information_page.Input weight  ${weight}
    fill_information_page.Input id card  ${id}
    fill_information_page.Click single
    fill_information_page.Scroll second
    fill_information_page.Input phone number  ${phone}
    fill_information_page.Input email  ${email}
    fill_information_page.Chief mechanic job should not be exist
    fill_information_page.Select job     พนักงาน
    fill_information_page.Job description should be exist    ประจำสำนักงาน
    fill_information_page.Job description should be exist    ออกพื้นที่ประจำ
    fill_information_page.Job description should be exist    ทำงานนอกสำนักงานเป็นครั้งคราว
    fill_information_page.Select job     ${job}
    fill_information_page.Select job description   ${job_description}
    fill_information_page.Scroll third
    common.Wait for page load
    fill_information_page.Click no zap question 1
    fill_information_page.Click no zap question 2
    common.Scroll down
    common.Wait for page load
    fill_information_page.Click no zap question 3
    fill_information_page.Click go to next step
    common.Wait for page load
    fill_information_page.Input home address  ${home_address}
    fill_information_page.Select district   ${district}
    fill_information_page.Choose address    ${sub_district}
    common.Scroll down
    common.Wait for page load
    fill_information_page.Click sibling in law
    fill_information_page.Click no take document
    fill_information_page.Click no tax refund
    fill_information_page.Scroll sixth
    fill_information_page.Click proceed to next step
    common.Wait for page load
    common.Wait for page load
