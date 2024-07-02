***Keywords***
input insured Info
    [Arguments]    ${input_name}    ${input_surname}
    Insured-Info_page.choose prefix dropdown
    Insured-Info_page.input name  ${input_name}
    Insured-Info_page.input surname  ${input_surname}
    Insured-Info_page.choose nationality dropdown
    Insured-Info_page.choose birthday
    Insured-Info_page.Click next button