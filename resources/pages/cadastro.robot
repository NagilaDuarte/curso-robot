*** Settings ***
# Este arquivo de recurso contém palavras-chave e variáveis para interagir com a página de cadastro.
Resource    ../main.robot

*** Variables ***
# Variáveis para os seletores dos campos do formulário.
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${CAMPO_CARD}             id:form-botao
# Array que armazena os seletores para cada opção de time, permitindo a iteração em loops.
@{selecionar_times}
...      //option[contains(.,'Programação')]
...      //option[contains(.,'Front-End')]
...      //option[contains(.,'Data Science')]
...      //option[contains(.,'Devops')] 
...      //option[contains(.,'UX e Design')]
...      //option[contains(.,'Mobile')]
...      //option[contains(.,'Inovação')]

*** Keywords ***
# Esta palavra-chave preenche o formulário usando dados dinâmicos da FakerLibrary.
Dado que preencha os campos do formulario
    ${Nome}          FakerLibrary.First Name
    Input Text       ${CAMPO_NOME}      ${Nome}    
    ${Cargo}         FakerLibrary.Job
    Input Text       ${CAMPO_CARGO}     ${Cargo}
    ${Imagem}        FakerLibrary.Image URL    width=100    height=100
    Input Text       ${CAMPO_IMAGEM}    ${Imagem}
    Click Element    ${CAMPO_TIME}
    # Clica no primeiro elemento da variável de array '@{selecionar_times}',
    # que corresponde a 'Programação'.
    Click Element    ${selecionar_times}[0]

# Encapsula o clique no botão para criar o card.
E clique no botao de criar card
    Click Element    ${CAMPO_CARD}

# Valida se o card de um novo colaborador se tornou visível na página.
Então identificar o card no time esperado
    Element Should Be Visible    class:colaborador

# Cria três cards, validando o fluxo de criação de múltiplos cards.
Então identificar 3 cards no time esperado
    # O loop 'FOR IN RANGE' executa a mesma ação 3 vezes (de 1 a 3).
    FOR   ${i}    IN RANGE    1    3
    # Chama as palavras-chave para preencher o formulário e criar o card.
        Dado que preencha os campos do formulario
        E clique no botao de criar card 
    END
    # Pausa o teste por 10 segundos para dar tempo de visualizar os cards criados.
    Sleep    10s

# Cria um card para cada time disponível no formulário.
Então criar e identificar 1 card em cada time disponível
    # O loop 'FOR IN ENUMERATE' itera sobre cada item da lista '@{selecionar_times}'.
    # Ele fornece tanto o índice quanto o valor de cada item da lista.
    FOR    ${indice}    ${time}    IN ENUMERATE    @{selecionar_times}
        Dado que preencha os campos do formulario
        # Seleciona a opção do campo suspenso com base no item do loop.
        Click Element    ${time}
        E clique no botao de criar card
    END
    
    Sleep    10s

# Palavra-chave que simula o clique no botão sem preencher o formulário.
Dado que eu clique no botão criar card
    Click Element    ${CAMPO_CARD}

# Palavra-chave para verificar se as mensagens de erro estão visíveis.
Então o sistema deve apresentar uma mensagem de campo obrigatório
    # Asserção que verifica se a mensagem de erro para o campos estão visíveis.
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro