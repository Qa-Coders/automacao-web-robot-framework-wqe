*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/login_keywords.robot
Variables       ../../data/elements/login_elements.yaml
Library         Collections
Library         SeleniumLibrary
# Test Setup      Get and Set File Name

*** Test Cases ***
Efetuar login com sucesso
    Dado que eu acesso o sistema  ${ENVIRONMENT}
    Quando informo os dados de acesso    ${env}
    [Teardown]    Após a execução dos testes