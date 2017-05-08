# XY Inc

## Requisitos do sistema
* Ruby > 2.4
* Postgres

# Execução
 ```
  git clone git@github.com:cpgo/xy-inc.git
  cd xy-inc
  bundle install
  rails db:setup
  rails server
 ```

 # API
 Listar todos os Points of Interest
```
 GET '/poi'
```

Cadastrar novo Point of Interest
```
 POST '/poi' , params: poi[x], poi[y], poi[name]
```
Editar Point of Interest
```
PUT '/poi/:id'
```
Deletar Point of Interest
```
DELETE '/poi/:id'
```
Listar Points of Interest a uma certa distancia das coordenadas fornecidas
```
GET '/near', params: coords[x], coords[y], coords[max]
```

[`Exemplo do app rodando no heroku`](https://quiet-citadel-82458.herokuapp.com/poi)