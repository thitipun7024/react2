FROM nginx:alpine
RUN apk add bash ###Solution: Make use of apk add to install packages on Alpine.
RUN apk update && apk upgrade --no-cache
RUN apk add --update nodejs yarn

#RUN npm run build

COPY ./ /usr/share/nginx/html/react2

WORKDIR /usr/share/nginx/html/react2
RUN yarn install 
CMD yarn start