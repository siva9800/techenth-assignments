#using AWS ubuntu ec2 machine
1.first i have created folder in my ec2 and and git is already installed
2.I have installed docker, nodejs runtime and dependencies using below commands
  sudo apt update -y 
  sudo apt install docker.io
  sudo usermod -aG docker ubuntu
  systemctl status docker
  
2.to get code from github repo to my ec2 macchine, first i have configured my username and mail is using
  git config --global user.name ""
  git config --global user.email ""
3.I did git init to intiate a local repo using git init command
4.then i mapped with my github using
  git remote add origin repourl
  
#Manual deployment without using dockerfile
5.I moved to frontend code path and performed manual deployment without using dockerfile
  apt install npm nodejs -y
  npm -v
  nodejs -v
  
6.build image using below command
  docker build -t frontendappv1 .
  docker images
  docker run -d -p 3000:3000 frontendappv1
  docker ps
7.added 3000 port number in security groups along with 80 port as well
8.accessed the url with public ip and portnumber 3000
9.removed the conatiner and image using below commands
  docker stop containerid
  docker rm containerid
  docker rmi imageid
  
#deployment using dockerfile
10.before using dokerfile i have deleted modules to avoid overwritten
11.proceeded with below commands
   docker build -t frontendappv1 .
   docker images
   docker run --name nodejs -d -p 4000:3000 -e HOST=0.0.0.0 frontendappv1(here nodejs is using local host and privateip, to connect fro internet iam using 0.0.0.0 by adding to env variables)
   docker images && docker ps
13.addeed hostport 4000 in ec2 security groups
14.accessed the url with public ip and portnumber 4000 successfully
12.pushed to dockerhub using below commands
   docker login -u username
   given pat and successfully loggedin
13.before moving to dockerhub need to tag to the current image, followed the same using below commands
   docker tag frontendappv1 username/frontendappv1:1
   docker push frontendappv1 username/frontendappv1:1
 14.stopped and deleted tags, images and conatiners


  
  
   
