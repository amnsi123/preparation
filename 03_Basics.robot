*** Settings ***
Resource    02_Utilities.robot


*** Test Cases ***
Printing something to console
    Print Statement
    Log To Console    ${dummy}
   
Printing age of specific person
    Print Age    ${name}    ${age}
    
Printing age once again
    ${required_age}=    Get Age
    Log To Console    Required age=${required_age}
    
Adding two numbers
    ${sum}=    Get Sum    2    3
    Log To Console    Sum of two numbers=${sum}



*** Variables ***
${name}=    Amneet
${age}    31 