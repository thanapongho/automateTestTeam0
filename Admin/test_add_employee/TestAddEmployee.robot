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
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[3]/a
Click List Employee
    sleep   2s
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[3]/ul/li[1]/a
Click Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/button
Input Name Employee
    sleep   2s
    Input Text    xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[1]/input    สมชาย
Input Last Name Employee
    sleep   2s
    Input Text    xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[2]/input    มีสกุล    
Input Email
    sleep   2s
    Input Text    xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[3]/input    somchay.mee@gmail.com
Input Phone
    sleep   2s
    Input Text    xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[4]/input    0944628921
Choose Rigth
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[5]/select
Choose Employee
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[2]/div/div/div/form/div/div[5]/select/option[4]   
Click Accept Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[3]/button[1]
Click Accept Add Employee Fail
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[3]/button[1]
Click Accept Employee 
    sleep   2s
    Click Element   xpath=/html/body/div[6]/div/div[3]/button[1]
Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[2]/td[6]/button[3]
Accept Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[1]
UnAccept Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[2]
Click Manage Activities
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[6]/a
Click Cancle Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/button[3]
Click Accept Cancle Project
    sleep   2s 
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[1]
Click Cancle Accept Project
    sleep   2s 
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[2]
Click Manage Activities In Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[6]/a
Click Add Employee In Project
    sleep   2s
    Click Element   //*[@id="listDiv"]/div/div/div/div/button[4]
Click Add Employee Double Click
    sleep   2s
    Click Element   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button
Click Close Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[4]/div/div/div[3]/button
Close Browser Page
    sleep   3s
    Close Browser 
**Test Cases**
Add Employee Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
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
    Click Accept Add Employee
    Click Accept Employee 
    Close Browser Page

Add Employee Fail
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
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
    Click Accept Add Employee Fail
    Close Browser Page    
   

