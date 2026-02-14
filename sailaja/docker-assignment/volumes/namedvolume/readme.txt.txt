In this assignment i have created a named volume and attached to the container.

1.I have created a named volume in docker(docker volume create <name>).
2.I have mounted the volume to a container(docker run --name <xyz1> -v <name>:/app/name -d xyz.)
3.I logged into the container(docker exec -it xyz1 /bin/bash).
4.I have entered the volume and created a file in it.
