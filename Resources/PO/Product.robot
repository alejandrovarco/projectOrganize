*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify page loaded
    wait until page contains  Back to search results

Add to shopping cart
    click button  id=add-to-cart-button