*** Settings ***
Library  Collections    
Library    OperatingSystem    
Library     JSONLibrary    


*** Test Cases ***
Tsetcase1
    ${json_variablre}=     Load JSON From File    D:/yogesha/login_bed.json
    ${First_name}      Get Value From Json     ${json_variablre}     $.firstName
     Log To Console    ${First_name}    
    