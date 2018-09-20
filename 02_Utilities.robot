*** Keywords ***
Print Statement
    Log To Console    It's fun to learn RF!
    
Print Age
    [Arguments]    ${name}    ${age}
    Log To Console    Age of ${name} is ${age}
    
Get Age
    ${age}=    Set Variable    25
    [Return]    ${age}
    
Get Sum
    [Arguments]    ${num1}    ${num2}
    ${sum}=    Evaluate    ${num1}+${num2}
    [Return]    ${sum}
   
*** Variables ***
${dummy}    wow
