
*** Test Cases ***
Failing test case
    Fail    This test case has failed
Dependant test case
	Run Keyword If	'${PREV TEST STATUS}'=='PASS'	Run Keywords
	...	Log To Console	Statement#1
	...	AND	Log To Console	Statement#2
	...	AND	Log To Console	Statement#3
	...	ELSE	FAIL	Skipping this test case as the TC(on which this TC is dependant) has failed
	
    