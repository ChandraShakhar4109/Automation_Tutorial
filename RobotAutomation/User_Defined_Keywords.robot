*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
#1)
#UD_Keywords_without_arguments
#    #there will be no argument in Keywords
#    launch_browser_ud_keywords_without_arguments
#    input text    name:userName    mercury
#    input password    name:password    mercury
#    click element    xpath://tbody/tr[4]/td[2]/div[1]/input[1]

#2)
#UD_Keywords_with_arguments
#    #there will be 2 argument in Keywords
#    launch_browser_ud_keywords_with_arguments    ${url}    ${browser}
#    input text    name:userName    mercury
#    input password    name:password    mercury
#    click element    xpath://tbody/tr[4]/td[2]/div[1]/input[1]

#3)
UD_Keywords_with_arguments_&_returnValue
    #there will be 2 argument in Keywords with a return value
    ${app_title}=    Launch_Browser_UD_Keywords_with_arguments_with_return_value    ${url}    ${browser}
    log to console    ${app_title}
    log    ${app_title}
    input text    name:userName    mercury
    input password    name:password    mercury
    click element    xpath://tbody/tr[4]/td[2]/div[1]/input[1]

