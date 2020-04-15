docker build -t aelf/node:test .
# docker run -itd aelf/node:test dotnet c:/aelf/aelf-node/AElf.Launcher.dll
docker run -itd -p 8001:8001 -p 88:80  -v ./:/test/ aelf/node:test  dotnet c:/aelf/aelf-node/AElf.Launcher.dll

docker ps
sleep 30
docker ps -a
