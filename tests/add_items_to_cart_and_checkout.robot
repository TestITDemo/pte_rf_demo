*** Settings ***
Documentation    Test for adding items to the shopping cart and checkout on SwagLabs
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Perform Login
    [Arguments]    ${username}    ${password}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    ${USERNAME_XPATH}    ${username}
    Input Text    ${PASSWORD_XPATH}    ${password}
    Click Element    ${LOGIN_BUTTON_XPATH}

Add Item To Cart
    [Arguments]    ${add_button_xpath}    ${remove_button_xpath}
    Click Element    ${add_button_xpath}
    Page Should Contain Element    ${remove_button_xpath}

Click And Verify
    [Arguments]    ${button_xpath}    ${title_xpath}    ${expected_title}
    Click Element    ${button_xpath}
    Page Should Contain Element    ${title_xpath}
    Element Should Contain    ${title_xpath}    ${expected_title}

Fill The Checkout Form
    [Arguments]    ${first_name}    ${last_name}    ${postal_code}
    Input Text    ${FIRST_NAME_INPUT_XPATH}    ${first_name}
    Input Text    ${LAST_NAME_INPUT_XPATH}    ${last_name}
    Input Text    ${POSTAL_CODE_INPUT_XPATH}    ${postal_code}

*** Test Cases ***
Add Items To Cart And Checkout
    Perform Login    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Item To Cart    ${ADD_BACKPACK_BUTTON_XPATH}    ${REMOVE_BACKPACK_BUTTON_XPATH}
    Add Item To Cart    ${ADD_JACKET_BUTTON_XPATH}    ${REMOVE_JACKET_BUTTON_XPATH}
    Click And Verify    ${SHOPPING_CART_XPATH}    ${TITLE_ELEMENT_XPATH}    Your Cart
    Click And Verify    ${CHECKOUT_BUTTON_XPATH}    ${TITLE_ELEMENT_XPATH}    Checkout: Your Information
    Fill The Checkout Form    Lajos    Kiss    1234
    Click And Verify    ${CONTINUE_BUTTON_XPATH}    ${TITLE_ELEMENT_XPATH}    Checkout: Overview
    Click And Verify    ${FINISH_BUTTON_XPATH}    ${TITLE_ELEMENT_XPATH}    Checkout: Complete!
    Page Should Contain    Thank you for your order!
    [Teardown]    Close Browser