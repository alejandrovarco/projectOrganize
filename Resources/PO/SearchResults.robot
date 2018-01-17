*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify search completed
    wait until page contains  results for

Click product link
    [Documentation]  Always click in the first product.
    click link  css=#result_0 a.s-access-detail-page