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
Click Sidebar Settings
    sleep   2s
    Click Element  //*[@id="sidebarnav"]/li[3]/a/i
Click Sidebar Project list
    sleep   2s
    Click Element  //*[@id="sidebarnav"]/li[3]/ul/li[2]/a
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
Click Add Activity
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/button
Click Delete Activity
    sleep   2s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[5]/button[2]/i
     Click Element  xpath=//html/body/div[5]/div/div[3]/button[1]
Click Delete Activity fail
     sleep   2s
     Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div/div/div/table/tbody/tr[1]/td[5]/button[2]/i
     Click Element  xpath=/html/body/div[5]/div/div[3]/button[2]
input Activity
    sleep   2s
    Input Text    //*[@id="tl_name"]     กำลังดำเนินการ
    Click Element  //*[@id="mainModalFooter"]/button[1]
     sleep   2s
    Click Element  xpath=/html/body/div[6]/div/div[3]/button[1]
input Activity fail
    sleep   2s
    Input Text    //*[@id="tl_name"]     กำลังดำเนินการ
    Click Element  //*[@id="mainModalFooter"]/button[1]
     sleep   2s
    Click Element  xpath=/html/body/div[6]/div/div[3]/button[2]

    
**Test Cases**
Delete Activity Success
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username
    Input Text      id:u_password   ${Password}
    Click to Login
    Click Sidebar Settings
    Click Sidebar Project list
    Click Delete Activity
    Close Browser Page

Delete Activity fail
    Open file Excel
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    Input Text      id:u_email      ${Username}
    Input Text      id:u_password   ${Password}
    Click to Login
   Click Sidebar Settings
   Click Sidebar Project list
  Click Delete Activity fail
    Close Browser Page
