# Docker Fullstack Contact App

This project runs a fullstack app using Docker Compose.

## Components

- Frontend: HTML + Nginx
- Backend: Node.js Express API
- Database: MySQL
- Reverse Proxy: Nginx

## Run in EC2

```bash
sudo apt update
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
newgrp docker
```

Upload or unzip the project, then run:

```bash
cd fullstack-docker
docker-compose up --build -d
```

Check containers:

```bash
docker ps
```

Open in browser:

```text
http://EC2_PUBLIC_IP
```

## API Testing

```bash
curl http://localhost:3000
curl http://localhost:3000/contacts

curl -X POST http://localhost:3000/contacts \
-H "Content-Type: application/json" \
-d '{"name":"Kumar","phone":"9999999999","email":"kumar@example.com"}'

curl -X PUT http://localhost:3000/contacts/1 \
-H "Content-Type: application/json" \
-d '{"name":"Updated Name","phone":"8888888888","email":"updated@example.com"}'

curl -X DELETE http://localhost:3000/contacts/1
```

## Useful Commands

```bash
docker-compose logs -f
docker logs backend
docker logs mysql-db
docker exec -it mysql-db mysql -uroot -proot123
docker-compose down
docker-compose up --build -d
docker-compose down -v
```
