*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URl}  https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${browser}  chrome

*** Keywords ***
Open_my_browser
    open browser  ${LOGIN URL}  ${browser}
    maximize browser window

Close Browser
    close all browsers

Open Login page
    go to  ${LOGIN URL}

Input username
    [Arguments]  ${username}
    input text  name:Email  ${username}

Input password
    [Arguments]  ${password}
    input text  name:Password  ${password}

click login button
    click element  xpath://button[contains(text(),'Log in')]

click logout
    click link  Logout

Error Message Should be visible
    page should contain  Login was unsuccessful.

Dashboard page should be visible
    page should contain  Dashboard


