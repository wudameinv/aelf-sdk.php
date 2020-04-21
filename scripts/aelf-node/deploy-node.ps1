mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
# ls -l C:\Users\VssAdministrator\AppData\Local\aelf\keys ;
#wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip -OutFile  aelf.zip ;
wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
ls -l aelf\ ;
cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json ;
cd aelf/aelf-node 
$job = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; pwd; }
# Wait-Job $job
Receive-Job -Job $job
Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; dotnet AElf.Launcher.dll; } 
