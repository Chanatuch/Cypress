*** Settings ***
Resource         ../../../../resource/import.robot
Test Setup       common.Access to Check Premium application (Okta Alpha/Beta)    ${value.email}      ${value.password}      ${value.okta_url}       ${xpath.email_inputField}     ${xpath.password_inputField}      ${xpath.signIn_button}      ${value.checkPremium}
Test Teardown    Close All Browsers

*** Variables ***
# # value input of "okta Beta" login
${value.okta_url}   https://beta-tisco.okta.com/
${value.email}      zatiwit@tisco.co.th
${value.password}   Dream171298*
# # xpath of "okta Beta" login
${xpath.email_inputField}      xpath=//input[@id="okta-signin-username"]
${xpath.password_inputField}   xpath=//input[@id="okta-signin-password"]
${xpath.signIn_button}         xpath=//input[@id="okta-signin-submit"]
${value.checkPremium}          1269-Insurance Sale Portal-Beta_State2
 

# # value input of request premium
${input_draft.ref_no}                 HP-144002
${input_draft.customer_first_name}    BOO
${input_draft.customer_last_name}     BII
${input_draft.license_no}             นย 30
${input_draft.uw_no}                  UW-123101600010
@{input_draft.insure_company}         ประกันภัยไทยวิวัฒน์   แอลเอ็มจี ประกันภัย   ทิพยประกันภัย   

*** Test Cases ***
# # ||----- Searching draft flow -----||
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย Ref No. 
    request_premium_draft_feature.Search request premium draft by Ref No                ${input_draft.ref_no} 
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย ชื่อลูกค้า 
    request_premium_draft_feature.Search request premium draft by Customer first name   ${input_draft.customer_first_name} 
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย นามสกุลลูกค้า
    request_premium_draft_feature.Search request premium draft by Customer last name    ${input_draft.customer_last_name}
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย เลขทะเบียนรถ
    request_premium_draft_feature.Search request premium draft by License no            ${input_draft.license_no}
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย UW No.
    request_premium_draft_feature.Search request premium draft by UW No                 ${input_draft.uw_no}
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย บริษัทประกันภัย
    request_premium_draft_feature.Search request premium draft by Insure company        @{input_draft.insure_company}
RequestPremiumDraft_Searchingflow - ค้นหารายการสอบถามเบี้ย (แบบร่าง) โดย ทุกๆ Field
    request_premium_draft_feature.Search request premium draft by All Field             ${input_draft.ref_no}   ${input_draft.customer_first_name}   ${input_draft.customer_last_name}   ${input_draft.license_no}   ${input_draft.uw_no}   @{input_draft.insure_company}