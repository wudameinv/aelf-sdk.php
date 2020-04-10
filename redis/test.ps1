docker build -f redis/Dockerfile -t windows-redis .
docker run  -itd windows-redis
docker ps
docker images

echo "sleep 30"
sleep 30
docker ps -a
netstat -an
