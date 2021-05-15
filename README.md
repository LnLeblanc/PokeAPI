# README

Ruby version : 2.7.2

## Pour installer le projet : 
- ```git pull https://github.com/LnLeblanc/PokeAPI``` 
- puis lancer la commande ```bundle install``` depuis le dossier racine


## Pour lancer le projet : 
lancer la commande ```rails server``` depuis le dossier racine


## Application : 
Voici les url :
- Pour afficher les 20 premiers pokemons : ```0.0.0.3000```
- Pour afficher toutes les infos d'un seul pokemon : ```0.0.0.3000/show/id_du_pokemon```
- Pour mettre à jour la liste des pokemons : ```0.0.0.3000/update``` 
(passe automatiquement aux 20 Pokémons suivants au rafraichissement de la page jusqu'à ce qu'il n'y en ait plus)


## API :

### Récupération de la liste des Pokemons : 

#### Requête : 
```
`GET 0.0.0.3000/index`
```

#### Paramètres de requête : 
Cette requête n'a besoin d'aucun paramètre

#### Réponse : 
```json
{
  "id": 1
}
```

### Update de la liste des Pokemons : 

#### Requête:
``` 
`GET 0.0.0.3000/update`
```

#### Paramètres de requête : 
Cette requête n'a besoin d'aucun paramètre

#### Réponse : 
La réponse sera la même que pour la requête précédente, elle renverra juste les 20 Pokemons suivants


### Récupération des informations d'un seul Pokemon : 

#### Requête:
```
`GET 0.0.0.3000/show`
```

#### Paramètres de requête :
Paramètre | Description
------- | -------
**id** | **id** doit être de type integer et corresponde à l'id du Pokémon souhaité

#### Réponse : 
```json

```
