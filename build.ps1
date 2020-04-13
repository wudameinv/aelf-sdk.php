docker build -t aelf/node:test  .
Stop-Service docker
Stop-service hns
Start-service hns
Start-Service docker
docker network prune
docker run -d --name aelf -p 8001:8001  aelf/node:test 
sleep 30
docker logs aelf
# # AElf.Launcher.dll

# echo "sleep 60"
sleep  60
docker ps -a 

# echo "docker logs aelf"
# docker logs aelf
# pwd
# dir c:/

