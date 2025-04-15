# Récupère l'imagine node alpine
FROM node:alpine AS builder
# Définit le répertoire de travail du conteneur
WORKDIR /app
# Copie le code source de l'application dans le conteneur
COPY . .
# Installe les dépendances dans ce conteneur
RUN npm install
# Build l'application dans ce conteneur > tu obtiens un répertoire "dist/nom-du-projet"
RUN npm run build

# Récupère l'imagine nginx alpine
FROM nginx:latest
# Copie le code source buildé dans le répertoire "/usr/share/nginx/html"
COPY --from=builder /app/dist/ng-docker-workshop /usr/share/nginx/html
# Copie le fichier de configuration nginx dans le répertoire "/etc/nginx/conf.d/default.conf"
COPY nginx.conf /etc/nginx/conf.d/default.conf
