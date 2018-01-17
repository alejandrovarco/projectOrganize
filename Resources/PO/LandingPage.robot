*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    Go to  http://www.amazon.com

Veriffy page loaded
    wait until page contains  Your Amazon.com