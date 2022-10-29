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
    Input Text     //*[@id="table_filter"]/label/input     ระบบจัดการเอกสารอัตโนมัติ
Click Manage Task Project
    sleep   2s
    Click Element   //*[@class="btn btn-tertiary btn-sm"]
Click Add Project Task
    sleep   2s
    Click Element   //*[@id="addBtn"]
Click Dropdown Project Task
    sleep   2s
    Click Element   //*[@id="t_tl_id"]
Click choose Project Task
    sleep   2s
    Select From List By Index   id:t_tl_id  3   
    # เป็นคำสั่ง select dropdown ต้องตามด้วย ID และ หมายเลขลำดับข้อมูล
Fill out detail Project Task
    sleep   2s
    Input Text   //*[@id="t_detail"]    เสนอราคาชั่วโมงการทำงาน
Click choose date Project Task
    sleep   2s
    Click Element   //*[@id="t_createdate"]
    Press Keys      //*[@id="t_createdate"]     ENTER
Click Add document Project Task
    sleep   2s
    Choose File     id:uploadBtn   ${CURDIR}\\environmentTeam0.jpg
Close Browser Page
    sleep   5s
    Close Browser 

**Test Cases**
Add Task in Project Success
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
    Click Manage Task Project
    Click Add Project Task
    Click Dropdown Project Task
    Click choose Project Task
    Fill out detail Project Task
    Click choose date Project Task
    Click Add document Project Task
    Close Browser Page
