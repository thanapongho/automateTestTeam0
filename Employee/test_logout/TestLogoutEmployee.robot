**Settings**
Library  SeleniumLibrary
Library  ExcelRobot

**Variables**
${URL}  http://localhost/team0/login
${BROWSER}  Google Chrome

**Keywords**
Open file Excel
    Open Excel    ${CURDIR}\\test_data.xlsx
Open Project Monitoring System
    open Browser  ${URL}  ${BROWSER}  
    Maximize Browser Window
Click to Login
    sleep   2s
    Click Element   //*[@id="loginBtn"]
Click Dropdown Icon
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/a
Click Logout
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/div/a[3]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Logout Employee Success
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Dropdown Icon
    Click Logout
    Close Browser Page