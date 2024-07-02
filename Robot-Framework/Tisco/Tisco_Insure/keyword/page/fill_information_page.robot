*** Settings ***
Resource    ../../resource/import.robot

*** Variables ***
${fill_information_page.name_title}    xpath=//option[contains(text(),'เลือกคำนำหน้า')]/..
${fill_information_page.name}    xpath=//input[@placeholder="ชื่อของคุณ"]
${fill_information_page.surname}    xpath=//input[@placeholder="นามสกุลของคุณ"]
${fill_information_page.height}    xpath=//input[@id="user-height"]
${fill_information_page.weight}    xpath=//input[@id="user-weight"]
${fill_information_page.id_card}    xpath=//input[@name="idCard"]
${fill_information_page.email}    xpath=//input[@id="mail-leads"]
${fill_information_page.single}    xpath=//label[contains(text(),'โสด')]
${fill_information_page.job}    xpath=//h4[text()="อาชีพของผู้เอาประกัน"]/..//select[@id="occupation"]
${fill_information_page.job_description}    xpath=//h4[text()="อาชีพของผู้เอาประกัน"]/..//select[@id="job-desc"]
${fill_information_page.job_description_choice}    xpath=//h4[text()="อาชีพของผู้เอาประกัน"]/..//select[@id="job-desc"]//option[contains(text(),"@text@")]
${fill_information_page.chief_mechanic_job}    xpath=//option[contains(text(),"หัวหน้าช่าง")]
${fill_information_page.phone_number}    xpath=//input[@placeholder="เบอร์โทรศัพท์ของคุณ"]
${fill_information_page.no_zcp_question_1}    xpath=//p[contains(text(),'ปัจจุบันท่านมีการประกันภัย')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zcp_question_2}    xpath=//p[contains(text(),'บิดา มารดา พี่หรือน้องของผู้ขอเอาประกัน')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zcp_question_3}    xpath=//p[contains(text(),'ท่านดื่มเครื่องดื่มที่มีแอลกอฮอล์หรือไม่')]/..//label[contains(text(),'ไม่ดื่ม')]
${fill_information_page.no_zcp_question_4}    xpath=//p[contains(text(),'ท่านสูบบุหรี่หรือไม่')]/..//label[contains(text(),'ไม่สูบ')]
${fill_information_page.no_zcp_question_5}    xpath=//p[contains(text(),'ท่านเคยเป็น หรือมีอาการรับรู้ได้ด้วยตนเอง')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zcp_question_6}    xpath=//p[contains(text(),'ระยะเวลา 5 ปีที่ผ่านมา ท่านเคยเจ็บป่วย หรือได้รับบาดเจ็บร้ายแรง')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zap_question_1}    xpath=//p[contains(text(),'ได้ขอเอาประกันภัยอุบัติเหตุส่วนบุคคล')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zap_question_2}    xpath=//p[contains(text(),'ประกันภัยที่มีความคุ้มครองการชดเชยรายได้ระหว่างพัก')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.no_zap_question_3}    xpath=//p[contains(text(),'เคยเป็นหรือมีอาการรับรู้ได้ด้วยตนเอง หรือเคยได้รับการตรวจรักษา')]/..//label[contains(text(),'ไม่มี')]
${fill_information_page.go_to_next_step}    xpath=//div[contains(@class,'step-two')]//button[contains(text(),'ขั้นตอนต่อไป')]
${fill_information_page.proceed_to_next_step}    xpath=//h3[contains(text(),'รายละเอียดการขอเอาประกันภัย')]/..//button[contains(text(),'ขั้นตอนต่อไป')]
${fill_information_page.home_address}    xpath=//input[contains(@placeholder,'บ้านเลขที่')]
${fill_information_page.district}    xpath=//input[@placeholder="ตำบล / แขวง"]
${fill_information_page.sub_district}    xpath=//input[@placeholder="อำเภอ / เขต"]
${fill_information_page.province}    xpath=//input[@placeholder="จังหวัด"]
${fill_information_page.postal_code}    xpath=//input[@placeholder="รหัสไปรษณีย์"]
${fill_information_page.sibling_in_law}    xpath=//label[contains(text(),'ทายาทตามกฎหมาย')]
${fill_information_page.choose_address}    xpath=//a[contains(text(),'@sub_district@')]
${fill_information_page.no_take_document}    xpath=//div[contains(text(),'บริษัทผู้รับประกันภัยจะทำการจัดส่งข้อมูล')]/..//label[contains(text(),'ไม่ประสงค์รับเอกสาร')]
${fill_information_page.tax_refund}            xpath=//label[contains(text(),'ไม่มีความประสงค์')]

*** Keywords ***
Scroll first
    Execute JavaScript    window.scrollTo(0,800)

Scroll second
    Execute JavaScript    window.scrollTo(0,1500)

