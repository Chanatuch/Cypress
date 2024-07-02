*** Variables ***
${search_button}     xpath=//button[@class="tsc-btn tsc-btn__info"]
${clear_data_button}    xpath=//button[@class="tsc-btn tsc-btn__danger__outline mx-2"]
${text_nodata_search_button}    xpath=//div/p[contains(text(),'กรุณาระบุเงื่อนไข ก่อนค้นหาข้อมูล')]
${ok_button}    xpath=//span[@class="mdc-button__label"]
@{text_to_check_ISP}=    
        เลขที่สัญญา    Appno.    ชื่อ-นามสกุลลูกค้า    เลขทะเบียนรถ    หมายเลขตัวถัง
        Lead Date    ประเภทพอร์ต    App Code / Account    App No.    ชื่อ-นามสกุลลูกค้า    
        วันหมดอายุ    ผลิตภัณฑ์    เลขทะเบียนรถ    TSR    Team    ค้นหาข้อมูลลูกค้า
# xpath input
${textbox_เลขที่สัญญา}    xpath=//input[@id="txtAccNum"]
${textbox_Appno.}       xpath=//input[@id="txtAppNo"]
${textbox_ชื่อ-นามสกุลลูกค้า}    xpath=//input[@id="txtClientName"]
${textbox_เลขทะเบียนรถ}     xpath=//input[@id="txtLicense"]
${textbox_หมายเลขตัวถัง}    xpath=//input[@id="txtChassis"]
*** Keywords ***
Validate keyword on Page
    FOR    ${text_ISP}    IN    @{text_to_check_ISP}
    ${text_exits_ISP}=    Run Keyword And Return Status    Should Contain    ${BODY TEXT}    ${text_ISP}
    Run Keyword IF    not ${text_exits_ISP}   Fail    Expected text '${text_ISP}' not found on the Page
    END

Varidate search button before input data
    SeleniumLibrary.Click Element    ${search_button} 
    SeleniumLibrary.Wait Until Element Is Visible    ${text_nodata_search_button}
    SeleniumLibrary.Click Element    ${ok_button}

Fill in เลขที่สัญญา test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_เลขที่สัญญา}
    SeleniumLibrary.Input Text    ${textbox_เลขที่สัญญา}    aaASDFฟหกด!@#$11111

#Fill in App No. test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_Appno.}
    SeleniumLibrary.Input Text    ${textbox_Appno.}    aaASDFฟหกด!@#$11111

#Fill in ชื่อ-นามสกุลลูกค้า test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_ชื่อ-นามสกุลลูกค้า}
    SeleniumLibrary.Input Text    ${textbox_ชื่อ-นามสกุลลูกค้า}    aaASDFฟหกด!@#$11111

#Fill in ชื่อ-นามสกุลลูกค้า test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_ชื่อ-นามสกุลลูกค้า}
    SeleniumLibrary.Input Text    ${textbox_ชื่อ-นามสกุลลูกค้า}    aaASDFฟหกด!@#$11111

#Fill in เลขทะเบียนรถ test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_เลขทะเบียนรถ}
    SeleniumLibrary.Input Text    ${textbox_เลขทะเบียนรถ}    aaASDFฟหกด!@#$11111

#Fill in หมายเลขตัวถัง test
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_หมายเลขตัวถัง}
    SeleniumLibrary.Input Text    ${textbox_หมายเลขตัวถัง}    aaASDFฟหกด!@#$11111

Click Clear Data button
    SeleniumLibrary.Wait Until Element Is Visible    ${clear_data_button}
    SeleniumLibrary.Click Element    ${clear_data_button}

Fill in เลขที่สัญญา 
    SeleniumLibrary.Wait Until Element Is Visible    ${textbox_เลขที่สัญญา}
    SeleniumLibrary.Input Text    ${textbox_เลขที่สัญญา}    943223 
    SeleniumLibrary.Wait Until Element Is Visible    ${search_button}
    SeleniumLibrary.Input Text    ${textbox_เลขที่สัญญา}    943223
    SeleniumLibrary.Click Element    ${search_button}
    sleep    10s





