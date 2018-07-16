# Treinamento NATI 2018.2
## Introdução
Durante o treinamento de desenvolvimento para iOS do NATI de 2018.2 foram criados diversos projetos. Esse repositório contém todos os projetos desenvolvidos no decorrer do treinamento.

## Guias Básicos
### Git:
Para adicionar todos os arquivos na área de commit: `git add .`

Para commitar (atualizar repósitorio local) todas as alterações escolhidas: `git commit -m "Mensagem do Commit"`

Para atualizar o repositório remoto com as atualizações no local: `git push`

Para adicionar um repositório remoto: `git remote add origin <URL DO REPO>`

Para subir atualizações para um repositório sem nenhuma branch (geralmente ao criar): `git push -u origin master`

### Instalações:
- Instalar Command Line Tools: 
```shell
$ xcode-select --install`
```
- Instalar o homebrew: 
```shell
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
```
- Instalar o cocoapods: 
```shell
$ sudo gem install cocoapods
```

## Projetos
### ComandosSwift.playground:
Playground com comandos básicos e introdutórios da linguagem Swift.

### LayoutComponents:
Projeto de uma tela de Login simples com componentes básicos de layout. Apresentação dos componentes, outlets, actions e constraints.

### TableViewExample:
Projeto com a configuração de uma TableView simples. Foi utilizado uma cell default (basic) com uma label.

### RealmExample:
Projeto com uma integração simples com o Realm. Foram feitas escritas, leituras de todas as tuplas de uma tabela, leituras filtradas e leituras diretamente de uma tupla (utilizando Primary Key).

### NetworkExample:
Projeto com a configuração do Alamofire, ObjectMapper e AlamofireObjectMapper. Foi utilizado a API do github (https://developer.github.com/v3/) como instrumento para demostrar o funcionamento dessas bibliotecas.

## Referências
Durante o treinamento foram utilizados diversos recursos. Os links dispostos abaixo fornecem mais informações sobre as ferramentas utilizadas, bibliotecas de terceiros recomendadas e links úteis (repositório com diversas bibliotecas, conjunto de exemplos de .gitignore para diversas linguagens, guia básico de swift e um playground online).

### Ferramentas:
- Xcode: https://itunes.apple.com/br/app/xcode/id497799835?mt=12
- Cocoapods: https://cocoapods.org
- Postman: https://www.getpostman.com/apps
- Realm Studio: https://realm.io/products/realm-studio

### Bibliotecas:
- Realm: https://realm.io/docs/swift/latest
- Alamofire: https://github.com/Alamofire/Alamofire
- ObjectMapper: https://github.com/Hearst-DD/ObjectMapper
- AlamofireObjectMapper: https://github.com/tristanhimmelman/AlamofireObjectMapper
- SwiftGen: https://github.com/SwiftGen/SwiftGen
- Reusable: https://github.com/AliSoftware/Reusable
- Kingfisher: https://github.com/onevcat/Kingfisher
- SwiftMessage: https://github.com/SwiftKickMobile/SwiftMessages

### Links:
- https://github.com/vsouza/awesome-ios
- https://github.com/github/gitignore
- https://www.raywenderlich.com/143771/swift-tutorial-part-1-expressions-variables-constants 
- http://online.swiftplayground.run
