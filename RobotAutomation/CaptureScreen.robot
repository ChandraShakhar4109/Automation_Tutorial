*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  chrome

*** Test Cases ***
ScreenCapture

    open browser  ${url}  ${browser}
    maximize browser window

#    sleep  3

    input text  xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]  Admin
    input text  xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]  admin123
    capture element screenshot  xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[1]/img[1]  C:/Users/CSP/PycharmProjects/Automation_Tes/Element.png
#    capture page screenshot  C:/Users/CSP/PycharmProjects/Automation_Tes/Page_Screenshot.png


*** Keywords ***
