*** Settings ***
Library        SeleniumLibrary
Library        BuiltIn

*** Variables ***

*** Keywords ***
# Headless Chrome Browser
Open Chrome
    [Arguments]   ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chromeOptions}     add_argument    --window-size\=2000,1400
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${url}

Open Application
    Open Chrome
    Input Username              ${username}
    Input Password              ${password}
    Submit Credentials
