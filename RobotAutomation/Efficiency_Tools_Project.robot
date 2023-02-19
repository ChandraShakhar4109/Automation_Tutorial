*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://10.6.140.66//tepco/PMC/index.cfm?logout=Y
${browser}  chrome

*** Test Cases ***
Efficiency_Proj
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:fld_username    AP\\ShakharC
    input text    name:fld_password  csp4592CSP*
    set selenium speed    3
    #Login Button
    click element    xpath:/html[1]/body[1]/div[1]/div[2]/div[1]/form[1]/div[3]/div[1]/button[1]
    #click on English link
    click link    xpath://a[@id='CmnHdr_english']
#    sleep    6
    click element    xpath://p[@id='CmnSdbr_effcncyTools']
#    sleep    4
    click link    xpath://body/div[1]/aside[1]/div[1]/nav[1]/ul[1]/li[16]/ul[1]/li[1]/a[1]
#    sleep    2
    click link    xpath://tbody/tr[1]/td[6]/a[1]
*** Keywords ***
