/*
Source -- https://www.neovasolutions.com/2022/08/12/how-to-handle-waits-implicit-and-explicit/
Topics Covered:
--------
1) Selenium Speed --> Selenium execution speed can be slowed down globally by using Set Selenium speed keyword.
    ${speed}=get selenium speed (which is default by 0 seconds)
    e.g-- set selenium speed  3  seconds (waits for 3 seconds before a statement is executed)

2) Selenium Timeout --> SeleniumLibrary contains various keywords that have an optional timeout
               argument that specifies how long these keywords should wait for certain events or actions.
     e.g -- wait until page contains  Registration # default timeout is 5 seconds
     set selenium timeout   10 seconds
     ${time}= get selenium timeout
     log to console  ${time}

3) Implicit wait -->Implicit waits are applicable to all the elements in a web page at a global level.

Some of the keywords that are provided by the robot framework to apply implicit waits are:
Set Selenium Implicit Wait: Sets the Implicit wait value used by selenium.

This keyword sets the implicit wait for all opened browsers. By applying implicit wait, we can ask the web driver to wait for a specific amount of time before it throws an exception.

Get Selenium Implicit Wait: Gets the Implicit wait value used by selenium.
This keyword will return the value of the implicit wait time. The value is returned as a human-readable string, e.g., 1 second.

Set Browser Implicit Wait: Sets the implicit wait value used by Selenium.
Same as Set Selenium Implicit Wait but only affects the current browser.

      ##It is more efficient as it wait for each condition under setted time if not throw exception if fulfilled
      it continue further
4) Sleep

5)Explicit Wait - Explicit waits are specifically applied to an element intended by us, instead of all the elements of the web page.
                  It is most useful when we get certain elements on a webpage that need a longer time to load.
Keywords that are provided by the robot framework to apply explicit waits are:

Wait Until Page Contains – Waits until text appears on the current page
Wait Until Page Contains Element – Waits until the element locator appears on the current page
Wait Until Page Does Not Contain – Waits until the text disappears from the current page
Wait Until Page Does Not Contain Element – Waits until the element locator disappears from the current page
Wait Until Location Is – Waits until the current URL is expected
Wait Until Location Is Not – Waits until the current URL is not location
Wait Until Location Contains – Waits until the current URL contains expected
Wait Until Location Does Not Contain – Waits until the current URL does not contain the location
Wait Until Element Contains – Waits until the element locator contains text
Wait Until Element Does Not Contain – Waits until the element locator does not contain text
Wait Until Element Is Enabled – Waits until the element locator is enabled
Wait Until Element Is Not Visible – Waits until the element locator is not visible
Wait Until Element Is Visible – Waits until the element locator is visible

*/
