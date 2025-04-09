# Workshop : Docker & Angular

## Objectif 
Tu vas y écrire un ensemble d'instructions afin de créer une image de ton application Angular. Pour cela, 2 grandes étapes : 
1. Build ton application Angular
2. Utiliser nginx pour servir ton application buildée.


## Mais avant ça...

Lance la commande `ng build`. 
- À quoi ça sert ?
- Que contient le dossier `/dist/ng-docker` ?
- Renomme ton projet Angular (donne lui le nom que tu veux)
- Relance la commande `ng build`
- Que devient `/dist/ng-docker` ?

## Ok et maintenant

### Rends-toi dans le fichier `Dockerfile` :
- Les consignes sont écrites pour te guider
- Une consigne = 1 instruction docker

### Lorsque tu auras réussi un créer une : 
- Explore l'image avec la commande `docker run -it --rm <image-name>:<tag> sh` pour comprendre un petit peu mieux de quoi est constituée l'image
- Tu verras que c'est architecturé comme un "petit système d'exploitation"
- Va notamment voir dans `/usr/share/nginx`
- Ce que tu y vois te semble-t-il logique ?
  
### Maintenant que tu as mieux compris comment est organisée ton image docker : 
-  Exécute-la pour en créer un container
-  N'oublie pas de préciser le mapping de port
-  Rends-toi sur ton port mappé
-  🥳 Tadaaaaaa, ton application angular tourne 🥳 (méga stylé en vrai)
