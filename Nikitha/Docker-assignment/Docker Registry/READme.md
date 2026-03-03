Docker registry
1. First I have created EC2 instance using ubuntu AMI
2. installed docker in that ec2 instance
3. Now I have to build image using docker file or check any images present in our local
4. we can't push our local images to docker hub registry
5. To push our images to dockerhub registry first we need dockerhub registry account
6. Create dockerhub registry account and create repository in it
7. Now tag your image like: docker tag <local-image-name> username/reponame:tagname
ex: docker tag backend-server nikitha86/docker-practice-repo:v1
8. Before pushing image to docker hub first we have to login our dockerhub in our server using command: docker login  
9. Now push our image into docker hub: docker push <username/reponame:tagname>
ex: docker push nikitha86/docker-practice-repo:v1
