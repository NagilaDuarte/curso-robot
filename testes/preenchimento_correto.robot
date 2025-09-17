*** Settings ***
# Este arquivo importa recursos compartilhados para os testes de preenchimento.
Resource       ../resources/main.robot

# O 'Test Setup' executa uma palavra-chave para abrir a aplicação antes de cada teste.
Test Setup     Dado que eu acesse o Organo
# O 'Test Teardown' garante que o navegador seja fechado após cada teste,
# limpando o ambiente de execução..
Test Teardown  Fechar o navegador

*** Test Cases ***
# Este teste valida se o sistema cria um card quando todos os campos são preenchidos corretamente.
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na tela
    Dado que preencha os campos do formulario
    E clique no botao de criar card
    Então identificar o card no time esperado

# Este teste valida se o sistema permite a criação de múltiplos cards.
Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    E clique no botao de criar card
    Então identificar 3 cards no time esperado

# Este teste valida se um card é criado para cada time disponível.
Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    Então criar e identificar 1 card em cada time disponível
    








