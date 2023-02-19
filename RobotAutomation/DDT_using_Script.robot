*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my browser
Suite Teardown  Close Browser
Test Template  Invalid Login
Test Template  Valid Login

*** Test Cases ***
Right user empty password  admin@yourstore.com  ${EMPTY}
Right user wrong password  admin@yourstore.com   adMIN
Wrong username wrong password  admin@yourstore.com  adMIN
Wrong username empty password  admin@yourstore.com  ${EMPTY}
Wrong username right password  admin@yorstor.com  admin

*** Test Cases ***
Right user right password  admin@youstore.com  admin

*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    click login button
    Error Message Should be visible

Valid Login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    click login button
    Dashboard page should be visible


