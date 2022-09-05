#Padrão worth
FROM node:14-alpine as build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm cache clean --force
RUN npm run build

FROM node:14-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --only=production
COPY --from=build /app/dist ./dist
CMD npm run start:prod

# Prisma sqlite with module installs
# FROM node:14-alpine as build

# WORKDIR /app
# COPY package.json ./
# RUN npm config set registry http://registry.npmjs.org/
# COPY prisma ./prisma/
# COPY .env ./.env
# RUN npm cache clean --force
# RUN npm install @prisma/client@4.3.1
# RUN npm install prisma --save-dev
# RUN npx prisma generate reset -y
# RUN npm install
# COPY . .
# RUN npm run build

# FROM node:14-alpine
# WORKDIR /app
# COPY package.json ./
# COPY prisma ./prisma/
# COPY .env ./.env
# RUN npm config set registry http://registry.npmjs.org/
# RUN npm install @prisma/client@4.3.1
# RUN npm install prisma --save-dev
# RUN npx prisma generate reset -y
# RUN npm install --only=production
# COPY --from=build /app/dist ./dist
# CMD npm run start:prod

# HAVE FUN
