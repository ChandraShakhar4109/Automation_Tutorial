#Topics Covered
#Scrolling page using JavaScriptExecutor
# 1 Scrolling page till it reach a pixel number
# 2 Scrolling page till find element on page
# 3 Scroll till the bottom

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    chrome

*** Test Cases ***
ScrollingTest
    open browser    ${url}    ${browser}
    maximize browser window

#    execute javascript   window.scrollTo(0,1500)    # 0 is the limit for horizontal pixel
#     #    and 1500 is the limit for vertical scrolling pixel according to parameter given
#    sleep    3
##    ${horizontal_pixel_limit}=    document.body.scrollHeight
#    execute javascript   window.scrollTo(0,6642)
#    sleep    3

    scroll element into view    xpath://body[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/table[1]/tbody[1]/tr[95]/td[1]/img[1]

    execute javascript    window.scrollTo(0,document.body.scrollHeight)    #end of the page
    sleep    5
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #top of the page
    sleep    3





