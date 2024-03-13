*** Settings ***
Library    String

*** Test Cases ***
Example Test With String
    [Documentation]    A simple test case to demonstrate handling a string.
    ${example_string}=    Set Variable    example text
    Log    ${example_string}
    Should Be Equal As Strings    ${example_string}    example text