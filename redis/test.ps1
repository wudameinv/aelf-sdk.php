# docker build -f redis/Dockerfile -t redis:3.2 .
docker images
docker run -itd --name redis -p 6379:6379 amd64/redis
sleep 30
docker ps -a
netstat -an
