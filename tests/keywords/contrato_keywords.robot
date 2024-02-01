*** Settings ***
Resource    ../../resources/get_file_name_keywords.robot
Resource    ./login_keywords.robot
Library      Collections
Library      SeleniumLibrary

*** Keywords ***
Dado que eu crie um contrato de serviço
    Dado que eu acesso o sistema     ${ENVIRONMENT}