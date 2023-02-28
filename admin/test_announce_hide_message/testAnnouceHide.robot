**Settings**
Library  SeleniumLibrary
Library  ExcelRobot

*** Variables ***
${URL}  http://dekdee2.informatics.buu.ac.th:9080/team0/
${BROWSER}  Google Chrome

*** Keywords ***
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
    sleep  2s
    Click Element   //*[@id="sidebarnav"]/li[2]/a/i
Click Sidebar Settings
    sleep  2s
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[4]/a
Click Announce system
    sleep  2s
    Click Element   xpath=/html/body/div[2]/aside/div/nav/ul/li[4]/ul/li[4]/a
Click hide toggle
    sleep  2s
    Click Element   //*[@class="form-check-input"]
Click hide toggle double click
    sleep  2s
    Click Element   //*[@class="form-check-input"]
    sleep  2s
    Click Element   //*[@class="form-check-input"]
Close Browser Page
    sleep  3s
    Close Browser 


*** Test Cases ***
Hide Announce Success
    Open Excel    ${CURDIR}//test_data.xlsx
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep  2s
    Input Text      //*[@id="u_password"]   ${Password}
    Click to Login
    Click Sidebar Settings
    Click Announce system
    Click hide toggle
    Close Browser Page
Hide Announce failed with double click toggle
    Open Excel    ${CURDIR}//test_data.xlsx
    ${Username}=    Read Cell Data      Admin  0   1
    ${Password}=    Read Cell Data      Admin  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep  2s
    Input Text      //*[@id="u_email"]      ${Username}
    sleep  2s
    Input Text      //*[@id="u_password"]   ${Password}
    Click to Login
    Click Sidebar Settings
    Click Announce system
    Click hide toggle double click
    Close Browser Page