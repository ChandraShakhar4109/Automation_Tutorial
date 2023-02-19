*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
#    create webdriver chrome executpable_path="C:\Users\CSP\AppData\Local\Programs\Python\Python38\Scripts\chromedriver.exe"
#    Above line is required if we don't have added any browser driver path in environment variables path

    open browser    ${url}     ${browser}
    logintoApplication
    close browser

*** Keywords ***
logintoApplication
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email  pavanaoltraining@gmail.com
    input text  id:Password  Test@123
    click element  xpath://button[contains(text(),'Log in')]

