# deployment of python backend application using dockerfile and without using dockerfile

#deployemnt without using dockerfile

1.I went to the pythonbackend folder and executed below commands
  sudo apt upadte -y
  sudo apt install python3 -y
  python3 --version

2.Create and activate virtual environment as we are running dirwctly on ec2 machine  
  python3 -m venv myvenv
  source myvenv/bin/activate

3.Insatlled dependencies fastapi and uvicorn using requirements.txt file
   pip install -r requirements.txt

4.I ran the application using beow command
  uvicorn main:app --host 0.0.0.0 --port 8000 (used host 0.0.0.0 to access from external source)

5.Added port 8000 in my ec2 security groups inbound rule

6.I acn able to access my backedappication in web using myec2 publicip with postnumber

#deployment using dockerfile

1.Run the below command in pythonbackend folder
  docker build -t backendapp .
  docker images
  docker run --name pythonbackend -d -p 8000:8000 backendapp
  docker ps
  docker exec -it conatinerid /bin/bash
2.I have accessed the backendapp from web using publicip with port 8000

3.using below commands pushed to docker registry
  docker login -u govardhan888 (giving PAT)

4.tagged the image before pushing image to docker registry
  docker tag pythonbackend govardhan888/pythonbackend:1

5 finally pushed my image to docker registry
  docker push govardhan888/pythonbackend:1

