docker build redis/Dockerfile -t smithyuk/windows-redis .
docker run -p 6379:6379 -id smithyuk/windows-redis
docker images
sleep 30
docker ps -a
netstat -an
