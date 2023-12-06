*** Settings ***
Documentation    testing login func of SwalgLabs
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_XPATH}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_XPATH}    ${password}

Submit Credentials
    Click Element    ${LOGIN_BUTTON_XPATH}

*** Test Cases ***
Positive Login Test
    Open Browser To Login Page
    Input Username    ${VALID_USERNAME}
    Input Password    ${VALID_PASSWORD}
    Submit Credentials
    Page Should Contain Element    ${SUCCESS_INDICATOR_XPATH}
    [Teardown]    Close Browser

Negative Login Test
    Open Browser To Login Page
    Input Username    ${VALID_USERNAME}
    Input Password    ${INVALID_PASSWORD}
    Submit Credentials
    Page Should Not Contain Element    ${SUCCESS_INDICATOR_XPATH}
    [Teardown]    Close Browser
    