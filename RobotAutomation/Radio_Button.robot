*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Testing Radio Button and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2

    select radio button    sex    Female
    select radio button    exp    4

    select checkbox    Automation Tester
    select checkbox    Manual Tester

    select checkbox    Selenium IDE
    select checkbox    QTP
    unselect checkbox    QTP

    close browser
*** Keywords ***

