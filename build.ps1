docker build -t aelf/node:test  .
docker images 
docker run -itd --name aelf -p 8001:8001 aelf/node:test dotnet c:/aelf/aelf/AElf.Launcher.dll

echo "sleep 60"
sleep  60
docker ps -a 

echo "docker logs aelf"
docker logs aelf
pwd

