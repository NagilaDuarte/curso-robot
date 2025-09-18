# 🚀 Testando uma aplicação web

## 📋 Descrição do Projeto

Este projeto é um conjunto de testes de automação de ponta a ponta (E2E) para a aplicação web **Organo**. Os testes são desenvolvidos com **Robot Framework** e validam as funcionalidades de preenchimento de formulário, criação de cards e validação de campos obrigatórios. O projeto utiliza dados dinâmicos gerados pela **FakerLibrary** para tornar os testes mais robustos e independentes.

## ⚙️ Tecnologias Utilizadas

* **Robot Framework:** Uma estrutura de automação de testes genérica baseada em palavras-chave.
* **SeleniumLibrary:** Biblioteca do Robot Framework que permite a automação de navegadores.
* **FakerLibrary:** Biblioteca para geração de dados de teste dinâmicos e aleatórios.
* **Python:** Linguagem de programação e ambiente de execução.
* **pip:** Gerenciador de pacotes para a instalação de bibliotecas Python.
* **Ambiente Virtual (`venv`):** Ambiente isolado para gerenciar as dependências do projeto.

## 📁 Estrutura do Projeto

O projeto segue uma estrutura organizada para garantir a reusabilidade e a manutenibilidade do código:

* **`tests/`**: Contém os arquivos de teste (`.robot`) com os casos de teste.
* **`resources/`**: Armazena arquivos de recurso (`.robot`) que contêm palavras-chave e variáveis reutilizáveis.
    * **`shared/`**: Para recursos gerais do projeto, como o `main.robot`.
    * **`pages/`**: Para palavras-chave e variáveis específicas de cada página da aplicação.
* **`resultados/`**: Pasta para armazenar os relatórios e logs gerados após a execução dos testes.

## ▶️ Como Executar os Testes

Para rodar os testes, siga os passos abaixo:

1.  **Clone o repositório:**
    ```bash
    git clone [curso-robot](https://github.com/NagilaDuarte/curso-robot.git)
    ```

2.  **Crie e ative o ambiente virtual:**
    Navegue até a pasta do projeto e execute:
    ```bash
    python -m venv .venv
    ```
    Em seguida, ative o ambiente:
    ```bash
    .\.venv\Scripts\activate
    ```

3.  **Instale as dependências:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Execute os testes:**
    Para rodar todos os testes e salvar os resultados em uma pasta separada, use o comando:
    ```bash
    robot --outputdir resultados testes/
    ```
    Para rodar um teste específico, use o argumento `--test`:
    ```bash
    robot --outputdir resultados --test "Nome do Teste" testes/
    ```

## 🤝 Contato

* **Seu LinkedIn:** [Nágila Duarte](https://www.linkedin.com/in/nagiladuarte/)