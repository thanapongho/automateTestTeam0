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
Click Project Responsibility
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li/a
Click Manage Task Project
    sleep   2s
    Click Element   //*[@class="btn btn-tertiary btn-sm"]
Click calendar
    sleep   2s
    Click Element   //*[@id="calendarData-tab"]
Close Browser Page
    sleep   5s
    Close Browser 

**Test Cases**
Add Task in Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      //*[@id="u_password"]   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click Project Responsibility
    Click Manage Task Project
    Click calendar
    Close Browser Page