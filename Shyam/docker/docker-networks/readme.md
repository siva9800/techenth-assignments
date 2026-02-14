# 🐳 Docker Networking – Quick Guide

## What is Docker Networking?

Allows containers to communicate with:

* Other containers
* Host machine
* Internet

---

## List Networks

```bash
docker network ls
```

Default networks: `bridge`, `host`, `none`

---

## 1️⃣ Bridge (Default)

* Private internal network
* Containers get IP
* No name-based communication
* Port mapping required for browser

```bash
docker run -d --name web nginx
docker run -p 8080:80 nginx
```

---

## 2️⃣ Custom Network (Recommended)

* Containers communicate using names
* Automatic DNS
* Better isolation

```bash
docker network create appnet
docker run -d --name backend --network appnet nginx
docker run -it --network appnet alpine sh
```

Test:

```bash
ping backend
```

---

## 3️⃣ Host Network

* Shares host network
* No port mapping needed
* Less isolation

```bash
docker run --network host nginx
```

---

## 4️⃣ None Network

* No internet
* No container communication

```bash
docker run --network none alpine
```

---

## Connect to Multiple Networks

```bash
docker network create frontend
docker network create backend
docker run -d --name api --network frontend nginx
docker network connect backend api
```

---

## Inspect / Remove

```bash
docker network inspect appnet
docker network disconnect backend api
docker network rm appnet
```

---

## Key Rules

* Same network → communication allowed
* Custom network → name-based communication
* `-p` required for browser access
* Networks provide isolation

---

✅ Use **custom bridge networks** in real applications.

