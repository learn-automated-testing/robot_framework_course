*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Homepage
    Open Browser    https://www.google.com    Chrome
    Title Should Be    Google
    Close Browser

