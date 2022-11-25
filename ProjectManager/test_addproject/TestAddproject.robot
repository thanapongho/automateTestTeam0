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
Click Sidebar Icon
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a
Click Add Project
    sleep   2s
    Click Element   //*[@id="addBtn"]
Click Name Project
    sleep   2s
    Input Text   //*[@id="p_name"]   บุญเติม
Click No Name Project
    sleep   2s
    Click Element   //*[@id="p_name"]   
Click Detail Project
    sleep   2s
    Input Text  //*[@id="p_detail"]     ดำเนินธุรกิจเป็นผู้ให้บริการเติมเงินโทรศัพท์มือถือประเภทเติมเงินล่วงหน้า
Click No Detail Project
    sleep   2s
    Click Element  //*[@id="p_detail"]
Click Customer Name
    sleep   2s
    Input Text  //*[@id="p_customer"]   สิรนัน โตนอง
Click No Customer Name
    sleep   2s
    Click Element  //*[@id="p_customer"]
Click Date
    sleep   2s
    Input Text    //*[@id="p_createdate"]   22-11-2022
Click No Date
    sleep   2s
    Click Element    //*[@id="p_createdate"] 
Click TelNo
    sleep   2s
    Input Text  //*[@id="p_telcontact"]     0943459985
Click No TelNo
    sleep   2s
    Input Text  //*[@id="p_telcontact"]     094345998
Click Line Customer
    sleep   2s
    Input Text  //*[@id="p_linecontact"]    nun_qw11
Click Gmail Customer
    sleep   2s
    Input Text   //*[@id="p_emailcontact"]  nun111@gmail.com
Click Wrong Gmail Customer
    sleep   2s
    Input Text   //*[@id="p_emailcontact"]  nun111
Click ect
    sleep   2s
    Input Text      //*[@id="p_othercontact"]   บริการรับชำระเงินออนไลน์อื่นๆผ่านเครื่องรับชำระเงินอัตโนมัติ หรือ “ตู้บุญเติม”
Click Confirm
    sleep   2s
    Click Element   //*[@id="mainModalFooter"]/button[1]
Click Confirm Again
    sleep   2s
    Click Element   //*[@class="swal2-confirm swal2-styled"]
Close Browser Page
    sleep   3s
    Close Browser 

**Test Cases**
Add Project Success
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Click Confirm Again
    Close Browser Page
Add Project Failed No Project Name
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
    Click Add Project
    Click No Name Project
    Click Detail Project
    Click Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Failed No Detail Project
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
    Click Add Project
    Click Name Project
    Click No Detail Project
    Click Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Failed No Name Customer
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click No Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Failed No Date
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click Customer Name
    Click No Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Success
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Failed Not Completed Phone number
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click Customer Name
    Click Date
    Click Wrong TelNo
    Click Line Customer
    Click Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
Add Project Failed Not Completed Gmail
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
    Click Add Project
    Click Name Project
    Click Detail Project
    Click Customer Name
    Click Date
    Click TelNo
    Click Line Customer
    Click Wrong Gmail Customer
    Click ect
    Click Confirm
    Close Browser Page
    