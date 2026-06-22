# Sistema de Monitoramento de Saúde Mental nas Escolas

## Sobre o Projeto

Este projeto foi desenvolvido como atividade acadêmica com o objetivo de criar um sistema voltado ao acompanhamento da saúde mental de estudantes no ambiente escolar.

A proposta consiste em disponibilizar uma plataforma onde os usuários possam registrar seu humor diariamente, escrever anotações em um diário pessoal e visualizar frases motivacionais que incentivem o bem-estar emocional. Além disso, os dados registrados poderão ser utilizados futuramente para geração de relatórios e análises que auxiliem a instituição de ensino no acompanhamento da saúde emocional dos alunos.

O sistema busca promover a conscientização sobre a importância da saúde mental, incentivando o autoconhecimento e a identificação precoce de possíveis dificuldades emocionais.

---

## Objetivos

* Permitir o cadastro e gerenciamento de usuários.
* Registrar o humor dos usuários ao longo do tempo.
* Disponibilizar um diário pessoal para registro de sentimentos e experiências.
* Exibir frases motivacionais diariamente.
* Armazenar informações para futuras análises e relatórios sobre saúde mental.

---

## Integrantes

* Ana Clara Ferreira 
* Evilyn Rossin
* Gustavo Oliveira
* Ryan Rodrigues 
* Yasmin Dias

---

## Tecnologias Utilizadas

### Frontend

* HTML5
* CSS3
* JavaScript

### Banco de Dados

* MySQL

---

## Organização das Pastas

```text
projeto/
│
├── banco-de-dados/
│   ├── scripts.sql
│   └── CRUD.sql
│
├── frontend/
│   ├── index.html
│   ├── styles.css
│   ├── script.js
│   └── assets/
│
├── relatorio/
│   └── documentacao.pdf
│
├── prototipo/
│   ├── prototipo_mobile.png
│   ├── prototipo_desktop.png
│   └── figma_design_link.txt
│    
└── README.md
```

### Descrição das Pastas

#### banco-de-dados

Contém os scripts SQL responsáveis pela criação das tabelas, inserção de dados e consultas utilizadas no sistema.

#### frontend

Contém toda a interface do sistema desenvolvida com HTML, CSS e JavaScript.

#### relatorio

Armazena a documentação e relatórios relacionados ao desenvolvimento do projeto.

## Protótipo do Sistema

O protótipo das telas foi desenvolvido utilizando a ferramenta Figma, permitindo a visualização da interface e da experiência do usuário antes da implementação.

**Acesse o protótipo:**

[Link do protótipo](https://www.figma.com/proto/HIWv4jsaap49JbO83G7VOU/Mente-Acad%C3%AAmica-%E2%80%93-Login-UI?node-id=0-1&t=P493OGFkXjqCe4KB-1)
---

## Estrutura do Banco de Dados

O banco de dados foi modelado utilizando cinco entidades principais:

### usuarios

Armazena as informações de acesso dos usuários.

### humores

Contém os tipos de humor que podem ser registrados pelos usuários.

### usuarios_humores

Registra o histórico de humores de cada usuário.

### diarios_pessoais

Armazena os registros escritos pelos usuários em seu diário pessoal.

### frases_motivacionais

Armazena frases motivacionais exibidas de acordo com o dia da semana.

---

## Funcionalidades

* Cadastro de usuários.
* Registro de humor diário.
* Consulta do histórico de humor.
* Criação e gerenciamento de diário pessoal.
* Exibição de frases motivacionais.
* Operações CRUD completas no banco de dados.

---

## Contexto Acadêmico

Este projeto foi desenvolvido para fins educacionais, aplicando conceitos de modelagem de banco de dados, normalização, criação de CRUD, desenvolvimento web e organização de projetos de software.
