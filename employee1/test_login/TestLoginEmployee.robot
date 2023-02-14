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
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Login Employee Success
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
    Close Browser Page
Login Employee Fail Without Username
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   2
    ${Password}=    Read Cell Data      Employee  1   2
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page
Login Employee Fail Without Password
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   3
    ${Password}=    Read Cell Data      Employee  1   3
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page
Login Employee Fail Forget Change Languge
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   4
    ${Password}=    Read Cell Data      Employee  1   4
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page
Login Employee Fail Username Incorrect
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   5
    ${Password}=    Read Cell Data      Employee  1   5
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page
Login Employee Fail Password Incorrect
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   6
    ${Password}=    Read Cell Data      Employee  1   6
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page
Login Employee Fail Single Quote Without Password
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   7
    ${Password}=    Read Cell Data      Employee  1   7
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Close Browser Page