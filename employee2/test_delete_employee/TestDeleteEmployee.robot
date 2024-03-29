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
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li[2] 
Click DeleteEmployee
    sleep   2s
    Click Element  //*[@id="project13"]/td[2]
    sleep  1s
    Click Element  //*[@id="permission-tab"]
    sleep  1s
    Click Element   //*[@id="del"]
Click confirm
    sleep   2s
    Click Element   xpath=/html/body/div[7]/div/div[3]/button[1]
Click cancle
    sleep   2s
    Click Element   xpath=/html/body/div[7]/div/div[3]/button[2]
Close Browser Page
    sleep   3s
    Close Browser 
**Test Cases**
# Pawanrat
DeleteEmployee Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    sleep  1s
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click DeleteEmployee
    Click confirm
    sleep  1s
    Close Browser
DeleteEmployee Failed
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    sleep  1s
    Click Menu Login
    sleep  1s
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click DeleteEmployee
    Click cancle
    sleep  1s
    Close Browser