**Settings**
Library  SeleniumLibrary

**Variables**
${URL}  http://localhost/team0/login
${BROWSER}  Google Chrome
${EMAIL}    suchada1512@gmail.com
${EMPTY}   
${PASSWORD}     suchada

**Keywords**
Open Project Monitoring System
    open Browser  ${URL}  ${BROWSER}  
    Maximize Browser Window
Input Username
    sleep   1s
    Input Text      id:u_email      ${EMAIL}
Input Password
    sleep   1s
    Input Text      id:u_password   ${PASSWORD}
Click to Login
    sleep   2s
    Click Element   //*[@id="loginBtn"]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Login Employee Success
    Open Project Monitoring System
    Input Username
    Input Password
    Click to Login
    Close Browser Page
Login Employee Fail Without Username
    Open Project Monitoring System
    Input Password
    Click to Login
    Close Browser Page
Login Employee Fail Without Password
    Open Project Monitoring System
    Input Username
    Click to Login
    Close Browser Page