***Veriable***
${CreditReferenceNo}    //*[@class="form-control ng-pristine ng-valid ng-star-inserted ng-touched"]
${Search}    /html/body/app-root/app-pages/main/section/div/div/div/app-control-view/app-view-v2/div[1]/div[1]/div/div/div/div/div[1]/app-render/div/app-widget[14]/div/div/button
${delete}    /html/body/app-root/app-pages/main/section/div/div/div/app-control-view/app-view-v2/div[1]/div[1]/div/div/div/div/div[1]/app-render/div/app-widget[15]/div/div/button

${ddProduct}    //*[@id="input_0_1__1_0_5"]/div
${ALPHp}    //*[@id="adf5540192dd-3"]
${ddplan}    //*[@id="input_0_1__1_0_9"]/div
${ALP51}    //*[@id="aa22025b3ea8-1"]
${PaymentMethod}    //*[@autocomplete="a3849e36568d"]
${FA}    //*[@id="a3849e36568d-1"]
${PaymentFrequency}    //*[@autocomplete="a2d90452523a"]
${1payment}    //*[@id="a2d90452523a-0"]
${AddProduct}    //*[@class="btn btn-primary dgf-w-100 dgf-margin-small undefined style_bLBaABCK9 ng-star-inserted"]

${ddProduct1}    //*[@autocomplete="adb569c8c5f8"]
${HIP}    //*[@id="adb569c8c5f8-2"]
${ddplan1}    //*[@autocomplete="a2061503db37"]
${Gold}    //*[@id="a2061503db37-1"]
${PaymentMethod1}    //*[@autocomplete="ac3b61ddf7c3"]
${CreditCardTisco}    //*[@id="ac3b61ddf7c3-1"]/span
${PaymentFrequency1}    //*[@autocomplete="ad2030be6903"]
${1payment1}    //*[@id="ad2030be6903-0"]


***Keywords***
Input Credit Reference Number
    SeleniumLibrary.Wait Until Element Is Visible    ${CreditReferenceNo}
    [Arguments]    ${CreditRef}
    SeleniumLibrary.Input text    ${CreditReferenceNo}    ${CreditRef}

Click Search
    SeleniumLibrary.Wait Until Element Is Visible    ${Search}
    SeleniumLibrary.Click Element    ${Search}

Choose dropdown Product
    SeleniumLibrary.Wait Until Element Is Vissible    ${ddProduct}
    SeleniumLibrary.Click Element    ${ddProduct}
    sleep 3s
    SeleniumLibrary.Click Element    ${ALPHp}

Choose dropdown Plan
    SeleniumLibrary.Wait Until Element Is Visible    ${ddplan}
    SeleniumLibrary.Click Element    ${ddplan}
    sleep 3s
    SeleniumLibrary.Click Element    ${ALP51}

Choose dropdown payment method
    SeleniumLibrary.Wait Until Element Is Visible    ${PaymentMethod}
    SeleniumLibrary.Click Element    ${PaymentMethod}
    sleep 3s
    SeleniumLibrary.Click Element    ${FA}

Choose dropdown payment PaymentFrequency
    SeleniumLibrary.Wait Until Element Is Visible    ${PaymentFrequency}
    SeleniumLibrary.Click Element    ${PaymentFrequency}
    sleep 3s
    SeleniumLibrary.Click Element    ${1payment}

Add product 
    SeleniumLibrary.Wait Until Element Is Visible    ${AddProduct}
    SeleniumLibrary.Click Element    ${AddProduct}

Choose dropdown Product1
    SeleniumLibrary.Wait Until Element Is Vissible    ${ddProduct1}
    SeleniumLibrary.Click Element    ${ddProduct1}
    sleep 3s
    SeleniumLibrary.Click Element    ${HIP}

Choose dropdown Plan
    SeleniumLibrary.Wait Until Element Is Visible    ${ddplan1}
    SeleniumLibrary.Click Element    ${ddplan1}
    sleep 3s
    SeleniumLibrary.Click Element    ${Gold}

Choose dropdown payment method
    SeleniumLibrary.Wait Until Element Is Visible    ${PaymentMethod1}
    SeleniumLibrary.Click Element    ${PaymentMethod1}
    sleep 3s
    SeleniumLibrary.Click Element    ${CreditCardTisco}

Choose dropdown payment PaymentFrequency
    SeleniumLibrary.Wait Until Element Is Visible    ${PaymentFrequency1}
    SeleniumLibrary.Click Element    ${PaymentFrequency1}
    sleep 3s
    SeleniumLibrary.Click Element    ${1payment1}

Add product 
    SeleniumLibrary.Wait Until Element Is Visible    ${AddProduct}
    SeleniumLibrary.Click Element    ${AddProduct}







