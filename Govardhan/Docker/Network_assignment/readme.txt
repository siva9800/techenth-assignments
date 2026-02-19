#brige network
1.launched ec2 ubuntu instance
2.I created 2 busybox containers
  docker run --name manager -d busybox sleep infinity
  docker run --name lead -d busybox sleep infinity
  docker ps
3.I have entered into manager container and i have taken private ip
  docker exec -it manager sh
  ip addr show
4.I have copied that ip and entered into lead container and perfomed ping test to the manager ip adr and got the result
  docker exec -it lead sh
  ping managerprivateip


#custom bridge network
1.I have created 2 networks
  docker network ls
  docker network create p1network
  docker network create p2network
2.Iam taking 2 images here httpd and ngnx images for each network
  docker run --name nginx --network p1network -d -p 80:80 nginx
  docker run --name httpd --network p2network -d -p 8080:80 httpd
3.I have checked the docker containers and installed ping command in both containers and got copied the private ip address for ping test
  docker exec -it nginx /bin/bash
  apt update -y
  apt install iputils-ping -y
  ip addr show
  docker exec -it httpd /bin/bash
  apt update -y
  apt install ip-utils -y
  ip addr show
  exit
4.performed ping test but it was unable to perform ping test due to separate networks, so i have attched the other p2network to my current nginx container
  docker network connect p2network nginx
5.I entered into nginx container and performed ping test and got ping result
  docker exec -it nginx /bin/bash
  ping httpdprivateipaddress
6.Finally i tried to access both nginx and httpd from browser using ec2publicip and hostport and got the result


#host network
1.created nginx container in host without port mapping and tried to access from browser with publicip and got result
 docker run --network host nginx

#None network
2.created nginx container in none network and entered into container and installed ping command dand tried to ping google.com and its not got any result
  docker run --name nginx --network none -d nginx
  docker exec -it nginx /bin/bash
  apt update -y
  apt install iputils-ping -y
  ping google.com
  


