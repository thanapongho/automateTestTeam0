**Settings**
Library  SeleniumLibrary

**Test Cases**
1. Open Project Monitoring System
    open Browser  http://localhost/team0/login  Google Chrome
2. Maximize Browser  
    Maximize Browser Window
3. Input Username
    Input Text      id:u_email      63160258@go.buu.ac.th
4. Input Password
    Input Text      id:u_password   1234
    sleep   3s
5. Click to เข้าสู่ระบบ
    Click Element    css:button[type="submit"]
6. Close Browser
    sleep   3s
    Close Browser 