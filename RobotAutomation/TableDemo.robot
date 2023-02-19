*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
TableValidations
   open browser  ${url}  ${browser}
   maximize browser window
   ${count_rows}=  get element count  xpath://table[@name="BookTable"]/tbody/tr
   log to console  ${count_rows}

   ${count_col}=  get element count  xpath://table[@name="BookTable"]/tbody/tr[1]/th
   log to console  ${count_col}

   ${table_data}=  get text  xpath://tbody/tr[5]/td[1]
   log to console  ${table_data}

   table column should contain  xpath://tbody/tr/th[2]  2  Author
   table row should contain  xpath://tbody/tr[4]/td[2]  4  Animesh
   table cell should contain  xpath://table[@name="BookTable"]  4  4  300
   table header should contain  xpath://table[@name='BookTable']   BookName

   close browser





*** Keywords ***
