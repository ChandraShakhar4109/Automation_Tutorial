/*Topics:
----------
#1. Browser related Keywords
2. Go To
3. Go Back
#4. Get Location*/
*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.com/
${browser}  chrome
*** Test Cases ***
Navigation_Test
    open browser  ${url}  ${browser}
    ${loc}=  get location
    log to console  ${loc}

    sleep  2
    go to  https://www.bing.com/?toWww=1&redig=2946861F375341DCBC28F542ABBB65A0
    ${loc}=  get location
    log to console  ${loc}

    sleep  3
    go back
    ${loc}=  get location
    log to console  ${loc}


*** Keywords ***
