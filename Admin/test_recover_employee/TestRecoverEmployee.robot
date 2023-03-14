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
    Click Element   //*[@id="sidebarnav"]/li[4]/a
    Click Element   //*[@id="sidebarnav"]/li[4]/ul/li[1]
Close Browser Page
    sleep   3s
    Close Browser
Click On Another Employee
     run keyword If    '${bg color}' == 'rgba(255, 255, 255, 1)'   
    ...               Click Element      //*[@id="status31"]
Click Recover Employee
    ${BG}   Get WebElement     //*[@id="status30"]
    ${bg color}    Call Method    ${BG}    value_of_css_property    background-color
    run keyword If    '${bg color}' == 'rgba(255, 255, 255, 1)'   
    ...               Click Element      //*[@id="status30"]

**Test Cases**
Recover Success
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
    Click Recover Employee
    Close Browser Page

Recover Because Click on another person
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
    Click On Another Employee
    Close Browser Page
    # กรณีที่พลาดคือกดที่บุคคลอื่นที่ไม่ตรงกับคนที่เราต้องการกู้คืนการระงับ
