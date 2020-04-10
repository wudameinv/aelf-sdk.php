docker build -f redis/Dockerfile -t windows-redis .
docker run  -itd windows-redis "C:\ProgramData\chocolatey\lib\redis-64\redis-server.exe c:\redis.conf"
docker ps
docker images

echo "sleep 30"
sleep 30
docker ps -a
netstat -an
