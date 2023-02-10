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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/a
Click to Login
    sleep   2s
    Click Element   //*[@id="loginBtn"]
Click Sidebar Icon
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a
Click Manage Project
    sleep   2s
    Click Element   //*[@class="btn btn-tertiary btn-sm"]
Click Export Excel
    sleep   2s
    Click Element   //*[@id="tablePermission_wrapper"]/div[1]/button[1]
Click Export PDF
    sleep   2s
    Click Element   //*[@id="tablePermission_wrapper"]/div[1]/button[2]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Edit Name Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Manage Project
    Click Export Excel
    Click Export PDF
    Close Browser Page