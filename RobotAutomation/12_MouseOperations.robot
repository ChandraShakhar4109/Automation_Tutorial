#Mouse Operations/actions:
#-------------
#1) Right Click
#2) Double Click
#3) Drag & Drop

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}  https://testautomationpractice.blogspot.com/
${url3}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${browser}  chrome
${Item_to_drag}

*** Test Cases ***
MouseOperations
    #right click element / open context menu
    open browser  ${url}  ${browser}
    maximize browser window

    #for right click
    open context menu  xpath://span[contains(text(),'right click me')]

#    sleep  3
#
#    go to  ${url2} #going to another url
#    double click element  xpath://button[contains(text(),'Copy Text')]
    sleep  3

    go to  ${url3}
    drag and drop  id:box4  id:box104
    sleep  2
    ${basket_items} =  Get WebElements   id:box104

#    ${type_basket_items} =  Evaluate   type(@{basket_items}).__name__
#    log to console   ${type_basket_items}

    FOR  ${element}  IN   @{basket_items}
         Log to Console  ${element.text}
    END


*** Keywords ***
