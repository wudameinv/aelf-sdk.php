
docker build  -t windows-redis .
docker images
docker run --name redis -p 6379:6379 -itd  windows-redis
docker ps 
sleep 30
# docker ps -a
# docker run -itd --name redis  windows-redis 
# docker ps -a 
# echo "sleep 30"
# sleep 30

# docker ps
# echo "Web server running at:"
# docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" redis
# docker run  -itd windows-redis "C:\ProgramData\chocolatey\lib\redis-64\redis-server.exe"
# docker ps
# docker images

# echo "sleep 30"
# sleep 30
# docker ps -a
# netstat -an
