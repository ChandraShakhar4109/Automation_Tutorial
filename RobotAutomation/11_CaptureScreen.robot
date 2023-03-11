/*
Topics:

-----------------
1) Capture Element Screen Shot
2) Capture Page Screen Shot

*/
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  chrome

*** Test Cases ***
ScreenCapture

    open browser  ${url}  ${browser}
    maximize browser window
#    set selenium speed    3
    sleep  3

    input text  name:username  Admin
    input text  name:password  admin123
    capture element screenshot  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img  C:/Users/shakharc/PycharmProjects/Automation_Tutorial/Logo.png
    capture page screenshot  C:/Users/shakharc/PycharmProjects/Automation_Tutorial/Login_TC.png

    #Don't give destination path if destination is under your project

#    capture element screenshot  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img  Logo.png
#    capture page screenshot  Login_TC.png

*** Keywords ***
