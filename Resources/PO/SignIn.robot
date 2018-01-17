*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGN-IN_MAIN_HEADING} =       xpath = //h1
${SIGN-IN_USERNAME_FIELD} =     id=ap_email
${SIGN-IN_PASSWORD_FIELD} =     id=ap_password

*** Keywords ***
Verify page loaded
    The page is loaded
    The page contains Sign in

The page is loaded
    Page Should Contain Element  ${SIGN-IN_MAIN_HEADING}

The page contains Sign in
    element text should be  ${SIGN-IN_MAIN_HEADING}  Sign in

Login wih invalid credentials
    [Arguments]  ${LOGIN_EMAIL_INVALID}  ${LOGIN_PASSWORD_INVALID}
    Fill username field  ${LOGIN_EMAIL_INVALID}
    Fill password field  ${LOGIN_PASSWORD_INVALID}

Fill username field
    [Arguments]  ${LOGIN_EMAIL_INVALID}
    input text  ${SIGN-IN_USERNAME_FIELD}  ${LOGIN_EMAIL_INVALID}

Fill password field
    [Arguments]  ${LOGIN_PASSWORD_INVALID}
    input password  ${SIGN-IN_PASSWORD_FIELD}  ${LOGIN_PASSWORD_INVALID}
    sleep  3s