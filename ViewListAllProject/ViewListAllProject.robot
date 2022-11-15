**Settings**
Library  SeleniumLibrary

**Variables**
${BROWSER}  Google Chrome
${URL}      http://dekdee2.informatics.buu.ac.th:9080/team0/

**Test Cases**
View List all Project Success
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    sleep   1s
    Click Element   //*[@id="main-wrapper"]/div/div/div[2]/div[1]/div[1]/div/div/span[2]/a/button
    sleep   3s 
    Close Browser
View List all Project Fail with click outside card
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    sleep   1s
    Click Element   //*[@id="main-wrapper"]/div/div
    sleep   3s 
    Close Browser
View List all Project Fail with click wrong card
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    sleep   1s
    Click Element   //*[@id="main-wrapper"]/div/div/div[2]/div[1]/div[3]/div/div/span[2]/a/button
    sleep   3s 
    Close Browser