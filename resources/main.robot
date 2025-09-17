*** Settings ***
# Este arquivo atua como um hub central, importando todas as bibliotecas e recursos
# para evitar repetição em arquivos de teste individuais.

# Importa a biblioteca para automação web.
Library           SeleniumLibrary
# Importa a biblioteca para geração de dados de teste, configurada para português do Brasil.
Library           FakerLibrary    locale=pt_BR

# Os comandos abaixo importam as palavras-chave e variáveis de arquivos de recurso.
# Qualquer arquivo de teste que importar este 'main.robot' terá acesso a todos os recursos abaixo.

# Importa as palavras-chave de setup e teardown.
Resource          shared/setup_teardown.robot
# Importa as palavras-chave e variáveis da página de cadastro.
Resource          pages/cadastro.robot
