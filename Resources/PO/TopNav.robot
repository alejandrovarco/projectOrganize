*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOP-NAV_SEARCH_BAR} =         id=twotabsearchtextbox
${TOP-NAV_SEARCH_BUTTON} =      xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Serch for products
    [Arguments]  ${SEARCH}
    Enter Search Term  ${SEARCH}
    Submit Search

Enter Search Term
    [Arguments]  ${SEARCH}
    input text  ${TOP-NAV_SEARCH_BAR}  ${SEARCH}

Submit Search
    click button  ${TOP-NAV_SEARCH_BUTTON}