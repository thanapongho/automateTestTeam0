**Settings**
Library  SeleniumLibrary
Library  ExcelRobot

**Variables**
${URL}  http://dekdee2.informatics.buu.ac.th:9080/team0/
${BROWSER}  Google Chrome

**Keywords**
Open file Excel
    Open Excel    ${CURDIR}\\test_data.xlsx
Open Project Monitoring System
    open Browser  ${URL}  ${BROWSER}  
    Maximize Browser Window
Click Menu Login
    sleep   2s
    Click Element   //*[@class="nav-link waves-effect waves-dark profile-pic fs-5"]
Click to Login
    sleep   2s
    Click Element   //*[@id="loginBtn"]
Click Sidebar Resiponse Project
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a
Click Export Excel
    sleep   2s
    Click Element   //*[@id="table_wrapper"]/div[1]/button[1]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Export All are Project Success
    Open file Excel
    ${Username}=    Read Cell Data          Project Manager  0   1
    ${Password}=    Read Cell Data          Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click Export Excel
    Close Browser Page