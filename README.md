# Backend E-Commerce Órbita -- Projeto DevOps.

Este repositório tem fins de academicos. Minha idéia é criar uma E-commerce ficticio para simular um ambiente de desenvolvimento + produção. <br>
Para está aplicação vou utilizar uma arquitetura de duas camadas, usada em várias aplicaçoes Web. Como a idéia é simular um ambiente de integração e entrega continua, decide por começar em uma arquitetura não tão complexa já que este não é a finalidade desde estudo.<br>
Abaixo detalho um pouco mais sobre a idéia e as tecnologias a serem utilizadas e a documentação do Backend + histórico do processos de criação da pipeline de CI/CD.

## Organização de ambientes: 

### Desenvolvimento vs Produção:
Para o desenvolvimento, vou utilizar meu PC com Docker Desktop instalado para rodar o ambiente de desenvolvimento. <br>
Para Produção, minha idéia é utilizar o VirtualBox da Oracle para criar duas máquinas virtuais. Uma será meu servidor web com NGINX a segunda será meu Backend em Lavarel + banco de dados em MySQL.

### Containers: 
Vou utilizar o Docker + DockerCompose para orquestração de containers tanto de desenvolvimento quanto de produção. A idéia é utilizar o mesmo arquivo para os dois ambientes.

### CI/CD:
Por mais que esse seja um estudo indidual, vou trabalhar com duas branch: 
- Main: responsavel pelo código em produção.
- Development: responsavel pelo código recebido do ambiente local que será testado antes do merge na Main.<br>
Em caso de este estudo me levar a conhecimentos ainda não explorados por mim dentro do Github, talvez eu configure teste automatizados com o GitHub Actions e crie um projeto que também será público se possivel.

## BackEnd:
Minha idéia é utilizar o Laravel como Backend, sem utilizar as partes da view direto neste repositório. 

### Tecnologias: 

- Laravel 
- MySQL

## Construção da CI/CD.

### Configuração do Servidor Local: 

- Após instalar o Ubuntu server em uma máquina, fiz instalação do Docker, Docker Compose e git.
> sudo apt update && sudo apt upgrade -y <br> sudo apt install -y docker.io docker-compose-v2 git curl

- E habilita a permissão que o Docker rode os containers sem o sudo:
> sudo usermod -aG docker $USER <br> newgrp docker

### Configuração dos Runners no Github:

- Criado um Runner dentro dos dois repositório com a opção Linux x64.
- Criado duas pasta dentro do Ubuntu Serve: 
    - runner-front -> responsavel pelo front end da aplicação
    - runner-back -> responsavel pelo back end da aplicação.
