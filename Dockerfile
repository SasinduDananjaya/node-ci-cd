FROM node:18-alpine

#set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

#copy package files and install dependencies
COPY package*.json ./
RUN npm install --only=production


#copy the rest of the code
COPY . .

#expose the port the app runs on
EXPOSE 5000

#start the application
CMD ["node", "index.js"]