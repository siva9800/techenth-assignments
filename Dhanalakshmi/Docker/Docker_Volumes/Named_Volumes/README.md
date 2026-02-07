1. docker volume create <volume-name> -> Create docker volumes
  volumes will be store at host level, not at container level.
2. docker volume ls
3. Mount the volume to the container
Eg : docker run --name <container-name> -v <volume-name>:<directory of container> -d -p 80:8000 <Image-name>

docker run --name python-backend-server -v notes:/app/notes -d -p 80:8000 pythonImage.be

