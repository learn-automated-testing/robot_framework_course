*** Settings ***
Library           SeleniumLibrary
Test Template     Click On URL And Log

*** Variables ***
${BROWSER}        Chrome

*** Test Cases ***                          URL
Open And Log First Page                    https://learnautomatedtesting.com/blog/
Open And Log Second Page                   https://learnautomatedtesting.com/course /
Open And Log Third Page                    https://learnautomatedtesting.com/contact/
# Add more URLs as needed

*** Keywords ***
Open Browser To URL
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Click On URL And Log
    [Arguments]    ${URL}
    Open Browser To URL    ${URL}
    Log    Clicked on ${URL}
    Close Browser
