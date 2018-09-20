*** Variables ***
#Scalar variable
${var}    2
#List variable
@{credentials}    amy    amy@123
#Dictionary variable
&{login}    username=amy    password=amy@123

*** Test Cases ***
Accessing variables
    Log To Console    ${var}
    Log To Console    Username=@{credentials}[0] and Password=@{credentials}[1]
    Log To Console    Username=&{login}[username] and password=&{login}[password]
    
Create Simple List
    @{myList}=    Create List    1    2    3    4    5
    Log To Console    List=@{myList}
    Log To Console    Value at 2nd index=@{myList}[2]
    
Create Simple Dictionary
    &{dic}=    Create Dictionary    a=1    b=2    c=3
    Log To Console    My Dictionary=&{dic}
    Log To Console    Value corressponding to 1st key=&{dic}[a]
   
Accessing environment variables
    Log To Console    %{username} has run this test case on %{os} machine
    
Accessing Builtin variables
    Log To Console    Current directory=${CURDIR}
    Log To Console    Current test case name=${TEST NAME}
    

