*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}  https://testautomationpractice.blogspot.com/
${url3}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${browser}  chrome

*** Test Cases ***
MouseOperations
    #right click element / open context menu
    open browser  ${url}  ${browser}
    maximize browser window
    open context menu  xpath://span[contains(text(),'right click me')]

    sleep  3

    go to  ${url2}
    double click element  xpath://button[contains(text(),'Copy Text')]
    sleep  3

    go to  ${url3}
    drag and drop  id:box4  id:box104
    sleep  2

*** Keywords ***
