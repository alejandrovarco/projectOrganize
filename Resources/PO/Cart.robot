*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify product was added
    wait until page contains  Added to Cart

Go to the checkout
    Click Link  id=hlb-ptc-btn-native