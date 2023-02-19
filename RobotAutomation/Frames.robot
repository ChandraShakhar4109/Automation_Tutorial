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

