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
Click Sidebar Settings
    sleep   2s
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[4]/a
Click List Employee
    sleep   2s
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[4]/ul/li[1]
Click Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/button
Input Name Employee
    sleep   2s
    Input Text    //*[@id="u_firstname"]    สมศักดิ์
Input Last Name Employee
    sleep   2s
    Input Text    //*[@id="u_lastname"]    เรืองศรี  
Input Email
    sleep   2s
    Input Text    //*[@id="u_email"]    somsak.ru@gmail.com
Input Email has already used in System
    sleep  2s
    Input Text  //*[@id="u_email"]    sorn.lungling@gmail.com
Input Phone
    sleep   2s
    Input Text    //*[@id="u_tel"]    0944628921
Choose Rigth
    sleep   2s
    Click Element  //*[@id="u_role"] 
Choose Employee
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div/div[3]/select/option[4]
Input Position
    sleep  2s
    Input Text      //*[@id="u_position"]   BA
Click Accept Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[3]/button[1]


Close Browser Page
    sleep   5s
    Close Browser 
**Test Cases**
Add Employee Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep  2s
    Input Text      //*[@id="u_password"]   ${Password}
    Click to Login
    Click Sidebar Settings
    Click List Employee
    Click Add Employee
    Input Name Employee
    Input Last Name Employee
    Input Email
    Input Phone
    Choose Rigth
    Choose Employee
    Input Position
    Click Accept Add Employee
    Close Browser Page
Add Employee Failed with this e-mail has already been used
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep  2s
    Input Text      //*[@id="u_password"]   ${Password}
    Click to Login
    Click Sidebar Settings
    Click List Employee
    Click Add Employee
    Input Name Employee
    Input Last Name Employee
    Input Email has already used in System
    Input Phone
    Choose Rigth
    Choose Employee
    Input Position
    Click Accept Add Employee
    Close Browser Page