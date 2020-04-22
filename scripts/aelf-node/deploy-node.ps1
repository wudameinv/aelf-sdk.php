mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json ;
cd aelf/aelf-node 
# $job1 = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; pwd; }
# Wait-Job $job1
# Receive-Job -Job $job1
$job2 = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; dotnet AElf.Launcher.dll; } 
sleep 60
# get-job
# Receive-Job -Job $job2
# netstat -an
# get-job
# sleep 100 
# get-job
cd D:\a\1\s
php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php
