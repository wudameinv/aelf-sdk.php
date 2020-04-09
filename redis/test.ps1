docker build -f redis/Dockerfile -t redis:3.2 .
docker images
docker run -itd --name redis -p 6379:6379 redis:3.2 "c:\redis\redis-server.exe c:\redis\redis.windows.conf"
sleep 30
docker ps -a
netstat -an
