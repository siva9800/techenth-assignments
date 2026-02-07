1. To run the container first we need docker Image.
2. To get the docker image use below cmd. nginx is available in public registry
	docker pull  nginx.
3. docker images ->  To view the available images 
4. docker run -d -p 80:80 nginx
  To run the container . -d is used to run in detach mode.(no logs will be shown and container will run in backend)
			-p is used for port
			80 image port
			80  container port
5.docker ps -> show all the running cointainers
6.docker ps -a -> show all the cointainers
7.docker rm <container-id> to remove the container
8.docker start <container-id> to start the container
9.docker stop <container-id> to stop the container
10.docker rmi <image-name:tag> to remove the image