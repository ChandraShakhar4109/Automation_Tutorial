*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://www.google.com/
${url2}  https://www.bing.com/

${browser}  chrome

*** Test Cases ***
MultipleBrowserTest

    open browser  ${url1}  ${browser}
    maximize browser window

#    set selenium timeout  2
    sleep  2
    open browser  ${url2}  ${browser}
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

    sleep  3

    close all browsers



*** Keywords ***

