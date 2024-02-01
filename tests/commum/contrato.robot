*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/contrato_keywords.robot
Variables       ../../data/elements/login_elements.yaml
Library         Collections
Library         SeleniumLibrary

*** Test Cases ***
Criar um novo contrato
    Dado que eu crie um contrato de serviço