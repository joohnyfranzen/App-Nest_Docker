<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
  <p align="center">
  <a href="https://www.docker.com/" target="blank"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlw3OC0wLg4OHnJVAtRgQ6tnLpSRk9VnhxSw&usqp=CAU" width="200" alt="Nest Logo" /></a>
</p>
</p>


## Instalação

```bash
$ npm install
```

## Configurações ao rodar

```bash
# Buildar DIST
$ npm run build

# Buildar CONTAINER Docker
$ docker build -t "app-name" .
Exemplo
$ docker build -t app .

# Rodar CONTAINTER localhost:8888
$ docker run -p 8888:80 "app-name"
Exemplo
$ docker run -p 8888:80 app

# Linkar CONTAINER ao servidor AZURE
$ docker tag "app-name" "host-name/'app-name'"
Exemplo
$ docker tag app mydockertestapp.azurecr.io/app

# Enviar CONTAINER ao servidor azure 
$ docker push "host-name/'app-name'"
Exemplo
$ docker push mydockertestapp.azurecr.io/app
```

## Comandos utéis Docker/Azure

```bash
# Conectar ao AZURE
$ az acr login

# Conectar ao AZURE
$ az login

# Conectar ao AZURE com host
$ az acr login -n "app-name" .

# Conectar ao DOCKER
$ docker login

# Parar serviço DOCKER
$ docker service stop

# Remover credenciais serviço DOCKER
$ rm ~/.docker/config.json

# Rodar serviço DOCKER 
$ docker service start
```


