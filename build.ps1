docker build -t aelf/node:test  .
docker run -d --name aelf -p 8001:8001  aelf/node:test 
# AElf.Launcher.dll

echo "sleep 60"
sleep  60
docker ps -a 

echo "docker logs aelf"
docker logs aelf
pwd
dir c:/

