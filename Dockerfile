FROM node:alpine as build
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=build /usr/src/app/dist/ng-docker/<missing> /usr/share/nginx/html
COPY nginx.conf <missing>

# Récupère l'imagine node alpine
# Définit le répertoire de travail du conteneur
# Copie le code source de l'application dans le conteneur
# Installe les dépendances dans ce conteneur
# Compile l'application dans ce conteneur

# Récupère l'imagine nginx alpine
# Copie le code source (situé dans conteneur de l'étape build) dans le répertoire de nginx "/usr/share/nginx/html"
# Copie le fichier de configuration nginx