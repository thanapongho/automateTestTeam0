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
Click Sidebar Icon
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li[2]/a
Click Manage Project
    sleep   2s
    Click Element   //*[@class="btn btn-tertiary btn-sm"]
Click Recover Status
    sleep   2s
    Click Element   //*[@id="task"]/div/div/div/div/button
Click Confirm to Recover Status
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
Click Cancel to Recover Status
    sleep   2s
    Click Element   //*[@class="swal2-cancel swal2-styled"]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Recover Status Success
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
    Click Recover Status
    Click Confirm to Recover Status
    Close Browser Page
    
Recover Status Failed with click cancel button
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
    Click Recover Status
    Click Cancel to Recover Status
    Close Browser Page