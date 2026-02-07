1. Create Dockerfile
2. Dockerfile contains 
    a. FROM specifies the base image
    b. set wordir-> our source code inside this workdir
    c. copy packages
    d. cmds to build image
    e.  cmds to run app.
    f. port details

3. to build the python image use below cmd . To Run this cmd first start docker engine.
   docker build -t pythonImage.pe .
4. docker images
5. to run docker run --name <Container_name> -d -p 80:3000 pythonImage
6. docker stop <contianer-id> to stop the container