# README

Ruby version : 2.7.2

## Pour installer le projet : 
- ```git pull https://github.com/LnLeblanc/PokeAPI``` 
- puis lancer la commande ```bundle install``` depuis le dossier racine


## Pour lancer le projet : 
lancer la commande ```rails server``` depuis le dossier racine


## Application : 
Voici les url :
- Pour afficher les 20 premiers pokemons : ```http://0.0.0.3000```
- Pour afficher toutes les infos d'un seul pokemon : ```http://0.0.0.3000/show/id_du_pokemon```
- Pour mettre à jour la liste des pokemons : ```http://0.0.0.3000/update``` 
(passe automatiquement aux 20 Pokémons suivants au rafraichissement de la page jusqu'à ce qu'il n'y en ait plus)


## API :

### Récupération de la liste des Pokemons : 

> #### Requête : 
```
`GET http://0.0.0.3000/index`
```

> #### Paramètres de requête : 
Cette requête n'a besoin d'aucun paramètre

> #### Réponse : 
```json
{
  "count": 1118,
  "next": "https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20",
  "previous": "",
  "results": [
      {"name": "bulbasaur", "url": "https://pokeapi.co/api/v2/pokemon/1/"},
      {"name": "ivysaur", "url": "https://pokeapi.co/api/v2/pokemon/2/"},
      {"name": "venusaur", "url": "https://pokeapi.co/api/v2/pokemon/3/"},
      {"name": "charmander", "url": "https://pokeapi.co/api/v2/pokemon/4/"},
      {"name": "charmeleon", "url": "https://pokeapi.co/api/v2/pokemon/5/"},
      {"name": "charizard", "url": "https://pokeapi.co/api/v2/pokemon/6/"},
      {"name": "squirtle", "url": "https://pokeapi.co/api/v2/pokemon/7/"},
      {"name": "wartortle", "url": "https://pokeapi.co/api/v2/pokemon/8/"},
      {"name": "blastoise", "url": "https://pokeapi.co/api/v2/pokemon/9/"},
      {"name": "caterpie", "url": "https://pokeapi.co/api/v2/pokemon/10/"},
      {"name": "metapod", "url": "https://pokeapi.co/api/v2/pokemon/11/"},
      {"name": "butterfree", "url": "https://pokeapi.co/api/v2/pokemon/12/"},
      {"name": "weedle", "url": "https://pokeapi.co/api/v2/pokemon/13/"},
      {"name": "kakuna", "url": "https://pokeapi.co/api/v2/pokemon/14/"},
      {"name": "beedrill", "url": "https://pokeapi.co/api/v2/pokemon/15/"},
      {"name": "pidgey", "url": "https://pokeapi.co/api/v2/pokemon/16/"},
      {"name": "pidgeotto", "url": "https://pokeapi.co/api/v2/pokemon/17/"},
      {"name": "pidgeot", "url": "https://pokeapi.co/api/v2/pokemon/18/"},
      {"name": "rattata", "url": "https://pokeapi.co/api/v2/pokemon/19/"},
      {"name": "raticate", "url": "https://pokeapi.co/api/v2/pokemon/20/"}
  ]
}
```

### Update de la liste des Pokemons : 

> #### Requête:
``` 
`GET http://0.0.0.3000/update`
```

> #### Paramètres de requête : 
Cette requête n'a besoin d'aucun paramètre

> #### Réponse : 
La réponse sera la même que pour la requête précédente, elle renverra juste les 20 Pokemons suivants


### Récupération des informations d'un seul Pokemon : 

> #### Requête:
```
`GET http://0.0.0.3000/show`
```

> #### Paramètres de requête :
Paramètre | Description
------- | -------
**id** | **id** doit être de type integer et corresponde à l'id du Pokémon souhaité

> #### Réponse : 
```json

```
