*** Settings ***


*** Testcases ***
Understanding FOR Loop
    :FOR    ${number}    IN RANGE    1    11
    \    Log To Console    Loop#:${number}
    \    ${temp}=    Evaluate    ${number}*${number}
    \    Log To Console    ${temp}

#Analogous of BREAK
Exiting FOR Loop
    :FOR    ${number}    IN RANGE    1    11
    \    Log To Console    Loop#:${number}
    # \    Run Keyword If    '${number}'=='3'    Exit For Loop
    \    Exit For Loop If    '${number}'=='3'

#Analogous of CONTINUE
Skipping FOR Loop
    :FOR    ${number}    IN RANGE    1    11
    \    Continue For Loop If    '${number}'=='3'
    \    Log To Console    Loop#":${number}