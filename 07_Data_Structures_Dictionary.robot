*** Settings ***
Library    Collections


*** TestCases ***
Create Simple Dictionary
    ${dic}=    Create Dictionary    a=1    b=2    c=3
    Log To Console    My Dictionary=${dic}
    
Get Particular Value From Dictionary
    ${dic}=    Create Dictionary    a=1    b=2
    ${value}=    Get From Dictionary    ${dic}    a
    Log To Console    Value=${value}
    
Remove An Entry From Dictionary
    ${dic}=    Create Dictionary    a=1    b=2    c=3
    Remove From Dictionary    ${dic}    a
    Log To Console    New dictioanry=${dic}
    
Update An Entry In Dictionary
    ${dic}=    Create dictionary    a=1    b=2
    Set To Dictionary    ${dic}    a=8
    Set To Dictionary    ${dic}    c=9
    Log To Console    New dictionary=${dic}