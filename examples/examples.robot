*** Settings ***
Library           SeleniumLibrary
Library           python_library_filename.py

*** Varaibles ***
${condition}      true

*** Test Cases ***
Assign a value from a returned python function
    # See sample_python_library.py file to define robot keywords
    ${returned_value}       Keyword in Python Library

Pass in robot variables to python function
    Keyword in Python Library       ${argument_1}     ${argument_2}

Using Run Keyword If
    Run Keyword If      '${condition}' == 'true'      Do This if True
    Run Keyword If      '${condition}' == 'false'     Do This if False



*** Keywords ***
Do This if True
    Click Button        id:true

Do This if False
    Click Button        id:false
