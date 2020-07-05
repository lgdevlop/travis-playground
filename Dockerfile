# FROM node:alpine as builder
FROM node:10-slim as builder

RUN mkdir /opt/app && chown -R node:node /opt/app

WORKDIR '/opt/app'

USER node

# COPY package.json yarn.lock* ./
# COPY package.json package-json.lock* ./
COPY package.json .

# RUN yarn install
RUN npm install

COPY . .

# RUN yarn build
RUN npm run build

FROM nginx

EXPOSE 80

COPY --from=builder /opt/app/build /usr/share/nginx/html