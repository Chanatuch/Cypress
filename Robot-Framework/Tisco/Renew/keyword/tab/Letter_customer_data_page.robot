*** Variables ***
@{texts_to_check}=      
        เลขสัญญา    Transfer To    ชื่อผู้เอาประกัน    บัตรประชาชน    วัน/เดือน/ปีเกิด    เบอร์ติดต่อ 1,เบอร์ติดต่อ 2
        ที่อยู่กรมธรรม์    ที่อยู่ส่ง    เอกสาร    ที่อยู่ตามบัตรประชาชน    อีเมล    ข้อมูลรถยนต์    ยี่ห้อรถ/รุ่นรถ
        ทะเบียนรถยนต์    ปีที่จดทะเบียน    หมายเลขเครื่องยนต์    หมายเลขตัวถัง    ตัวแทนจำหน่าย    รหัสรถยนต์
        ลักษณะการใช้งาน    สีรถ    ลักษณะการใช้งานเพิ่มเติม    ข้อมูลไฟแนนซ์    อุปกรณ์ตกแต่ง
        บันทึกโน้ตปิดการขายปีก่อน    ข้อมูลสรุปเคลมประกันรถยนต์    จำนวนการเคลม    เรียกร้องค่าสินไหมถึงวันที่
        ประเมินราคารวมทั้งหมด    ความเสียหายโดยสิ้นเชิง    Line Promotion    Term & Condition    Marketing Consent
        ผลิตภัณฑ์    บริษัทประกัน    วันหมดอายุ    ทุนประกัน    ค่าเบี้ยรวม    จำนวนส่วนลด    ยอดเรียกเก็บ
        หัก ณ ที่จ่าย 1%    ยอดที่ลูกค้าชำระ    ประเภทชำระเงิน    ประเภทชำระเงิน
@{text_claimhistory_check}=
        เลขที่สัญญา HP 943223 (From HP 1500374784 ) / ลูกค้า คุณ 1500374784
        ประวัติรายการเคลม    เลขที่เคลม    ประเภท    วันที่แจ้งเคลม    วันที่เกิดเหตุ    ผู้แจ้งเคลม
        สาเหตุการเคลม    ประเมินราคา    ยอดปิดเคลม    ข้อมูลสรุปเคลมประกันรถยนต์
        จำนวนการเคลม    เรียกร้องค่าสินไหมถึงวันที่    ประเมินราคารวมทั้งหมด    ความเสียหายโดยสิ้นเชิง
        ปิดหน้าต่าง
${1}        xpath=//*[@id="p-tabpanel-0"]/div/div[1]/div/div[1]/app-telesale-support-information/div/div[2]/div[1]/div[2]
${claim_hisry_button}    xpath=//u[contains(text(),'ดูประวัติการเคลม')]
${close_window_button}    xpath=//span[contains(text(),'ปิดหน้าต่าง')]    
*** Keywords ***
check keyword letter page
    FOR    ${text}    IN    @{texts_to_check}
        ${text_exits}=    Run Keyword And Return Status    Should Contain    ${BODY TEXT}    ${text} 
        Run Keyword IF    not ${text_exits}   Fail    Expected text '${text}' not found on the Page
    END
    
check keyword claim history page
    SeleniumLibrary.Click Element    ${claim_hisry_button}
    FOR    ${text}    IN    @{text_claimhistory_check}
        ${text_exits}=    Run Keyword And Return Status    Should Contain    ${BODY TEXT}    ${text}
        Run Keyword IF    not ${text_exits}    Fail    Expected text '${text}' not found on the Page
    END
    SeleniumLibrary.Click Element    ${close_window_button}
