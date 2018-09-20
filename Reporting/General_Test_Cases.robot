*** Settings ***
Force Tags    Dummy
# Library    Selenium2Library    run_on_failure=Capture Page Screenshot
Library    Selenium2Library    run_on_failure=Activities On Failure

*** Test Cases ***
First test case
    [Tags]    Smoke
    Log To Console    One
    
Second test case
    [Tags]    Smoke    Regression
    Log To Console    Two
    
Third test case
    [Tags]    Regression
    Log To Console    Three
    
Fourth test case
    Log To Console    Four
    
Selenium test case
    Open Browser    http://www.google.co.in    ${browser}
    # Open Browser    http://www.google.co.in    ff
    Run Keyword And Continue On Failure    Wait Until Page Contains Element    xpath=//span[contains(text(),'My Accountgfhjhjhj')]    5
    Input Text    name=q    cricket
    Press Key    name=q    \\13
    Sleep    5 
    Input Text    name=qhkjkjkj    cricket
    [Teardown]    Close Browser
    

*** Keywords ***
Activities On Failure
        Capture Page Screenshot    ${CURDIR}/Screenshots/${TEST NAME}_{index}.jpg