net start w3svc
docker build -t aelf/node:test  .
docker run -itd --name aelf -p 8001:8001 --rm --entrypoint powershell  -w c:/aelf/aelf-node aelf/node:test "C:/Users/ContainerAdministrator/.dotnet/dotnet.exe c:/aelf/aelf-node/AElf.Launcher.dll"
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

