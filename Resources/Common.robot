*** Settings ***
Documentation  This contains the common seps for all tests
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Begin Web Test
    [Arguments]  ${BROWSER}
    open browser  http://www.amazon.com  ${BROWSER}

End Web Test
    close browser
