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
    Click Element   //*[@id="sidebarnav"]/li[4]/a/i
    Click Element   //*[@id="sidebarnav"]/li[4]/ul/li[3]/a
Export Cause Of Project Fail Excel
    sleep  2s
    Click Element   //*[@id="DataTables_Table_0_wrapper"]/div[1]/button[1]
    sleep  3s
    Click Elemnt    //*[@id="DataTables_Table_0_wrapper"]/div[1]/button[2]
Close Browser Page
    sleep   3s
    Close Browser
**Test Cases**
# Jiradat 
Export Cause Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   2s
    Input Text      id:u_email      ${Username}
    sleep   2s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Export Cause Of Project Fail Excel
    Close Browser Page 