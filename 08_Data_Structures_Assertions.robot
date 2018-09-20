*** Settings ***
Library    Collections

*** TestCases ***
Verifying that a list is not empty
    ${myList}=    Create List    1    2    3    4    5
    Should Not Be Empty    ${myList}
    # Should Be Empty    ${myList}

Verifying that list contains a particular value
    ${myList}=    Create List    1    2    3    4    5
    List Should Contain Value    ${myList}    3
    
Verifying that dictionary contains a particular entry
    ${dic}=    Create Dictionary    a=1    b=2
    Dictionary Should Contain Item    ${dic}    a    1
    # Dictionary Should Contain Item    ${dic}    b    99
    
