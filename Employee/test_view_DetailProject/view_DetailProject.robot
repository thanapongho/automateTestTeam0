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
Click Sidebar Resiponse Project
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
Click View Detail Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[2]/u
    
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
View Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click View Detail Project
    Close Browser Page
