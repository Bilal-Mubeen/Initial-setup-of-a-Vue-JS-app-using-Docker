FROM node:alpine


# make the 'code' folder the current working directory
WORKDIR /home/vue/app

# install simple http server for serving static content
RUN npm install -g @vue/cli

# copy both 'package.json' and 'package-lock.json' (if available)
COPY /app/package.json .
COPY /app/package-lock.json .
COPY ./app .
# install project dependencies
RUN npm install

# build app for production with minification
# RUN npm run dev

EXPOSE 8080