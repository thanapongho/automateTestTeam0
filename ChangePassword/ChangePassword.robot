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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/a
Click Change Password
    sleep   2s
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/div/a[2]  


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
    Click Change Password
    sleep   2s
    Input Text      id:curPwd       ${Password}
    sleep   1s
    Input Text      id:pwd          suchada*s
    sleep   1s
    Input Text      id:cfPwd        suchada*s
    sleep   1s
    Click Element   //*[@id="mainModalFooter"]/button[1]
    sleep   1s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
    Close Browser Page