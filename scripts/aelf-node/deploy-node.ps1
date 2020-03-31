wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  C:\Redis.zip ;
 Expand-Archive -Path C:\Redis.zip -DestinationPath C:\Redis ;
 ls -l C:\Redis ;
(cd C:\Redis) -and (C:\Redis\redis-server.exe --service-install C:\Redis\redis.windows.conf --loglevel verbose) -and (redis-server.exe --service-start) -and (ps -ef | grep redis) -and (netstat -an);
cd D:\a\1\s
mkdir -p C:\Users\Default\AppData\Local\key\ ;
cp -r scripts\aelf-node\keys\* C:\Users\Default\AppData\Local\key\ ;
ls -l C:\Users\Default\AppData\Local\key\ ;
wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip -OutFile  aelf.zip ;
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
ls -l aelf\ ;
cp scripts\aelf-node\appsettings.json  aelf\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\appsettings.MainChain.TestNet.json ;
(cd aelf) -and (dotnet AElf.Launcher.dll) ;
#>log.txt 2>&1
netstat -ant ;
