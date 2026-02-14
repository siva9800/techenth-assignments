# Docker Volumes (Very Short)

## Container Storage

* Temporary
* Deleted when container is removed ❌

---

## Types of Volumes

### 1️⃣ Named Volume (Recommended ✅)

* Managed by Docker
* Persistent
* Production-safe

```bash
docker volume create myvolume
docker run -it -v myvolume:/data ubuntu bash
```

Data inside `/data` persists.

---

### 2️⃣ Bind Mount

* Maps host folder to container
* Good for development

```bash
docker run -it -v /host/path:/app/data ubuntu bash
```

---

## Final Rule

Container = Temporary ❌
Named Volume = Permanent ✅
Use volumes for databases & important data 🚀

