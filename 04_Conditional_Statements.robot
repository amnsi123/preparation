*** Test Cases ***
Validating if-else
    ${var}=    Set Variable    200
    Run Keyword If    '${var}'=='20'    Log To Console    Pass
    ...    ELSE    Log To Console    Fail
    
    
Validating FAIL keyword using if-else
    ${var}=    Set Variable    200
    Run Keyword If    '${var}'=='20'    Log To Console    Pass
    ...    ELSE    Fail    This test case has failed



Validating if-else-if ladder(nested if-else)
    ${var}=    Set Variable    20
    Run Keyword If    '${var}'<'20'    Log To Console    Lesser than
    ...    ELSE IF    '${var}'>'20'    Log To Console    Greater than
    ...    ELSE    Log To Console    Equal
    
Validating if-else blocks
    ${var}=    Set Variable    1
    Run Keyword If    '${var}'=='2'
    ...    Run Keywords
    ...    Log To Console    Wow!
    ...    AND    Log To Console    Wow again!
    ...    ELSE
    ...    Run Keywords
    ...    Log To Console    Bad!
    ...    AND    Log To Console    Bad again!