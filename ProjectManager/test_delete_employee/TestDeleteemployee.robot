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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[2]/li/a
Click to Login
    sleep   2s
    Click Element   //*[@id="loginBtn"]
Click Sidebar Resiponse Project
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
Click ManageProject
    sleep   2s
    Click Element    xpath = /html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[6]/a
Click DeleteEmployee
    sleep   2s
    Click Element   xpath = /html/body/div[2]/div/div/div[2]/div/div/div/div/div[2]/div/table/tbody/tr[1]/td[6]/button
Click confirm
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
Click cancle
    sleep   2s
    Click Element   //*[@class="swal2-cancel swal2-styled"]
Close Browser Page
    sleep   3s
    Close Browser 
**Test Cases**
# Pawanrat
DeleteEmployee Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   2s
    Input Text      id:u_email      ${Username}
    sleep   2s
    Input Text      id:u_password   ${Password}
    Click to Login
    sleep   2s
    Click Sidebar Resiponse Project
    sleep   2s
    Click ManageProject
    sleep   2s
    Click DeleteEmployee
    sleep   2s
    Click confirm
    sleep   2s
    Close Browser
DeleteEmployee Failed
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   2s
    Input Text      id:u_email      ${Username}
    sleep   2s
    Input Text      id:u_password   ${Password}
    Click to Login
    sleep   2s
    Click Sidebar Resiponse Project
    sleep   2s
    Click ManageProject
    sleep   2s
    Click DeleteEmployee
    sleep   2s
    Click cancle
    sleep   2s
    Close Browser
    
