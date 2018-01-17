*** Settings ***
Documentation  Trainning to organize better test cases
Resource  ../../Resources/AmazonApp.robot  # necessary for lower level keywords
Resource  ../../Resources/Common.robot  # necessary for common keywords
Library  Dialogs

Test Setup  Common.Begin Web Test  ${BROWSER}
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER}  chrome
${SEARCH}  Ferrari 458
${LOGIN_EMAIL_INVALID}  test@qa.com
${LOGIN_PASSWORD_INVALID}  testqa

*** Test Cases ***
User should be able to select the browser
    [Tags]  Web
    ${new_browser} =  get selection from user  Which browser?  chrome  firefox  IE
    set global variable  ${BROWSER}  ${new_browser}
    log  ${new_browser}
    AmazonApp.Search for results  ${SEARCH}

User sould be able to do cancel the test case
    [Tags]  Web
    AmazonApp.Search for results  ${SEARCH}
    Execute Manual Step  Do something manually  It failed!

User sould be able to stop the test case
    [Tags]  Web
    AmazonApp.Search for results  ${SEARCH}
    Pause execution
    AmazonApp.Select product from search results

User sould be able to add values
    [Tags]  Web1
    AmazonApp.Search for results  ${SEARCH}
    ${username} =  Get Value From User	Input user name  default
    ${password} =  Get Value From User	Input user name  hidden=yes
    Log  ${username}
    Log  ${password}