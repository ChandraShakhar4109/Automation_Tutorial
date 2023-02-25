#Topics:
 #-------
 #1) How to Handle Alerts
 #2) How to Handle Frames

#Note:-- Please see there are 2 scripts here
#1
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

#2
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}  chrome

*** Test Cases ***
TestingFrame
     open browser  ${url}  ${browser}
     maximize browser window
     set selenium speed  2
     select frame  packageListFrame  # id , xpath ,name is unique
     click element  xpath://a[contains(text(),'org.openqa.selenium.chrome')]

     unselect frame

     select frame  packageFrame
     click element  xpath://a[contains(text(),'AddHasCasting')]
     unselect frame

     select frame  classFrame
     click link  Index


#    select frame  overview-summary.html

