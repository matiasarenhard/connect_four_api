# connect_four_api
### Stack
- **Ruby**: 3.3.0  
- **Rails**: 7.1.3  
- **PostgreSQL**: 16.3

### Prerequisites
Make sure you have the following installed:

- [ASDF](https://asdf-vm.com/guide/getting-started.html)
- [Ruby](https://gorails.com/setup/ubuntu/22.04#ruby) 3.3.0
- [Rails](https://gorails.com/setup/ubuntu/22.04#rails) 7.1.3
- [PostgreSQL](https://gorails.com/setup/ubuntu/22.04#database): 16.3

### Setup Instructions
1. **Install the prerequisites** as described above.
2. **Create a `.env` file** based on the provided `env-sample` file. Configure your database credentials accordingly.
3. **Follow the build steps** outlined below to set up your environment.

### Build Steps
```bash
bundle install
bin/rails db:create db:migrate db:seed
bin/rails s
```


### endpoints 

#### create game
POST: http://localhost:3000/games  
<br/>params:
```
{
  "game": {
    "player_one": "John",
    "color_player_one": "Red",
    "player_two": "Jane",
    "color_player_two": "Yellow"
  }
}
```
result:
```
{
    "id": 1,
    "result": null,
    "player_one": "John",
    "color_player_one": "Red",
    "player_two": "Jane",
    "color_player_two": "Yellow",
    "created_at": "2024-09-14T02:46:03.349Z",
    "updated_at": "2024-09-14T02:46:03.349Z"
}
```
#### update game
PATCH/PUT: http://localhost:3000/games/1
<br/>params:
```
{
  "game": {
    "result": "John"
  }
}
```
result:
```
{
    "result": "Player Two Wins",
    "id": 1,
    "player_one": "John",
    "color_player_one": "Red",
    "player_two": "Jane",
    "color_player_two": "Yellow",
    "created_at": "2024-09-14T02:46:03.349Z",
    "updated_at": "2024-09-14T02:51:36.582Z"
}
```

#### get game infos
GET: http://localhost:3000/games/1
<br/>result:
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

### list all games 
GET: http://localhost:3000/games
<br/>result:
```
  [
      {
          "id": 1,
          "result": "Player Two Wins",
          "player_one": "John",
          "color_player_one": "Red",
          "player_two": "Jane",
          "color_player_two": "Yellow",
          "created_at": "2024-09-14T02:46:03.349Z",
          "updated_at": "2024-09-14T02:51:36.582Z"
      },
      {
          "id": 2,
          "result": null,
          "player_one": "John",
          "color_player_one": "Red",
          "player_two": "Jane",
          "color_player_two": "Yellow",
          "created_at": "2024-09-14T02:54:27.690Z",
          "updated_at": "2024-09-14T02:54:27.690Z"
      },
      {
          "id": 3,
          "result": null,
          "player_one": "John",
          "color_player_one": "Red",
          "player_two": "Jane",
          "color_player_two": "Yellow",
          "created_at": "2024-09-14T02:54:29.609Z",
          "updated_at": "2024-09-14T02:54:29.609Z"
      }
  ]
```

### list all games movements
GET: http://localhost:3000/games
