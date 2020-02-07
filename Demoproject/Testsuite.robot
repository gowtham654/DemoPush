*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary

*** Variables ***
${val}            5

*** Test Cases ***
TC01
    Should Be Equal As Integers    5    5

TC02
    Should Be Equal As Integers    5    5
