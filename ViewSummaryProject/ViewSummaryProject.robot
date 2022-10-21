**Settings**
Library  SeleniumLibrary

**Variables**
${BROWSER}  Google Chrome
${URL}      http://dekdee2.informatics.buu.ac.th:9080/team0/
${URLWRONG}    http://dekdee2.informatics.buu.ac.th:9080

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