#Link:
#------------
#1) Count Number of Links on Web Page
#2) Extract All the Links from Page

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
GetAllLinksRobot

    open browser  ${url}  ${browser}
    maximize browser window
    ${link_count}   get element count  xpath://a
    log to console  ${link_count}

#    @{Link_Items}  create list
#
#    FOR  ${i}  IN RANGE  0  ${link_count}
#       ${linkText}=  get text  xpath:(//a)[${i}]
##       log to console  ${linkText}
#       Append To List  ${Link_Items}  ${linkText}
#    END

#    ${length_Links}=  Get length   ${Link_Items}
#    FOR  ${i}  IN RANGE  0  ${length_Links}
#       log to console  ${Link_Items}[${i}]
#    END
#    log to console  ${length_links}


*** Keywords ***
