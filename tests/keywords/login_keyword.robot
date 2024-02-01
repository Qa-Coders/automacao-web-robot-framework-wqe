*** Settings ***
Variables    ../data/environments.yaml
Resource    ../../resources/get_file_name_keywords.robot
Library      Collections
Library      SeleniumLibrary
Library      Process

*** Variables ***
${script_path}    ../get_exist_elements.py
${keyword_file_path}    ./

*** Keywords ***
Fechar o navegador
    [Documentation]  Fecha o navegador aberto durante os testes.
    Close Browser

*** Keywords ***
Dado que eu acesso o sistema
    [Documentation]  Executa o navegador de acordo com o ambiente selecionado.
    [Arguments]    ${env}
    Get File Name
    ${environment}=    Set Variable    ${environments}[${env}]
    Run Keyword If    "${environment}" != "None"    Open Browser    ${environment['server']}${environment['endpoint']}

*** Keywords ***
Quando informo os dados de acesso
    [Documentation]  Obtém os seletores de usuário e senha.
    [Arguments]    ${env}
    ${environment}=    Set Variable    ${environments}[${env}]
    Run Keyword If    "${environment}" != "None"    Open Browser    ${environment['server']}${environment['endpoint']}

    ${username_selector}=    Get Exist Elements    ${keyword_file_path}    ${login.username.${env}.seletor}
    ${password_selector}=    Get Exist Elements    ${keyword_file_path}    ${login.password.${env}.seletor}

*** Keywords ***
Get Exist Elements
    [Arguments]    ${file_path}    ${variable_name}
    ${output}=    Run Process    python    ${script_path}    ${file_path}    ${variable_name}    stdout=PIPE    stderr=PIPE
    Log    Output: ${output.stdout.strip()}
    [Return]    ${output.stdout.strip()}

*** Keywords ***
Após a execução dos testes
    [Documentation]  Passo para fechar o navegador após a execução dos testes.
    Close Browser