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
Click Dropdown Icon
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[3]/li/a/table/tbody/tr/td[1]
Click View Profile
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[3]/li/div/a[1]
Click outside View Profile
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/div/div
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
View Profile Employee Success
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Dropdown Icon
    Click View Profile
    Close Browser Page
View Profile Employee fail because click outside view profile
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Dropdown Icon
    Click outside View Profile
    Close Browser Page