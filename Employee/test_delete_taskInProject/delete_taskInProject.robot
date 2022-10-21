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
Serch Project
    sleep   2s
    Input Text     //*[@id="table_filter"]/label/input     พัฒนาระบบคลังสินค้า
Click Project Task
    sleep   2s
    Click Element   //*[@id="project15"]/td[6]/a
Click Delete Project Task
    sleep   2s
    Click Element   //*[@id="del"]

Click Confirm Delete Project Task
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]

Click Cancel Delete Project Task
    sleep   2s
    Click Element   //*[@class="swal2-cancel swal2-styled"]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Delete Task in Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Serch Project
    Click Project Task
    Click Delete Project Task
    Click Confirm Delete Project Task
    Close Browser Page
Delete Task in Project Fail
    Open file Excel
    ${Username}=    Read Cell Data      Employee  0   1
    ${Password}=    Read Cell Data      Employee  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Serch Project
    Click Project Task
    Click Delete Project Task
    Click Cancel Delete Project Task
    Close Browser Page