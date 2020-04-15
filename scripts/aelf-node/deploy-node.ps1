#git clone https://github.com/ideawu/ssdb-bin.git
#cp C:/__w/1/s/scripts/aelf-node/ssdb.conf ssdb-bin/ssdb.conf
#cd ssdb-bin  
#cat ssdb.conf
#./ssdb-server-1.9.4.exe -d ssdb.conf  
#cat log.txt
#netstat -an
mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
ls -l C:\Users\VssAdministrator\AppData\Local\aelf\keys ;
#wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip -OutFile  aelf.zip ;
wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
ls -l aelf\aelf-node\ ;
cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json ;
Start-Job -ScriptBlock {dotnet c:\aelf\aelf-node\AElf.Launcher.dll} ;
# Start-Job -ScriptBlock {ping 8.8.8.8} ;
# dotnet c:\aelf\aelf-node\AElf.Launcher.dll
sleep 10
Get-Job
# C:\Users\ContainerAdministrator\.dotnet\dotnet.exe
# cd aelf/aelf-node
# dotnet AElf.Launcher.dll ;
##Start-Job { & dotnet AElf.Launcher.dll }
#netstat -ant ;
