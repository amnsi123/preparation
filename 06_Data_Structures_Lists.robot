*** Settings ***
Library    Collections


*** Testcases ***
Create Simple List
    ${myList}=    Create List    1    2    3    4    5
    Log To Console    List=${myList}
    
Get Particular Value From List By Index
    ${myList}=    Create List    1    2    3    4    5
    ${value1}=    Get From List    ${myList}    2
    ${value2}=    Get From List    ${myList}    -2
    Log To Console    Positive index value=${value1}
    Log To Console    Negative index value=${value2}
    
    
Append Values To List
    ${myList}=    Create List    1    2    3    4    5
    Append To List    ${myList}    6    7    8
    Log To Console    New list=${myList}
    
Remove Values From List By Index Or Values
    ${myList}=    Create List    1    2    3    4    5
    #Removing list entries based on index
    Remove From List	${myList}	1
    Log To Console    New List1=${myList}
    #Removing list entries based on values
    Remove Values From List    ${myList}    5    4
    Log To Console    New List2=${myList}

Looping Through The List
	${myList}=    Create List    1    2    3    4    5
	:FOR    ${value}    IN    @{myList}
	\    Log To Console    Value=${value}   
    
            