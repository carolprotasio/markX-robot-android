# MarkX-robot-android

O **MarkX-robot-android** é um projeto de automação de testes mobile focado em validar as funcionalidades de um aplicativo gerenciador de tarefas (Task Manager). O aplicativo permite login, cadastro, conclusão e exclusão de tarefas. Os testes foram realizados no ambiente Android, utilizando um emulador e o driver uiautomator2.

A automação incluiu integração com o banco de dados `MongoDB`, utilizando a biblioteca `pymongo` para validar operações CRUD. A inspeção dos elementos das telas foi realizada com o `Appium Inspector`, garantindo maior precisão e eficiência na criação dos testes.

<img src="https://github.com/carolprotasio/markX-robot-android/blob/main/assets/android2.png" alt="web" width="400"/>

## 🛠️ Tecnologias utilizadas

- **Robot Framework**: Estrutura para automação de testes.
- **Appium**: Plataforma para automação de testes em aplicativos móveis.
- **Python**: Linguagem de programação.
- **uiautomator2**: Driver utilizado para interação com o emulador Android.
- **MongoDB**: Banco de dados utilizado para armazenar informações de tarefas.
- **pymongo**: Biblioteca Python para integração com o MongoDB.
- **Appium Inspector**: Ferramenta para inspecionar elementos no aplicativo.

<img src="https://github.com/carolprotasio/markX-robot-android/blob/main/assets/appium.png" alt="web" width="800"/>

## 🔍 Cenários e casos de teste

### Cenário: Login
#### 🧪 CT-001: Deve realizar o login com sucesso
- **Ação**: Informar um IP válido do sistema.
- **Objetivo**: Validar que o sistema permite o acesso com um IP correto.
- **Resultado esperado**: Login realizado com sucesso.

#### 🧪 CT-002: Não deve realizar login com IP incorreto
- **Ação**: Informar um IP inválido.
- **Objetivo**: Garantir que o sistema rejeite acessos com IP inválido.
- **Resultado esperado**: Exibição de mensagem de erro e acesso negado.

---

### Cenário: Gerenciamento de tarefas
#### 🧪 CT-001: Deve cadastrar uma nova tarefa
- **Ação**: Inserir uma tarefa válida no aplicativo.
- **Objetivo**: Validar que o sistema armazena corretamente a nova tarefa no banco de dados.
- **Resultado esperado**: Tarefa cadastrada com sucesso e exibida na tela "Minhas Tarefas".

#### 🧪 CT-002: Deve remover uma tarefa
- **Ação**: Selecionar uma tarefa existente e confirmar a remoção.
- **Objetivo**: Garantir que o sistema exclua a tarefa selecionada.
- **Resultado esperado**: Tarefa removida com sucesso e não mais exibida na tela "Minhas Tarefas".

#### 🧪 CT-003: Deve marcar uma tarefa como concluída (*done*)
- **Ação**: Selecionar a opção para marcar uma tarefa como concluída.
- **Objetivo**: Validar que o sistema atualiza o status da tarefa.
- **Resultado esperado**: Tarefa marcada como concluída e exibida na lista "Minhas Tarefas".

<img src="https://github.com/carolprotasio/markX-robot-android/blob/main/assets/tests.png" alt="web" width="1000"/>

---

## 🚀 Conclusão

O projeto **markX-robot-android** foi uma excelente oportunidade para aplicar conhecimentos em automação de testes em aplicativos móveis, explorando ferramentas como Robot Framework, Appium e Python. A experiência permitiu validar cenários do aplicativo de gerenciamento de tarefas, incluindo login e operações CRUD, além de validar a integração com o banco de dados MongoDB.

A combinação do emulador Android com o driver uiautomator2 proporcionou um ambiente de testes eficiente e próximo da realidade, enquanto o Appium Inspector permitiu a identificação precisa de elementos para automação.

Este projeto foi realizado acompanhando o curso [Robot Framework e Appium para Android e iOS](https://www.udemy.com/course/robot-framework-e-appium-para-android-e-ios), consolidando práticas fundamentais para automação de testes em dispositivos móveis.

---
