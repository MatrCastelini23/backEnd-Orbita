# FrontEnd E-Commerce Órbita -- Projeto DevOps.

Este repositório tem fins de academicos. Minha idéia é criar uma E-commerce ficticio para simular um ambiente de desenvolvimento + produção. <br>
Para está aplicação vou utilizar uma arquitetura de duas camadas, usada em várias aplicaçoes Web. Como a idéia é simular um ambiente de integração e entrega continua, decide por começar em uma arquitetura não tão complexa já que este não é a finalidade desde estudo.<br>
Abaixo detalho um pouco mais sobre a idéia e as tecnologias a serem utilizadas e a documentação do Front-End.

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

## Front-End: 

Vou utilizar React + Vite para o Frotend refatorando um código feito por mim com fins de otimização e padronização de mercado: 
>https://github.com/MatrCastelini23/projeto3

### Tecnologias: 

- React
  - React-Router-Dom
  - Lucide React
- TailWindCSS
- NGINX
- TypeScript
