***Variables***
${prefix}    //*[@id="input_0_0_8"]/div
${Mr}    //*[@id="a09a8e44fd4d-2"]
${name}    //*[@class="form-control ng-pristine ng-valid ng-star-inserted ng-touched"]
${surname}    //*[@class="form-control ng-untouched ng-pristine ng-valid ng-star-inserted"]
${nationality}    //*[@id="input_0_4_1"]
${thai}    //*[@id="a04597c0f560-37"]
${birthday}    //*[@class="btnpicker btnpickerenabled"]
${2023}    //*[@class="headerlabelbtn yearlabel"]
${up}    //*[@class="yearchangebtn mydpicon icon-mydpup yearchangebtnenabled"]
${2000}    /html/body/app-root/app-pages/main/section/div/div/div/app-control-view/app-view-v2/div[1]/div[1]/div/div[1]/div/div/div[6]/app-render/div/app-widget[2]/div/div/my-date-picker/div/div[2]/table[2]/tbody/tr[2]/td[3]/div
${13}    /html/body/app-root/app-pages/main/section/div/div/div/app-control-view/app-view-v2/div[1]/div[1]/div/div[1]/div/div/div[6]/app-render/div/app-widget[2]/div/div/my-date-picker/div/div[2]/table[2]/tbody/tr[3]/td[4]/div
${next}    //*[@class="btn btn-primary dgf-w-100 dgf-margin-small ng-star-inserted"]

***Keywords***
choose prefix dropdown
    SeleniumLibrary.Wait Until Element Is Vasible     ${prefix}
    SeleniumLibrary.Click Element    ${prefix}
    SeleniumLibrary.Click Element    ${Mr}

input name
    SeleniumLibrary.Wait Until Element Is Vasible    ${name}
    [Arguments]    &{input_name}
    SeleniumLibrary.Input text    ${name}    ${input_name}

input surname
    SeleniumLibrary.Wait Until Element Is Vasible    ${surname}
    [Arguments]    &{input_surname}
    SeleniumLibrary.Input text    ${surname}    ${input_surname}

choose nationality dropdown
    SeleniumLibrary.Wait Until Element Is Vasible     ${nationality}
    SeleniumLibrary.Click Element    ${nationality}
    SeleniumLibrary.Click Element    ${thai}

choose birthday
    SeleniumLibrary.Wait Until Element Is Vasible     ${birthday}
    SeleniumLibrary.Click Element    ${birthday}
    SeleniumLibrary.Click Element    ${2023}
    SeleniumLibrary.Click Element    ${up}
    SeleniumLibrary.Click Element    ${2000}
    SeleniumLibrary.Click Element    ${13}

Click next button
    SeleniumLibrary.Wait Until Element Is Vasible     ${next}
    SeleniumLibrary.Click Element    ${next}