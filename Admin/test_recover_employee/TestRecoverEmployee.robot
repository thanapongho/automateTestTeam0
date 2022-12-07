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
    Click Element   //*[@id="main-wrapper"]/header/nav/div[2]/ul[1]/li[2]/a
    Click Element   //*[@id="sidebarnav"]/li[3]/a/i
    Click Element   //*[@id="sidebarnav"]/li[3]/ul/li[1]/a/i
Serch Project
    sleep   2s
    Input Text     //*[@id="table_filter"]/label/input     บุญเติม
Click Button to Export Excel
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/div[1]/button[1]
Serch Wrong Project
    sleep   2s
    Input Text    //*[@id="table_filter"]/label/input     บุนเติม
Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[2]/td[6]/button[3]
Accept Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[1]
UnAccept Delete Project
    sleep   2s
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[2]
Click Manage Activities
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[6]/a
Click Cancle Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/button[3]
Click Accept Cancle Project
    sleep   2s 
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[1]
Click Cancle Accept Project
    sleep   2s 
    Click Element   xpath=/html/body/div[5]/div/div[3]/button[2]
Click Manage Activities In Project
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[6]/a
Click Add Employee In Project
    sleep   2s
    Click Element   //*[@id="listDiv"]/div/div/div/div/button[4]
Click Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button
Click Add Employee Double Click
    sleep   2s
    Click Element   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button
Click Close Add Employee
    sleep   2s
    Click Element   xpath=/html/body/div[4]/div/div/div[3]/button
Close Browser Page
    sleep   3s
    Close Browser
Click On Another Employee
     Click Element  //*[@id="status31"]
Click Recover Employee
    Click Element   //*[@id="status30"]
Click Edit Button Employee
     Click Element  xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[2]/td[8]/button[3]
Click Input Name Edit
    sleep   2s
    Click Element  //*[@id="u_firstname"]
    Input Text      //*[@id="u_firstname"]     บุญมี
Click button Cancle
    Click Element   //*[@id="closeBtn"]
Click button Accept
    sleep   2s
    Click Element   xpath=//*[@id="mainModalFooter"]/button[1]
    Click Element   xpath=/html/body/div[6]/div/div[3]/button[1]
Click button View
    Click Element   //*[@id="view"]
Click button Change Password
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[2]/td[8]/button[2]
Change Password
    sleep   2s
    Click Element   //*[@id="pwd"]
    Input Text  //*[@id="pwd"]  pass1234
    Click Element   //*[@id="cfPwd"]
    Input Text  //*[@id="cfPwd"]    pass1234
    Click Element   xpath=//*[@id="mainModalFooter"]/button[1]
    Click Element   xpath=/html/body/div[6]/div/div[3]/button[1]
Change Password Not Match
    sleep   2s
    Click Element   //*[@id="pwd"]
    Input Text  //*[@id="pwd"]  pass1234
    Click Element   //*[@id="cfPwd"]
    Input Text  //*[@id="cfPwd"]  pass123456
    Click Element   xpath=//*[@id="mainModalFooter"]/button[1]

**Test Cases**
Recover Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username}
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
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Resiponse Project
    Click On Another Employee
    Close Browser Page
    # กรณีที่พลาดคือกดที่บุคคลอื่นที่ไม่ตรงกับคนที่เราต้องการกู้คืนการระงับ