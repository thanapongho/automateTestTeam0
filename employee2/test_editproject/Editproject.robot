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
Click Sidebar Icon
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li[2] 
Click Edit Project
    sleep   2s
    Click Element   //*[@id="edit"]
Click Edit Name Project
    sleep   2s
    Input Text   //*[@id="p_name"]   เติมเงินเกมสำหรับร้านเกม  
Click Edit Detail Project
    sleep   2s
    Input Text  //*[@id="p_detail"]     ดำเนินธุรกิจเป็นผู้ให้บริการเติมเงินเข้าเกมของบัญชีผู้ใช้งาน 
Click Edit Customer Name
    sleep   2s
    Input Text  //*[@id="p_customer"]   ศุรสิท นัดดา
Click Edit Date Project
    sleep   2s
    Input Text    //*[@id="p_createdate"]   24-11-2022
Click Edit Telno
    sleep   2s
    Input Text  //*[@id="p_telcontact"]     0943453333
Click Edit Line
    sleep   2s
    Input Text  //*[@id="p_linecontact"]    sitt_er214
Click Edit Email
    sleep   2s
    Input Text   //*[@id="p_emailcontact"]  sit234@gmail.com
Click Edit etc
    sleep   2s
    Input Text      //*[@id="p_othercontact"]   บริการรับชำระเงินออนไลน์อื่นๆผ่านเครื่องรับชำระเงินอัตโนมัติ หรือ “เติมเกม”
Click Confirm
    sleep   2s
    Click Element   //*[@id="mainModalFooter"]/button[1]
Click Confirm Again
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
Click NotConfirm Again
    sleep   2s
    Click Element   //*[@class="swal2-cancel swal2-styled"]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Edit Name Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Name Project
    Click Confirm
    Close Browser Page
Edit Name Project Failed
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Name Project
    Click Confirm
    Close Browser Page
Edit Detail Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Detail Project
    Click Confirm
    Close Browser Page
Edit Customer Name Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Customer Name
    Click Confirm
    Close Browser Page
Edit Date Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Date Project
    Click Confirm
    Close Browser Page
Edit TelNo Customer Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Telno
    Click Confirm
    Close Browser Page
Edit Line Customer Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Line
    Click Confirm
    Close Browser Page
Edit Email Customer Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit Email
    Click Confirm
    Close Browser Page
Edit Etc Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      id:u_email      ${Username}
    sleep   1s
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Icon
    Click Edit Project
    Click Edit etc
    Click Confirm
    Close Browser Page