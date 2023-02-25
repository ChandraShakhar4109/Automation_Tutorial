/*
Topic: How To Select Options from Drop-Down & List Boxes in Robot Framework
 Selenium with Python
*/
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Handling Drop down and lists
    open browser    ${url}    ${browser}
    maximize browser window

              #Drop Down Menu - Selects a single value
# 2 parameters
# id or name of the drop down
#and second is value from dropdown
    select from list by label    continents    Australia
    sleep    3
    select from list by index    continents    6

                # List Box -Can Select more than one value from given list
    select from list by label    selenium_commands    Switch Commands
    sleep    2
    select from list by index    selenium_commands    4
    sleep    2
    unselect from list by label    selenium_commands    Switch Commands


*** Keywords ***
