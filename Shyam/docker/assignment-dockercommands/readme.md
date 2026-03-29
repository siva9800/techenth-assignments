# Docker Nginx Practice

This assignment demonstrates basic Docker commands using the Nginx image, including pulling images, running containers, managing containers, and accessing the application through a browser.

## Commands Used

Pull Nginx image:
docker pull nginx

List Docker images:
docker images

Run Nginx container with port mapping:
docker run -d -p 8080:80 nginx

List running containers:
docker ps

List all containers (running and stopped):
docker ps -a

Access application in browser:
http://localhost:8000

Start a container:
docker start <container_id>

Stop a container:
docker stop <container_id>

Remove a container:
docker rm <container_id>

Remove Nginx image:
docker rmi nginx

## Summary
This repository is used to practice basic Docker container lifecycle operations using the Nginx image.
