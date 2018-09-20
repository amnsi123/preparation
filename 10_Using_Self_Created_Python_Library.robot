*** Settings ***
Library    My_Keywords.py
Variables    My_Keywords.py

*** Test Cases ***
Adding 2 numbers
    ${sum}=    Sum Of Numbers    2    3
    Log To Console    Sum=${sum}
    
Multiplying 2 numbers
    ${prod}=    Multiplication Of Numbers    2    3
    Log To Console    Product=${prod}
    
Getting Variable Value From Python File
    Log To Console    Variable value=${TIMEOUT}