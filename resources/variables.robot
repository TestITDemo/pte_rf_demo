*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.saucedemo.com/
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INVALID_PASSWORD}    12345
${USERNAME_XPATH}    //input[@id='user-name']
${PASSWORD_XPATH}    //input[@id='password']
${LOGIN_BUTTON_XPATH}    //input[@id='login-button']
${SUCCESS_INDICATOR_XPATH}    //div[@id='shopping_cart_container']/a[1]

${ADD_BACKPACK_BUTTON_XPATH}    //button[@id='add-to-cart-sauce-labs-backpack']
${REMOVE_BACKPACK_BUTTON_XPATH}    //button[@id='remove-sauce-labs-backpack']
${ADD_JACKET_BUTTON_XPATH}    //button[@id='add-to-cart-sauce-labs-fleece-jacket']
${REMOVE_JACKET_BUTTON_XPATH}    //button[@id='remove-sauce-labs-fleece-jacket']
${SHOPPING_CART_XPATH}    css=.shopping_cart_link
${TITLE_ELEMENT_XPATH}    //span[@class='title']

${CHECKOUT_BUTTON_XPATH}    //button[@id='checkout']
${FIRST_NAME_INPUT_XPATH}    //input[@id='first-name']
${LAST_NAME_INPUT_XPATH}    //input[@id='last-name']
${POSTAL_CODE_INPUT_XPATH}    //input[@id='postal-code']
${CONTINUE_BUTTON_XPATH}    //input[@id='continue']
${FINISH_BUTTON_XPATH}    //button[@id='finish']