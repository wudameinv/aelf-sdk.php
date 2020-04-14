# net start w3svc
# docker history  mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 --format "table {{.ID}}\t{{.CreatedBy}}" --no-trunc
#docker build -t aelf/node:test  .
docker run -itd --name aelf  mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
docker exec -t aelf  "mkdir -p c:\aelf\aelf"
# winpty docker exec -it aelf powershell.exe -c 'dotnet c:/aelf/aelf-node/AElf.Launcher.dll'
# #dotnet c:/aelf/aelf-node/AElf.Launcher.dll
# sleep 30
# docker logs aelf
# # # AElf.Launcher.dll

# # echo "sleep 60"
# sleep  60
# docker ps -a 

# echo "docker logs aelf"
# docker logs aelf
# pwd
# dir c:/

