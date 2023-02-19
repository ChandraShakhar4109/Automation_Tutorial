*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click element    xpath://a[contains(text(),'Log in')]
    ${"email_txt"}    set variable   id:Email

    element should be enabled    ${"email_txt"}
    element should be visible    ${"email_txt"}
    input text    ${"email_txt"}    JohnDavid@gmail.com
    sleep    2
    clear element text    ${"email_txt"}

    click link    xpath://a[contains(text(),'Log in')]
    input text    id:Email    pavanoltraining@gmail.com
    input text    id:Password    Test@123
    sleep    1
    close browser

*** Keywords ***

