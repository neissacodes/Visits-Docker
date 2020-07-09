#Specify the image base
FROM node:alpine

WORKDIR '/app'

#Added dependencies
COPY package.json .
RUN npm install
COPY . .

#Command
CMD ["npm", "start"]