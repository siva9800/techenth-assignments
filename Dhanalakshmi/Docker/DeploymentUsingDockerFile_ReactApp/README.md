1. Create Dockerfile
2. Dockerfile contains 
    a. FROM specifies the base image
    b. set wordir-> our source code inside this workdir
    c. copy packages
    d. cmds to build image
    e.  cmds to run app.
    f. port details

3. to build the react image use below cmd . To Run this cmd first start docker engine.
   docker build -t react-app .
4. docker images
5. to run docker run -d -p 80:3000 react-app
6. docker stop <contianer-id> to stop the container
