#deploying frontent application using multistagedockerfile

1.First enter into the frontent project directory
  cd /day8/frontent

2.buid the dockerimage using multistage-dockerfile
  docker build -f dockerfile-multistage -t frontend .

3.Run the container by passing root user in command, as i got error because of permission issues since appuser which is added in dockerfile has no write and execution permission, so without changing anything in  dockerfile I have passed the user in command
  docker run --name myapp --user root -d -p 3000:80 frontend

4.Enabled port number 3000 in security groups and tried to access from browser
  
