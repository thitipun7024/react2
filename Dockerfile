FROM nginx:alpine
RUN apk add bash ###Solution: Make use of apk add to install packages on Alpine.
RUN apk update && apk upgrade --no-cache
RUN apk add --update nodejs npm

#RUN npm run build


COPY ./ /usr/share/nginx/html/react2

WORKDIR /usr/share/nginx/html/react2
COPY package*.json ./
RUN npm cache clean --force
CMD ["npm", "start"]