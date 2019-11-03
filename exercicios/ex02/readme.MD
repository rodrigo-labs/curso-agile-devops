Desafio 02 - ex02_flask
==============

## Descrição

1) Expor a aplicação na porta 8087
2) A aplicação deverá ser exibir Hello <seu nome> com uma cor de fundo amarela. (yellow).
3) A aplicação roda nativamente na porta 9090
4) Na minha máquina de desenvolvimento eu tenho o python-pip python-dev build-essential instalado. 
Você pode usar o pip para instalar.. algo do tipo: pip install -r requirements.txt
5) Ahhh minha aplicação roda com o framework Flask, mas eu coloquei tudo no requirements.txt
6) Para rodar a aplicação é só fazer um python color.py 
7) a aplicação espera 2 variáveis, APP_NAME e APP_COLOR
8) Qualquer dúvida, fale com o Pedro, pois estou saindo de férias, pediram pra por em produção hoje mesmo, 
mesmo com alguns bugs conhecidos.

### DockerHub
https://hub.docker.com/r/rodrigolab/ex02_flask

### Intalação
```bash
$ docker pull rodrigolab/ex02_flask
```

### Rodar
```bash
$ docker run -p 8087:9090 -e APP_NAME=Rodrigo -e APP_COLOR=yellow rodrigolab/ex02_flask
```

### Argumentos
-p 8087:9090 -> mapeamento pedido no exercicio, da porta padrao 9090 para a porta 8087.
-e APP_NAME=Rodrigo -> pedido no exercicio, variavel de ambiente usada para exibir o nome no h1 do index
-e APP_COLOR=yellow -> pedido no exercicio, variavel de ambiente usada para exibir uma cor como background do index.
