# Note that keyword 'Open Chrome' is located in resource.robot file

*** Settings ***
Library           SeleniumLibrary
Resource          resource.robot
Suite Teardown    Close All Browsers

*** Variables ***
${username}       hello
${password}       123!@#
${url}            https://go_to_this_website

*** Test Cases ***
Simple Login
    Open Chrome         ${url}
    Input Username      ${username}
    Input Password      ${password}
    Submit Credentials
    Title Should Be     Main Page

*** Keywords ***
Input Username
    [Arguments]         ${username}
    Input Text          id:username

Input Password
    [Arguments]         ${password}
    Input Text          id:password

Submit Credentials
    Click Button        id:submit
