wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  redis.zip
Expand-Archive -Path redis.zip -DestinationPath redis1 ;
ls -l D:\a\1\s\redis1
# $job1 = Start-Job -ScriptBlock { cd D:\a\1\s\redis1; .\redis-server.exe; }
# netstat -an
# get-job
sleep 30
# Receive-Job -Job $job1
# get-job
netstat -an
mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
# wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
ls -l D:\a\1\s\aelf\aelf
cp scripts\aelf-node\appsettings.json  aelf\aelf\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf\appsettings.MainChain.TestNet.json ;
cd aelf/aelf
# $job2 = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf; dotnet AElf.Launcher.dll; } 
# sleep 60
# cd D:\a\1\s
# php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php
