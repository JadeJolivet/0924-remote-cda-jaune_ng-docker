FROM node:alpine as build
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=build /usr/src/app/dist/ng-docker/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
