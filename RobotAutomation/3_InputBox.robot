/*
Topics covered:
How To Handle Input Box in Robot Framework
-------------------
Visibility status
Enabled status
Input value
Clearing value
Verify Title Of the page
*/
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputbox
    open browser   ${url}   ${browser}
    maximize browser window
    title should be  nopCommerce demo store
    click link  xpath://a[contains(text(),'Log in')]

#    xpath is the locator of the element like id,name,class name, css selector

    #storing the "locator" to some variable for performing different taska according to agenda
    #and so that it could easily be passed as parameters with keywords
    ${"email_txt"}  set variable    id:Email

    element should be visible   ${"email_txt"}
    #element should not be visible    ${"email_txt"}

    element should be enabled   ${"email_txt"}
    input text  ${"email_txt"}  cshakhar_mca20@thapar.edu
    sleep   5
    clear element text  ${"email_txt"}
    sleep   3
    close browser

*** Keywords ***
