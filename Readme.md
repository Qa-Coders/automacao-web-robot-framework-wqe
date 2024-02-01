# Projeto de automação web com robot framework
Projeto de automação web do workshop de Quality Engineer - QE

## Pré requisitos:
- Python 3.12.1
- IDE VSCODE / Ou outra de sua preferência.

### Link de downloads
- Python - https://www.python.org/
- VSCODE - https://code.visualstudio.com/download

### Documentação
- Robot - https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Click%20Button

### 01 Extensions VSCODE
- Robot Framework Language Server
- Robot Framework Support
- Robot Framework Formatter
- Vscode Ico
- Robot Framework Intellisense
- Python
- Material Icon Them

## 02 Instalação:

``` bash
    pip install robotframework
    pip install --upgrade robotframework
    pip install robotframework
    pip install robotframework-yamllibrary
    pip install robotframework-seleniumlibrary
    pip install PyYAML
```
Ou você pode instalar todas as dependencias dos projeto executado o comando. Lembre-se de estar no dirótio raiz do projeto onde se encontra o arquivo.

```bash
pip install -r requirements.txt
```

### 03 Instale o Virtual .venv
Python ambientes virtuais permitem que pacotes Python sejam instalados em um local isolado para um sistema ou aplicativo específico, em vez de instalando todos os pacotes no mesmo local global. Eles têm dois casos de uso principais:

Instale os pacotes necessários para diferentes projetos em seus próprios ambientes. Isto evita conflitos se os projetos precisarem de versões diferentes dos mesmos pacotes.
Evite instalar tudo na instalação global do Python. Isso é especialmente importante no Linux, onde a instalação global do Python pode ser usado pela própria distribuição e bagunçá-la pode causar problemas graves.

```bash
pip install virtualenv
```

Crie um diretório para o projeto acesso pelo prompt de comando e digite o código abaixo para criar a estrutura do virtual env. Ambiente virtual do Robot

```bash
virtualenv venv
```
### 04 Estrutura do projeto

```bash
robot_automation_project/
|-- tests/
|   |-- commum
|   |-- |-- login_tests.robot
|   |-- cliente01
|   |-- cliente02
|-- resources/
|   |-- commum
|   |-- |-- keywords.robot
|   |-- cliente01
|   |-- |-- keywords.robot
|   |-- cliente02
|-- data/
|   |-- environments.yaml
|-- run_tests.py
```

### 05 Arquivo run_test.py
Na pasta tests, o arquivo run_tests.py, é o arquivo de configuração onde está a lógica para gerenciar os ambientes de teste. Assim é possivel executar o projeto em qualquer ambiente.

### 06 Arquivo environments.yaml
Para adicionar novos ambientes no projeto, basta adicionar o ambiente desejado no arquivo, [data/environments.yaml]. Mantendo a estrutura de exemplo abaixo. Lembre de nunca altearar a estrutura do arquivo e nem as urls que não fazem parte do seu escopo.

```bash
    environments:
    default:
        server: https://default.programarte.com.br
        endpoint: /endpoint01
    ambiente02:
        server: https://ambiente02.programarte.com.br
        endpoint: /endpoint02
    ambiente03:
        server: informe a url do seu ambiente
        endpoint: /informe o endpoint do ambiente
```

### 07 Entendendo a sintaxe run_tests.py
A sintaxe "run_test.py" executa o arquivo [run_test.py], [-d ../results], determina a pasta onde será gerado o report, [qa214] determina o ambiente. Para executar em um ambiente diferente, basta informa o ambiente desejado conforme configurado no aquivo de [environments.yaml].


### 07.1 Execução do projeto no ambiente default
Desta forma ao executar o projeto de automação sempre será executado no ambiente default [qa214]
```bash
 python run_tests.py
```

### 07.2 Execução do projeto selecionando um ambiente
Em ENVIRONMENT, informe o ambiente de acordo com o especificado no aquivo [data/environments.yaml] do passo 07. Por padrão conforme passo [08.1] os ambientes são executados na url default.

```bash
 python run_tests.py  --env qa216

```

O projeto deve ser sempre atualizado seguindo as boas praticas conforme recomendações da própria comunidade Robot Framework.

### 8 .gitignore
O aquivo [.gitignore] está configurado para não permitir o versionamentos dos reports e nem dos aquivos do ambiente virtual, por isso é importante instalar o ambiente virtual e os arquivos de configuração do vscode.

### 9 Sobre o autor
Nome: William Alves da Silva;
Especialista em Qualidade de Software e Arquiteto de Soluções.
Empresa: Qa.Coders Especialista em Qualidade de Software.