docker build -t aelf/node:test  .
docker images 
docker run -d --name aelf -p 8001:8001 aelf/node:test
docker ps
echo "sleep 30"
echo "docker logs aelf"
docker logs aelf
pwd
ls
