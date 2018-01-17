*** Settings ***
Documentation  This contains the common seps for all tests
Resource  ../Resources/PO/Cart.robot            # necessary for lower keywords of the Cart
Resource  ../Resources/PO/LandingPage.robot     # necessary for lower keywords of the LandingPage
Resource  ../Resources/PO/Product.robot         # necessary for lower keywords of the Product
Resource  ../Resources/PO/SearchResults.robot   # necessary for lower keywords of the SearchResults
Resource  ../Resources/PO/SignIn.robot          # necessary for lower keywords of the SignIn
Resource  ../Resources/PO/TopNav.robot          # necessary for lower keywords of the TopNav

*** Variables ***



*** Keywords ***
Search for results
    [Arguments]  ${SEARCH}
    LandingPage.Load
    LandingPage.Veriffy page loaded
    TopNav.Serch for products  ${SEARCH}
    SearchResults.Verify search completed

Select product from search results
    SearchResults.Click product link
    Product.Verify page loaded

Add product to cart
    Product.Add to shopping cart
    Cart.Verify product was added

Begin Checkout
    Cart.Go to the checkout
    SignIn.Verify page loaded

Login wih invalid credentials
    [Arguments]  ${LOGIN_EMAIL_INVALID}  ${LOGIN_PASSWORD_INVALID}
    SignIn.Login wih invalid credentials  ${LOGIN_EMAIL_INVALID}  ${LOGIN_PASSWORD_INVALID}