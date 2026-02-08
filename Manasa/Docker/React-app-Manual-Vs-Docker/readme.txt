Deployed the react app by manually as well as by using docker.

Manual process:

1. First we need to clone the source code.
2.Then install the Node.js image or package.
3.then npm install
4.npm start. Then our application runs on our localhost.


Deploy the application by using Docker file:

1.first we need to clone the project.
2.create Dockerfile and write all the steps.

FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

3.Then we need to open the app directory to run the command (in this case react-frontend path)-->docker build -t react-app . (build the react-app to currentlocation (.indicates currentpath))
4.now run the image (container is nothing but running instance of the image)
docker run -d -p 3000:3000 reac-app

5.then we can open browser and check ourapplication running in localhost or not with 3000 host no and 3000 port.
6.if we make the host no 5000 then again another container run the same app with different host no but with same port as 3000(Node.js port is 3000)
docker run -d -p 5000:3000 react-app


