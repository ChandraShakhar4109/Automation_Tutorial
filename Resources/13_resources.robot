*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#1)
#Launch_Browser_UD_Keywords_without_arguments
#    open browser    ${url}    ${browser}
#    maximize browser window

#2)
#Launch_Browser_UD_Keywords_with_arguments
#    [Arguments]    ${app_url}    ${app_browser}
#    open browser    ${app_url}    ${app_browser}
#    maximize browser window

#3)
Launch_Browser_UD_Keywords_with_arguments_with_return_value
    [Arguments]    ${app_url}    ${app_browser}
    open browser    ${app_url}    ${app_browser}
    maximize browser window
    ${app_title}=    get title
    [Return]  ${app_title}

