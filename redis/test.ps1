docker build redis/Dockerfile -t smithyuk/windows-redis .
docker run -p 6379:6379 -ti smithyuk/windows-redis
docker images
sleep 30
docker ps -a
netstat -an
