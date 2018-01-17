*** Settings ***
Documentation  Trainning to organize better test cases
Resource  ../Resources/AmazonApp.robot  # necessary for lower level keywords
Resource  ../Resources/Common.robot  # necessary for common keywords

Test Setup  Common.Begin Web Test  ${BROWSER}
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER}  chrome
${SEARCH}  Ferrari 458
${LOGIN_EMAIL_INVALID}  test@qa.com
${LOGIN_PASSWORD_INVALID}  testqa

*** Test Cases ***
El usuario debe ser capaz de logueare después de seleccionar un produci
    [Documentation]  Login
    [Tags]  current
    AmazonApp.Search for results  ${SEARCH}
    AmazonApp.Select product from search results
    AmazonApp.Add product to cart
    AmazonApp.Begin Checkout
    AmazonAPP.Login wih invalid credentials  ${LOGIN_EMAIL_INVALID}  ${LOGIN_PASSWORD_INVALID}

*** Keywords ***
