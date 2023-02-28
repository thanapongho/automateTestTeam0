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
Serch Cause of Prjoect Fail
    sleep   2s
    Input Text     //*[@id="DataTables_Table_0_filter"]/label/input     ไม่สามารถติดต่อลูกค้าได้
Close Browser Page
    sleep   3s
    Close Browser
**Test Cases**
# Jiradat 
Serch Cause Success
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
    Serch Cause of Prjoect Fail
    Close Browser Page 
    
    

