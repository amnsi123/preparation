*** Settings ***


*** Test Cases ***
Printing HELLO WORLD on console
    Log To Console    Hello World!!!
    #This is a comment
    
Failing test case
    Wrong Keyword    This will never get printed
    
Another test case
    Log To Console    Second test case...
    


*** Keywords ***


*** Variables ***
