*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${BROWSER}        Chrome
${HEADLESS}       ${FALSE}

*** Test Cases ***
Open Google Homepage
    ${BROWSER_OPTIONS}=    Run Keyword If    '${HEADLESS}' == 'True'    Set Variable    headlesschrome    ELSE    Set Variable    ${BROWSER}
    Open Browser    https://www.google.com    ${BROWSER_OPTIONS}
    Title Should Be    Google
    Close Browser

