*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}   chrome

*** Test Cases ***
HandlingAlerts
    open browser  ${url}  ${browser}
    maximize browser window
    click element  xpath://button[contains(text(),'Click Me')]
    set selenium speed  2
    handle alert  accept

#     handle alert  dismiss
    
#     handle alert  leave
#    alert should be present  Press a button!

