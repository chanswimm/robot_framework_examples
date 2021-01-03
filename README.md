# Robot Framework examples
(Hope it's useful!)

## Suite/Test Setup and Teardown
###### Suite Setup
Keywords to be executed **before** the test suites are run
(Note: if a variable depends on a keyword in suite setup, it won't be able to assign the variable - would result in error)
When to use Suite Setup:
- Opening application
- Opening browser
- User login

###### Test Setup
Keywords to be executed before **each** test case is run in a test suite
When to use Test Setup:
- Generate random variables

###### Teardown
Keywords to be executed after tests are run

## Library/Resource
Robot framework supports user defined Python libraries
To include library in robot file:
```
Library   ../path/python_library.py
Library   SeleniumLibrary
```

To include resource files that includes global keywords:
```
Resource    ../path/resource_file.robot
```

## Variables
##### Global variables
(Tip: store all global variables in a separate file (e.g. resource.robot) so it is accessible to all test suites)
```
${global_variable}    10
Set Global Variable   ${global_variable}
```

###### Arrays
```
@{array_name}   item_1    item_2    item_3
```

###### Double Arrays
```
@{array_1}        item_1        item_2        item_3
@{array_2}        item_a        item_b        item_c
@{double_array}   ${array_1}    ${array_2}
```

###### Change variable within a test case
Use keyword `Set Test Variable` from [BuiltIn Library](http://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Set%20Test%20Variable)
```
# Change (an existing) Variable value from 5 to 10
${Variable}   Set Test Variable   10

# Create new variable ${new_var} within the test case
Set Test Variable   ${new_var}    10
```

###### Assign value to variable from return value (after calling function) or getting a text from Web UI
```
# Python function getUsername()
${username}         getUsername

# Get Text from Web UI (locator)
${message_on_web}   Get Text    xpath://...
```

## Useful Keywords from SeleniumLibrary and BuiltIn
###### Run Keyword If
