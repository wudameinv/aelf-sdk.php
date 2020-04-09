docker build -f redis/Dockerfile -t redis:3.2 .
docker images
docker run -d --name redis 
docker ps -a
