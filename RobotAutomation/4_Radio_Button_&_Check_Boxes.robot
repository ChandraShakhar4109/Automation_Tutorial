/*
Topics:
---------
1) How To Select Radio Buttons & Check Boxes
2) How to Un-Select
*/
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Testing Radio Button and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2    #every statement will 2 seconds to execute

    # Selecting Radio Button
                                            #parameters
    select radio button    sex    Female    # name    value
    select radio button    exp    4

    # Selecting Radio Button
    select checkbox    Automation Tester
    select checkbox    Manual Tester

    select checkbox    Selenium IDE
    select checkbox    QTP
    unselect checkbox    QTP

    close browser
*** Keywords ***

