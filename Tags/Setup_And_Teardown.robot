*** Settings ***
Test Setup    Log To Console    Setting up test case
Test Teardown    Teardown Script

Suite Setup    Log To Console    Setting up suite
Suite Teardown    Log To Console    Teardown this suite



*** Test Cases ***

First test case
    Log To Console    One
    
Second test case
    Log To Console    Two
*
Understanding Setup and Teardown
    [Setup]    Log To Console    Nokia
    Lot To Console    Samsung
    [Teardown]    Run Keywords
    ...    Log To Console    Amy
    ...    AND
    ...    Log To Console    Samy
    
*** Keywords ***
Teardown Script
    Log To Console    Nike
    Log To Console    Reebok    
    




    