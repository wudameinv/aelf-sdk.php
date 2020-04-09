docker build -t aelf/node:test  .
docker images 
docker run -d --name aelf aelf/node:test
docker ps
docker logs aelf
