# 🐳 Dockerized Multi-Page Web Server

A lightweight, containerized static website — Home, About, and Contact pages — served by Nginx running inside Docker. Built as part of a hands-on Docker containerization task covering image building, container lifecycle management, health monitoring, and troubleshooting.

![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=flat&logo=nginx&logoColor=white)

## 📸 Preview

| Home | About | Contact |
|------|-------|---------|
| Nav bar + hero section | Feature cards | Styled contact form |

*(Add your own screenshots here — see `/screenshots` if you include one)*

## 🏗️ Project Structure

```
docker-webserver/
├── Dockerfile          # Defines the Nginx-based image
├── .dockerignore        # Excludes non-essential files from the build
├── index.html           # Home page
├── about.html            # About page
├── contact.html          # Contact page (static demo form)
├── style.css              # Shared styling across all pages
└── images/
    └── hero.svg           # Homepage illustration
```

## 🚀 Getting Started

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running

### Build the image
```bash
docker build -t my-nginx-site .
```

### Run the container
```bash
docker run -d --name my-webserver -p 8080:80 my-nginx-site
```

### View it
Open [http://localhost:8080](http://localhost:8080) in your browser.

## 🩺 Health & Monitoring

The image includes a built-in `HEALTHCHECK` that pings the server every 30 seconds:

```bash
docker ps            # look for "(healthy)" in the STATUS column
docker stats my-webserver   # live CPU/memory usage
docker logs my-webserver    # request logs
```

## 🔧 Common Commands

| Command | Purpose |
|---|---|
| `docker build -t my-nginx-site .` | Build the image |
| `docker run -d --name my-webserver -p 8080:80 my-nginx-site` | Run the container |
| `docker ps` / `docker ps -a` | List running / all containers |
| `docker stop my-webserver` | Stop the container |
| `docker rm my-webserver` | Remove the container |
| `docker logs my-webserver` | View logs |

## 🐛 Troubleshooting Notes

- **`port is already allocated`** — another container/process is already using port 8080. Either stop it or run this one on a different port: `-p 8081:80`.
- **`open Dockerfile: no such file or directory`** — you're not in the project folder. Run `cd` into the directory containing the Dockerfile before building.
- **Old page still showing after rebuild** — usually a browser cache issue. Hard refresh with `Cmd+Shift+R` (Mac) or open a private/incognito window.

## 🛠️ Built With

- [Nginx (Alpine)](https://hub.docker.com/_/nginx) — lightweight web server
- Docker — containerization
- Vanilla HTML/CSS — no frameworks

## 📄 License

This project is for educational purposes as part of a Docker containerization learning task.

---

**Author:** Om Prakash Majhi — B.Tech CSE, ITER, Siksha 'O' Anusandhan University
