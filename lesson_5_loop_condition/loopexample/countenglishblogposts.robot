*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.learnautomatedtesting.com/blog/

*** Test Cases ***
Count Blog Posts Using For Loop
    Open Browser  ${URL}  Chrome
    ${elements}=  Get Webelements  css=[class^='blog-post-item']
    ${count}=  Set Variable  0
    FOR  ${element}  IN  @{elements}
        ${count}=  Evaluate  ${count}+1
    END
    Log  Total number of blog posts found using for loop: ${count}
    Should Be True  ${count} >= 20  msg=Found only ${count} blog posts using for loop, but expected at least 20.
    Close Browser
