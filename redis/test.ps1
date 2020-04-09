# docker build -f redis/Dockerfile -t redis:3.2 .
docker images
docker run -id --name redis -p 6379:6379 smithyuk/windows-redis:latest
sleep 30
docker ps -a
netstat -an
