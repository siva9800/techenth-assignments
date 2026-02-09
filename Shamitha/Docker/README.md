# Docker Nginx Assignment

This task shows how to run an Nginx container using Docker and access it in a browser.

## Steps

1. Checked Docker installation  
   Command: `docker version`

2. Pulled nginx image from Docker Hub  
   Command: `docker pull nginx`

3. Verified image locally  
   Command: `docker images`

4. Ran container on port 8080  
   Command: `docker run -d -p 8080:80 nginx`

5. Checked running container  
   Command: `docker ps`

6. Opened browser  
   URL: `http://localhost:8080`  
   Nginx welcome page was displayed successfully.

## Outcome
- Learned how to pull Docker images  
- Learned how to run containers  
- Understood port mapping and container execution  
