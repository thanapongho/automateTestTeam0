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
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li[2]
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
    sleep  1s
    Click Element   //*[@id="task"]/div/div/div/div/button[3]
    sleep  1s
    Click Element  //*[@id="c_cl_id"]
    sleep  1s
    Click Element  //*[@id="c_cl_id"]/option[2]
    Input Text   //*[@id="c_detail"]     ไม่สามารถดำเนินโครงการต่อไปได้ เนื่องจากไม่สารมารถติดต่อลูกค้าได้
    Click Element  //*[@id="mainModalFooter"]/button[1]
    sleep  1s
    Click Element   xpath=/html/body/div[8]/div/div[3]/button[1]
Click Cancle Button
    sleep  1s
    Click Element   //*[@id="task"]/div/div/div/div/button[3]
    sleep  1s
    Click Element  //*[@id="c_cl_id"]
    sleep  1s
    Click Element  //*[@id="c_cl_id"]/option[2]
    Input Text   //*[@id="c_detail"]     ไม่สามารถดำเนินโครงการต่อไปได้ เนื่องจากไม่สารมารถติดต่อลูกค้าได้
    Click Element  //*[@id="mainModalFooter"]/button[2]
Close Browser Page
    sleep   3s
    Close Browser 
**Test Cases**
# Delete are Project Success
#     Open file Excel
#     ${Username}=    Read Cell Data      Project Manager  0   1
#     ${Password}=    Read Cell Data      Project Manager  1   1
#     Open Project Monitoring System
#     Click Menu Login
#     sleep   2s
#     Input Text      id:u_email      ${Username}
#     sleep   2s
#     Input Text      id:u_password   ${Password}
#     Click to Login
#     sleep   2s
#     Click Sidebar Resiponse Project
#     sleep   2s
#     Delete Project
#     sleep   2s
#     Accept Delete Project
#     sleep   2s
#     Close Browser
    
Cancle Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login   
    sleep  1s
    Input Text      id:u_email      ${Username}  
    Input Text      id:u_password   ${Password}
    Click to Login   
    Click Sidebar Resiponse Project    
    Click Manage Activities    
    Click Cancle Project    
    Close Browser Page    
Cancle Project Wrong
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login   
    sleep  1s
    Input Text      id:u_email      ${Username}   
    Input Text      id:u_password   ${Password}
    Click to Login  
    Click Sidebar Resiponse Project   
    Click Manage Activities  
    Click Cancle Button      
    Close Browser Page
    
    