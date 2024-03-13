*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Homepage And Verify Title
    [Arguments]    ${url}    ${expected_title}
    Open Browser    ${url}    Chrome
    Title Should Be    ${expected_title}
    Close Browser

*** Test Cases ***
Verify Google Homepage
    Open Homepage And Verify Title    https://www.google.com    Google

Verify Robot Framework Homepage
    Open Homepage And Verify Title    https://learnautomatedtesting.com    Learn Testing
