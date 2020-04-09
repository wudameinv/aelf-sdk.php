docker build -f redis/Dockerfile -t redis:3.2 .
docker images
docker run -d --name redis -p 6379:6379 redis:3.2
docker ps -a
