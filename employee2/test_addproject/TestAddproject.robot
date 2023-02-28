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
    Click Element   //*[@id="sidebarnav"]/li[2]/a
Click Add Project
    sleep   2s
    Click Element   //*[@id="sidebarnav"]/li[2]/ul/li[1]/a
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
Click Address
    sleep   2s
    Input Text  //*[@id="p_address"]    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7957.558032042267!2d100.9507022726595!3d13.282498071815214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3102b5890d780c9b%3A0xb4f8d812de945a6f!2zVGhlIFBlcmZlY3QgUGFyayBWaWxsZSAo4LmA4LiU4Lit4LiwIOC5gOC4nuC4reC4o-C5jOC5gOC4n-C4hCDguJ7guLLguKPguYzguIQg4Lin4Li04Lil4Lil4LmMKQ!5e0!3m2!1sen!2sth!4v1675697972194!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
Click Wrong Gmail Customer
    sleep   2s
    Input Text   //*[@id="p_emailcontact"]  nun111
Click ect
    sleep   2s
    Input Text      //*[@id="p_othercontact"]   บริการรับชำระเงินออนไลน์อื่นๆผ่านเครื่องรับชำระเงินอัตโนมัติ หรือ “ตู้บุญเติม”
Click Confirm
    sleep   3s
    Click Element   xpath=/html/body/div[2]/div/div/div[2]/div/div[2]/button[1]
Close Browser Page
    sleep   2s
    Close Browser 

**Test Cases**
Add Project Success
    Open file Excel
    ${Username}=    Read Cell Data      Project Manager  0   1
    ${Password}=    Read Cell Data      Project Manager  1   1
    Open Project Monitoring System
    Click Menu Login
    sleep   1s
    Input Text      //*[@id="u_email"]     ${Username}
    sleep   1s
    Input Text      //*[@id="u_password"]   ${Password}
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
    Click Address
    Click ect
    Click Confirm
    sleep  1s
    Close Browser Page