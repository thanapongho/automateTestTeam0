**Settings**
Library  SeleniumLibrary

**Variables**
${BROWSER}  Google Chrome
${URL}      http://localhost/team0/
${URLWRONG}     http://localhost/team

**Test Cases**
View Sumarry Project Success
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    sleep   1s 
    Close Browser
View Sumarry Project Fail
    Open Browser    ${URLWRONG}  ${BROWSER}
    Maximize Browser Window
    sleep   1s
    Close Browser