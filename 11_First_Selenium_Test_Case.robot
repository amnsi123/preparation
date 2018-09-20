*** Settings ***
Library    Selenium2Library

*** TestCases ***
Open Simple Website
    Open Browser    http://www.google.co.in    edge
    Maximize Browser Window
    ${title}=    Get Title
    Log To Console    Page title=${title}
    Should Be Equal As Strings    ${title}    Google
    Run Keyword And Continue On Failure    Wait Until Page Contains Element    name=btnK    5    GOOGLE SEARCH button not present
    Input Text    name=q    cricket
    Press Key    name=q    \\13
    Sleep    5
    Close Browser
      