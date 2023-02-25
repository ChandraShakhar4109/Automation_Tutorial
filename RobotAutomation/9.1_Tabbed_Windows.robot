#Topics:
#---------
#1) How to Handle Tabbed Windows
#2) How to Handle Browser Windows
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.automationtesting.in/Windows.html
${browser}  chrome

*** Test Cases ***
TabbedWindowTest
        open browser  ${url}  ${browser}
        maximize browser window
        set selenium timeout  3
        click element  xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
        switch window  title=Selenium  # or url of switched window
        click link  xpath://header/nav[1]/div[1]/ul[1]/li[5]/a[1]
        sleep  2
        close all browsers


