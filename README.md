# Blog Maino 📚🖋️

Um blog desenvolvido com Ruby on Rails, permitindo que usuários criem, comentem e interajam com postagens. Usuários autenticados podem publicar postagens e comentar, enquanto comentários anônimos são permitidos para usuários não autenticados.

---

## 🛠️ Funcionalidades

- **Cadastro e Autenticação de Usuários**:

  - Os usuários podem criar contas e fazer login/logout.
  - Nome do usuário é associado automaticamente às postagens e comentários.
  - Comentários podem ser feitos anonimamente para usuários não autenticados.

- **CRUD de Postagens**:

  - Usuários autenticados podem criar, visualizar, editar e deletar postagens.
  - Cada postagem exibe o autor (ou "Anônimo" para usuários não autenticados).

- **Comentários**:
  - Suporte a comentários em postagens.
  - Nome do autor do comentário ou "Anônimo" (para visitantes) é exibido.

---

## 🚀 Tecnologias Utilizadas

- **Ruby on Rails**: Framework principal.
- **Sqlite3**: Banco de dados.
- **Devise**: Para autenticação de usuários.
- **Bootstrap**: Para estilização e design responsivo.

---

## 📦 Instalação e Configuração

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/blog-maino.git
   cd blog-maino

   ```

2. **Instale as dependências**:
   Certifique-se de ter o Ruby (>= 2.7) e Rails (>= 6.1) instalados.

   ```bash
   bundle install
   ```

3. **Configure o banco de dados**:
   Atualize as credenciais de banco no arquivo `config/database.yml` e execute:

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Inicie o servidor**:

   ```bash
   rails server
   ```

5. Acesse o aplicativo no navegador:
   ```
   http://localhost:3000
   ```

---

## 🧑‍💻 Como Usar

### 1. Cadastro e Login

- Crie uma conta e faça login para acessar as funcionalidades de criação e edição de postagens.

### 2. Criação de Postagens

- Acesse a página "New Post" para criar uma nova postagem.
- O autor será automaticamente associado ao nome do usuário autenticado.

### 3. Comentários

- Adicione comentários a postagens existentes.
- Visitantes não autenticados podem comentar, e o nome será definido como "Anônimo".

---

## 🗂️ Estrutura do Projeto

```plaintext
app/
├── controllers/       # Controladores do Rails
├── models/            # Modelos ActiveRecord
├── views/             # Templates de visualização
├── assets/            # Arquivos estáticos (CSS, JS, imagens)
├── helpers/           # Métodos auxiliares para views
config/                # Configurações do projeto
db/                    # Migrações e seeds do banco de dados
```

---

## ✨ Agradecimentos

Obrigado por conferir o Blog Maino! Se você tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato. 😊

---

### 📫 Contato

- **Email**: [seu-email@example.com](mailto:seu-email@example.com)
- **GitHub**: [seu-usuario](https://github.com/seu-usuario)

---
