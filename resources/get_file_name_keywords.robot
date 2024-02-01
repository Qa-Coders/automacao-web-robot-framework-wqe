*** Settings ***
Library    OperatingSystem
Library    Process
Library    get_exist_elements.py

*** Variables ***
${file_name}    ${EMPTY}
${file}        ${EMPTY}

*** Keywords ***
Get File Name
    ${name_file}    Set Variable    ${SUITE_NAME}
    ${name}         Set Variable    ${name_file}[13:]
    ${file}         Set Variable    ${name.lower()}_elements.yaml
    ${file_name}    Set Variable    ${file}
    Set_Global_Variable    ${file_name}
    Log To Console   ${file_name}
    Set_File_Name_Variable    ${file_name}