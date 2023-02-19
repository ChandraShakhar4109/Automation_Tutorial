*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../TestData/LoginData.csv
Suite Setup  Open_my_browser
Suite Teardown  Close Browser
Test Template  Invalid_login

*** Test Cases ***
LoginTestwithExcel  using  ${username}  and  ${password}

*** Keywords ***
Invalid_login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    click login button
    Error Message Should be visible
