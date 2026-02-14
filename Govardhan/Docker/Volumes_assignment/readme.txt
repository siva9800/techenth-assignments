# Docker volumes creations

#named volume
1. go to cd /practice/learn-docker/day4/python-backend/

2. create docker images using
   docker build -t govardhan888/backendapp:1 .
   docker images

3. create docker namedvolume using below command
   docker volume create backendvolume
   docker volume ls

4.run image attaching the named volume while creating container
  docker run --name namedvolume -v backendvolume:/app/backendvolume -d -p 4000:8000 govardhan888/backendapp:1
  docker ps

5.check the volume inside the container
  docker exec -it namedvolume /bin/bash

6.created a file in attached volume inside the container
  cd /app/backendvolume
  echo "welcome to docker" >> vinay.txt

7.now removed container to check namedvolume is persistent or not
  docker ps
  docker stop namedvolume
  docker rm namedvolume
  docker run --name namedvolume -v backendvolume:/app/backendvolume -d -p 4000:8000 govardhan888/backendapp:1

8.checked the volume inside container after restart also and the volume is persistent
  docker exec -it namedvolume /bin/bash
  cd /app/backendvolume
  cat vinay.txt


#bind mount volume

9.in host machine, first create a vinay directory and created a sai file inside it
  docker run --name bindvolume -v /home/ubuntu/practice/learn-docker/day4/python-backend/vinay:/app/vinay -d -p 5000:8000 govardhan888/backendapp:1
  docker exec -it bindvolume /bin/bash

10 I can see the folder inside container which i have created in host

