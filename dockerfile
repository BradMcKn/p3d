FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
EXPOSE 3050
CMD ["yarn", "start"]