Scroll third
    Execute JavaScript    window.scrollTo(0,2200)

Scroll forth
    Execute JavaScript    window.scrollTo(0,2900)

Scroll fifth
    Execute JavaScript    window.scrollTo(0,4200)

Scroll sixth
    Execute JavaScript    window.scrollTo(0,5000)

Select name title
    [Arguments]    ${title}
    SeleniumLibrary.Select From List By Label    ${fill_information_page.name_title}    ${title}

Select job
    [Documentation]    inspect element in website to get code
    [Arguments]    ${job}
    SeleniumLibrary.Select From List By Label    ${fill_information_page.job}    ${job}

Chief mechanic job should be exist
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.chief_mechanic_job}

Chief mechanic job should not be exist
    SeleniumLibrary.Element Should Not Be Visible    ${fill_information_page.chief_mechanic_job}

Select job description 
    [Documentation]    inspect element in website to get code
    [Arguments]    ${description}
    SeleniumLibrary.Select From List By Label    ${fill_information_page.job_description}    ${description}

Job description should be exist
    [Arguments]    ${desc}
    ${element}    Replace String    ${fill_information_page.job_description_choice}    @text@    ${desc}
    SeleniumLibrary.Wait Until Element Is Visible    ${element}

Select district
    [Arguments]    ${district}
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.district}
    SeleniumLibrary.Click Element    ${fill_information_page.district}
    SeleniumLibrary.Press Keys    None    ${district}

Select sub district
    [Arguments]    ${sub_district}
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.sub_district}
    SeleniumLibrary.Click Element    ${fill_information_page.sub_district}
    SeleniumLibrary.Press Keys    None    ${sub_district}

Select province
    [Arguments]    ${province}
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.province}
    SeleniumLibrary.Click Element    ${fill_information_page.province}
    SeleniumLibrary.Press Keys    None    ${province}

Select postal code
    [Arguments]    ${postal_code}
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.postal_code}
    SeleniumLibrary.Click Element    ${fill_information_page.postal_code}
    SeleniumLibrary.Press Keys    None    ${postal_code}

Input name
    [Arguments]    ${name}
    SeleniumLibrary.Input text    ${fill_information_page.name}    ${name}

Input surname
    [Arguments]    ${surname}
    SeleniumLibrary.Input text    ${fill_information_page.surname}    ${surname}

Input height
    [Arguments]    ${height}
    SeleniumLibrary.Input text    ${fill_information_page.height}    ${height}

Input weight
    [Arguments]    ${weight}
    SeleniumLibrary.Input text    ${fill_information_page.weight}    ${weight}

Input id card
    [Arguments]    ${id}
    SeleniumLibrary.Input text    ${fill_information_page.id_card}    ${id}

Input phone number
    [Arguments]    ${phone}
    SeleniumLibrary.Input text    ${fill_information_page.phone_number}    ${phone}

Input email
    [Arguments]    ${email}
    SeleniumLibrary.Input text    ${fill_information_page.email}    ${email}

Input home address
    [Arguments]    ${address}
    SeleniumLibrary.Input text    ${fill_information_page.home_address}    ${address}

Click single
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.single}
    SeleniumLibrary.Click Element    ${fill_information_page.single}

Click no zcp question 1
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_1}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_1}

Click no zcp question 2
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_2}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_2}

Click no zcp question 3
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_3}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_3}

Click no zcp question 4
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_4}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_4}

Click no zcp question 5
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_5}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_5}

Click no zcp question 6
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zcp_question_6}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zcp_question_6}

Click no zap question 1
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zap_question_1}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zap_question_1}

Click no zap question 2
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zap_question_2}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zap_question_2}

Click no zap question 3
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_zap_question_3}
    SeleniumLibrary.Click Element    ${fill_information_page.no_zap_question_3}

Click go to next step  
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.go_to_next_step}
    SeleniumLibrary.Click Element    ${fill_information_page.go_to_next_step}

Click sibling in law
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.sibling_in_law}
    SeleniumLibrary.Click Element    ${fill_information_page.sibling_in_law}

Choose address
    [Arguments]    ${sub_district}
    ${element}    String.Replace String    ${fill_information_page.choose_address}    @sub_district@     ${sub_district}
    SeleniumLibrary.Wait Until Element Is Visible    ${element}
    SeleniumLibrary.Click Element    ${element}

Click no take document
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.no_take_document}
    SeleniumLibrary.Click Element    ${fill_information_page.no_take_document}

Click no tax refund
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.tax_refund}   
    SeleniumLibrary.Click Element    ${fill_information_page.tax_refund}

Click proceed to next step  
    SeleniumLibrary.Wait Until Element Is Visible    ${fill_information_page.proceed_to_next_step}
    SeleniumLibrary.Click Element    ${fill_information_page.proceed_to_next_step}