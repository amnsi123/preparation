*** Settings ***
Force Tags    Dummy

*** Test Cases ***
First test case
    [Tags]    smoke    regression
    Log To Console    First test case
    
Second test case
    [Tags]    regression
    Log To Console    Second Test case  
    
#Below command is executed in command prompt to distinguish between critical and non-critical tests in RF report  
#pybot --critical smoke Force_Tags.robot
    
# Below command is used to include or exclude certain tests based on their tags:
# pybot --include smoke --exclude Dummy Force_Tags.robot 