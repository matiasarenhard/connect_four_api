# connect_four_api
Repositório back-end da solução **Morcego Games**,  desenvolvido por:</br>
Allan Escher, André Dorr, Diego Morgenstern, Ivanilson Silva, Marlon Miguel, Matias Arenhard.</br>

### Tecnologias Utilizadas
- **Ruby**: 3.3.0  
- **Rails**: 7.1.3  
- **PostgreSQL**: 16.3

### Requisitos
Certifique-se de ter instalado:
- [ASDF](https://asdf-vm.com/guide/getting-started.html)
- [Ruby](https://gorails.com/setup/ubuntu/22.04#ruby) 3.3.0
- [Rails](https://gorails.com/setup/ubuntu/22.04#rails) 7.1.3
- [PostgreSQL](https://gorails.com/setup/ubuntu/22.04#database): 16.3

### Instruções de Configuração
1. **Instale os pré-requisitos** conforme descrito acima.
2. Crie um arquivo **.env** a partir do **env-sample** que está na raiz do projeto, preencha os valores correspondentes para cada variável de ambiente.
3. Na pasta do projeto(**connect_four_api**), execute os comandos descritos abaixo para configurar o seu ambiente:

### Comandos para configuração do projeto
```bash
bundle install
bin/rails db:create db:migrate db:seed
bin/rails s
```

### Tabelas
![image](https://github.com/user-attachments/assets/d00e81b1-996c-49c3-a42d-c516d2441935)



### Requisições 

#### Novo jogo
POST: http://localhost:3000/games  
<br/>parametros:
```
{
  "game": {
    "player_one": "John",
    "image_player_one": "Red",
    "player_two": "Jane",
    "image_player_two": "Yellow",
    "kind": "connect_four"
  }
}
```
resultado:
```
{
    "id": 7,
    "result": null,
    "player_one": "John",
    "image_player_one": "Red",
    "player_two": "Jane",
    "image_player_two": "Yellow",
    "created_at": "2024-10-03T03:46:11.478Z",
    "updated_at": "2024-10-03T03:46:11.478Z",
    "kind": "connect_four"
}
```
#### Atualizando jogo
PATCH: http://localhost:3000/games/1
<br/>parametros:
```
{
  "game": {
    "id": 1,
    "result": "John"
  }
}
```
resultado:
```
{
    "result": "John",
    "id": 1,
    "player_one": "John",
    "image_player_one": "Red",
    "player_two": "Jane",
    "image_player_two": "Yellow",
    "created_at": "2024-10-03T03:23:55.155Z",
    "updated_at": "2024-10-03T03:48:42.236Z",
    "kind": "connect_four"
}
```

#### Informações de um jogo
GET: http://localhost:3000/games/1
<br/>resultado:
```
{
    "id": 1,
    "result": "Player Two Wins",
    "player_one": "John",
    "color_player_one": "Red",
    "player_two": "Jane",
    "color_player_two": "Yellow",
    "created_at": "2024-09-14T02:46:03.349Z",
    "updated_at": "2024-09-14T02:51:36.582Z"
}
```

#### Listar todos os jogos
GET: http://localhost:3000/games
<br/>result:
```
[
    {
        "id": 3,
        "result": null,
        "player_one": "John",
        "image_player_one": "Red",
        "player_two": "Jane",
        "image_player_two": "Yellow",
        "created_at": "2024-10-03T03:50:47.218Z",
        "updated_at": "2024-10-03T03:50:47.218Z",
        "kind": "connect_four"
    },
    {
        "id": 2,
        "result": null,
        "player_one": "John",
        "image_player_one": "Red",
        "player_two": "Jane",
        "image_player_two": "Yellow",
        "created_at": "2024-10-03T03:50:47.207Z",
        "updated_at": "2024-10-03T03:50:47.207Z",
        "kind": "tic_tac_toe"
    },
    {
        "id": 1,
        "result": "John",
        "player_one": "John",
        "image_player_one": "Red",
        "player_two": "Jane",
        "image_player_two": "Yellow",
        "created_at": "2024-10-03T03:50:47.184Z",
        "updated_at": "2024-10-03T03:51:24.010Z",
        "kind": "tic_tac_toe"
    }
]
```
