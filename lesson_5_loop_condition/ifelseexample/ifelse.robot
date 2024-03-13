*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Check Aboutus And Navigate
    ${aboutUsExist}=  Run Keyword And Return Status  Element Should Be Visible  css=[href$="/about-us/"]
    Run Keyword If  ${aboutUsExist}
    ...  Click About Us
    ...  ELSE  Change Language To Dutch And Go To Over Ons

Click About Us
    # Click on the "About Us" link
    Click Element  css=[href$="/about-us/"]  # Make sure this selector matches the "About Us" link

Change Language To Dutch And Go To Over Ons
    Go To  "https://www.learnautomatedtesting.com/nl"
    # Assuming the URL directly changes the language and navigates to the Dutch version of "About Us"
    Click Element  css=[href$="/nl/about-us/"]  # Ensure this selector is correct for the Dutch "About Us" link

*** Test Cases ***
Aboutus Check And Action
    Open Browser  https://www.learnautomatedtesting.com  Chrome
    Maximize Browser Window
    Check Aboutus And Navigate
    Close Browser
