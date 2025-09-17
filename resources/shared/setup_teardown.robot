*** Settings ***
Resource    ../main.robot

*** Keywords ***
# Palavra-chave para abrir o navegador e acessar a URL da aplicação.
# O nome "Dado que eu acesse o Organo" segue a convenção BDD (Behavior-Driven Development).
Dado que eu acesse o Organo
    # Abre o navegador Chrome e navega para a URL da aplicação Organo.
    Open Browser    url=http://localhost:3000/    browser=chrome

# Palavra-chave para fechar o navegador.
Fechar o navegador
    # Fecha o navegador.
    Close Browser
    
