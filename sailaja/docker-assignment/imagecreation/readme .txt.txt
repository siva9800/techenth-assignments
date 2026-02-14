In this assignment i have started a server manually and then created a image of that application and started it through container.
1. I have cloned the source code.
2. opened the source code with VS Code.
3. i have installed nodejs app as we are reactjs app.
3. installed the dependencies using 'npm install".
4. started the server using "npm start".
5. checked in browser whether the server is up or down.

using docker file:-
1. I have cloned the source code.
2. opened the source code with VS Code.
3. here i have created the dockerfile.
4. in dockerfile i have written a script for image creation.
5. in terminal using "docker build -t >imagename>" created a image ..
6. after the image is created i used "docker run -d -p 3000:3000 <imagename>", to create and run the container.
7. after i checked in the browser whether the app is up or down.
