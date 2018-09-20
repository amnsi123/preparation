*** Settings ***
Library    Selenium2Library
Resource    Locators.robot


*** TestCases ***
Login To Flipkart
    Open Browser    https://www.flipkart.com    ff
    Maximize Browser Window
    Run Keyword And Continue On Failure    Wait Until Page Contains Element    ${username_textbox}    5    Login form not getting displayed even after 5s
    Input Text    ${username_textbox}    dummy_username
    Input Text    ${password_textbox}    dummy_password
    Click Element    ${submit_button}
    Run Keyword And Continue On Failure    Wait Until Page Contains Element    ${my_account_label}    10    Login unsuccessful even after 10s
    Close Browser
    