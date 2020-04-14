docker build -t aelf/node:test .
docker run -itd aelf/node:test 
docker ps
sleep 30
docker ps -a
