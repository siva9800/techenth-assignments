# Dockerizing a React Application

## 1️⃣ Traditional Way (Without Docker)

Steps:

* Install Node.js & npm
* Clone project
* Install dependencies
* Start app

```bash
npm install
npm start
```

❌ Problems:

* Version mismatch
* Dependency issues
* Works on my machine problem

---

## 2️⃣ Dockerized Way

✔ Same environment everywhere
✔ Easy deployment
✔ Portable & production-ready

---

## Key Concepts

**Dockerfile** → Instructions to build image
**Docker Image** → Application package
**Docker Container** → Running application

---

## React Dockerfile

```Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

---

## Build Image

```bash
docker build -t react-app .
```

## Run Container

```bash
docker run -d -p 3000:3000 react-app
```

Open:
👉 [http://localhost:3000](http://localhost:3000)

---

## Push to Docker Hub

```bash
docker login
docker tag react-app username/react-app
docker push username/react-app
```

---

✅ React app successfully dockerized and deployed using Docker.

