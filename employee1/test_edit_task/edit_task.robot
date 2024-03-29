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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[1]/li[2]/a/i
Click Project Responsibility
      sleep   1s
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
    sleep  1s
    Click Element  //*[@id="sidebarnav"]/li[2]/ul/li/a
Click Project Task
    sleep   2s
    Click Element   //*[@class="name"]
Click edit Project Task
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div[1]/div/div/div/div/div[2]/div/table/tbody/tr[3]/td[5]/button[2]
Click edit detail Task
    sleep   3s
    Input Text   //*[@id="t_detail"]        ลูกค้าตรวจสอบ UX&UI
Click edit calendar Task
    sleep   2s
    Input Text  //*[@id="t_createdate"]     02-11-2022
Click Save
    sleep   2s
    Click Element   //*[@id="mainModalFooter"]/button[1]
Click confirm
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
Click cancel
    sleep   2s
    Click Element   xpath=/html/body/div[3]/div/div/div[3]/button[2]
Close Browser Page
    sleep   2s
    Close Browser

**Test Cases**
Edit Task in Project Success
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
    Click Project Responsibility
    Click Project Task
    Click edit Project Task
    Click edit detail Task
    Click edit calendar Task
    Click Save
    Close Browser Page

Edit Task In Project Fail with cancel button
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
    Click Project Responsibility
    Click Project Task
    Click edit Project Task
    Click edit detail Task
    Click edit calendar Task
    Click cancel
    Close Browser Page