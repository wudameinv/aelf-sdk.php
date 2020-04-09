docker build -t aelf/node:test  .
docker images 
docker run -d --name aelf aelf/node:test
docker ps
echo "sleep 30"
echo "docker logs aelf"
docker logs aelf

