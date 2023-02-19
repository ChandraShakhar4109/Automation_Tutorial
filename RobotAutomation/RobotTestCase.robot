*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    logintoapplication
    close browser

*** Keywords ***
logintoapplication
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password    Test@123
    click element   xpath://button[contains(text(),'Log in')]

