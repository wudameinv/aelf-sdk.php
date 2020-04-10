docker build -f redis/Dockerfile -t smithyuk/windows-redis .
docker run  -itd smithyuk/windows-redis
docker images
sleep 30
docker ps -a
netstat -an
