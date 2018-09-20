*** Settings ***
Library    Selenium2Library
Library    Custom_Selenium_Library_Using_Python.py

*** Test Cases ***
Google search
    Selenium2Library.Open Browser    http://www.google.co.in    gc
    Perform Search    q    cricket
    Close Browser
    