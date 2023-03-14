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
Export Employee To PDF
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/div[1]/button[2]
Export Employee To Excel
    Click Element   xpath=//*[@id="DataTables_Table_0_wrapper"]/div[1]/button[1]
Close Browser Page
    sleep  2s
    close browser
**Test Cases**
Export Success
    Open file Excel
    sleep  2s
    ${Username}=    Read Cell Data      Admin  0   1
    sleep  2s
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s 
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Export Employee To PDF
    Close Browser Page

Export Wrong Because Click Wrong Button
    Open file Excel
    sleep  2s
    ${Username}=    Read Cell Data      Admin  0   1
    sleep  2s
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Export Employee To Excel
    Close Browser Page
    # ผิดพลาดเพราะว่ากดที่ปุ่ม Excel