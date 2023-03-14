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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[1]/li[2]/a
    Click Element   //*[@id="sidebarnav"]/li[4]/a/i
    Click Element   //*[@id="sidebarnav"]/li[4]/ul/li[1]/a/i
Click button Change Password
    sleep  2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[5]/button[2]
Change Password
    sleep   2s
    Input Text      //*[@id="pwd"]  pass1234
    sleep   2s
    Input Text      //*[@id="cfPwd"]    pass1234
    sleep   2s
    Click Element   xpath=//html/body/div[3]/div/div/div[3]/button[1]
Change Password Not Match
    sleep   2s
    Input Text      //*[@id="pwd"]  pass1234
    sleep   2s
    Input Text      //*[@id="cfPwd"]  pass123456
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[3]/button[1]
Close Browser Page
    sleep   2s
    close browser
**Test Cases**
Change Password Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      id:u_email      ${Username}
    sleep  2s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click button Change Password
    Change Password
    Close Browser Page
Change Password Because Input Password Not Match
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      id:u_email      ${Username}
    sleep  2s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click button Change Password
    Change Password Not Match
    Close Browser Page