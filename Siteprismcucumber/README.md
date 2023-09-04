![Static Badge](https://img.shields.io/badge/pedr1o-%20100%25-green?logo=cucumber&label=Coverage%20Tests&labelColor=black&color=Green)
![Static Badge](https://img.shields.io/badge/Status-Development-yellow?label=Status&labelColor=black&color=yellow)
![Static Badge](https://img.shields.io/badge/Programming%20Language-Ruby3.2.2-red?logo=ruby&label=Programming%20Language&labelColor=black&color=red) 

# Automação de Testes

Automação de testes utilizando Capybara, Cucumber e SitePrism em Ruby 3.2.2. Os testes foram efetuados no site [Advantage Online Shopping](http://www.advantageonlineshopping.com/#/).

## Mapa Mental

![AdvantageOnlineShopping](https://github.com/pedroomartinelli/PB_Sprint5/assets/141445664/5e707507-206e-4c40-aba7-faa5824f1934)
Mapa mental para os fluxos prioritários de testes.

## Instalação

Lembre de executar o seguinte comando:

~~~
bundle install
~~~

Para instalar as dependencias do Ruby, listadas no arquivo Gemfile.

## Execução de testes
Utilize o seguinte comando no terminal de preferencia:

~~~
bundle exec cucumber -p default
~~~

Inicia a execução de todos os testes feitos. Para executar uma step específica, utilize a tag da step presente nos arquivos features/specs/arquivo.feature utilizando -t@tag após o comando.
Exemplo:

~~~
bundle exec cucumber -p default -t@tag
~~~

tags disponiveis:
* **@regression**
* **@search**
  * **@search_for_product**
  * **@search_for_different_product**
* **@contact**
  * **@contact_ok**
* **@pdp**
  * **@change_color_pdp**
  * **@increase_product_quantity**

## Estrutura do Projeto
* features/: Arquivos de especificação em linguagem Gherkin.
* features/page_objects/pages: Representação das páginas do site através de classes SitePrism.
* features/page_objects/sections: Contém os elementos da página necessários para execução dos testes.
* features/specs/: Arquivos .feature para a orientação dos testes.
* features/step_definitions/: Passos dos testes á serem executados.
* features/support/: Arquivos de ambiente, configurações do driver e do report.
* features/reports/: Relatórios gerados após os testes efetuados.
* cucumber.yaml: Definição do ambiente padrão, navegador e report.
* Gemfile: Lista de dependências Ruby.
* README.md: Este arquivo.

## Configuração do Ambiente
Configure a pasta features/support/ conforme o desejado para executar os testes.
* Driver do Navegador: support/factory/env.rb 
* URL do site: support/environment/prd.yml