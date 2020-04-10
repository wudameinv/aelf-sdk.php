docker build -f redis/Dockerfile -t windows-redis .
docker rm -f windows-redis
docker run -d --name redis -p 6379:6379  windows-redis
echo "Web server running at:"
docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" redis
# docker run  -itd windows-redis "C:\ProgramData\chocolatey\lib\redis-64\redis-server.exe"
# docker ps
# docker images

# echo "sleep 30"
# sleep 30
# docker ps -a
# netstat -an
