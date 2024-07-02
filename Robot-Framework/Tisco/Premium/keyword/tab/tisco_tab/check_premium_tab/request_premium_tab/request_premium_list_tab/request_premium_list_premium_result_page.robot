*** Variables ***
# element xpath variable
${request_premium_list_details_page.premium_result_header_value}        xpath=/html/body/app-root/app-template/div[3]/app-request-premium-view-premium/div/div/app-premium-info-card/div/div/div/div[1]/div/p

# # text variable
# element description
${text_value.status_pending}    รอดำเนินการ

*** Keywords ***
Verify "Premium result" header
    ${value_request_premium_list.uw_no_value}  Evaluate  "${value_request_premium_list.uw_no_value}"[0:15]
    @{premium_result_header_value}   Create List    ${value_request_premium_list.uw_no_value}   ${value_request_premium_list.customer_value}
    ${get_premium_result_header_value}=   Get Text  ${request_premium_list_details_page.premium_result_header_value}
    FOR    ${header_list_value}    IN    @{premium_result_header_value}
        Should Contain Any    ${get_premium_result_header_value}     ${header_list_value} 
    END

Verify "Premium coverage" details
    ${value.count}=    Set Variable    0
    @{premium_coverage_detail_text_column}    Create List    แคมเปญ   ประเภทประกันภัย   การจัดซ่อม   ทุนประกันภัย   ค่าเบี้ยประกันภัยรถยนต์ภาคสมัครใจ (เบี้ยรวมภาษี อากร)   รายละเอียดความคุ้มครองประกันภัยรถยนต์ภาคสมัครใจ   ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อคน   ความรับผิดต่อบุคคลภายนอก ชีวิต ร่างกาย อนามัย ต่อครั้ง   ความรับผิดต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง   ความเสียหายส่วนแรกต่อทรัพย์สินบุคคลภายนอก ต่อครั้ง   ทุนประกันภัย ความเสียหายต่อรถยนต์   ทุนประกันภัย รถยนต์สูญหาย ไฟไหม้   ความเสียหายต่อรถยนต์ส่วนแรก   อุบัติเหตุส่วนบุคคล เสียชีวิต สูญเสียอวัยวะ ทุพพลภาพถาวร (ผู้ขับขี่ รวมผู้โดยสาร)   ค่ารักษาพยาบาล (ผู้ขับขี่ รวมผู้โดยสาร)   การประกันตัวผู้ขับขี่   ตรวจสอบรถยนต์ก่อนรับประกัน   ความคุ้มครองพิเศษเพิ่มเติม   เงื่อนไขการรับประกันภัย   ค่า พ.ร.บ.   รวมยอดค่าเบี้ยประกันภัย และ พ.ร.บ.
    FOR    ${text_details}    IN    @{premium_coverage_detail_text_column}
        ${Result_text_coverage_detail}=      Run Keyword And Return Status    SeleniumLibrary.Wait Until Page Contains    ${text_details}
        IF  '${Result_text_coverage_detail}' == 'True'
            Log  พบข้อมูลรายละเอียดความคุ้มครอง = ${premium_coverage_detail_text_column}[${value.count}]
        ELSE
            Fail  ไม่พบข้อมูลตรงกับ = ${premium_coverage_detail_text_column}[${value.count}]
        END        
        ${value.count} =    Evaluate    ${value.count} + 1
    END
