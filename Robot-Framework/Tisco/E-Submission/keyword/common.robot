***Variables***
${URL}    https://forms.tbeta.co/form/e_submission_phu
${Browser}    chrome
***Keywords***
Open website
    Open Browser    ${URL}    ${Browser}
    SeleniumLibrary.Set Window Size    ${1600}    ${1000}

wait for page load
    sleep    3s
    