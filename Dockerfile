#Base image
FROM node: 18-alpine

#App directory
WORKDIR /app

#copy dependency files
COPY package*.json ./

#Install project dependencies
RUN npm install

#copy app code
COPY . .

#open port
EXPOSE 3000

#start app
CMD ["npm","start"]
