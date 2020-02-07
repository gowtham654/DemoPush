*** Settings ***
Library  SeleniumLibrary   
Library  DatabaseLibrary
Library    Collections        

*** Test Cases ***
MyfirstTestcase
    Log  helloworld.
    
First Selenium TestCase
    Open Browser    https://livetest.greythr.com/     chrome 
    Maximize Browser Window
    
MyFirstloginTest
    Open Browser    ${URL}     chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=username    &{Variable}[username]  
    Input Password    id=password    &{Variable}[password]  
    Click Button     //button[@class='btn btn-primary btn-block mt-1'] 
    Click Element    //a[.=' Sign Out ']       
    Close Browser

*** Variables ***
${URL}     https://livetest.greythr.com/
@{Username_Password}     majordomo     sa
&{Variable}     username=majordomo     password=sa
