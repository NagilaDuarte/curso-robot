*** Settings ***
# Este arquivo de teste importa recursos para cenários de preenchimento incorreto.
Resource       ../resources/main.robot

# O 'Test Setup' abre a aplicação antes de cada teste.
Test Setup     Dado que eu acesse o Organo
# O 'Test Teardown' fecha o navegador após cada teste, garantindo um ambiente limpo.
Test Teardown  Fechar o navegador

*** Variables ***
# Variável que armazena o seletor do botão de criação de card.
${CAMPO_CARD}             id:form-botao

*** Test Cases ***
# Este teste valida se o sistema exibe mensagens de erro ao tentar submeter um formulário
# sem preencher os campos obrigatórios.
Verificar se o sistema exibe mensagem de campo obrigatório quando um campo não é preenchido
    Dado que eu clique no botão criar card
    Então o sistema deve apresentar uma mensagem de campo obrigatório



