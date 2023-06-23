FROM node

WORKDIR /react-app/

RUN npm run build

COPY /build /usr/share/nginx/html/thitipun-react
