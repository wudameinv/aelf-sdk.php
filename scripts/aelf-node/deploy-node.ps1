git clone https://github.com/ideawu/ssdb-bin.git
cp C:/__w/1/s/scripts/aelf-node/ssdb.conf ssdb-bin/ssdb.conf
cd ssdb-bin  
cat ssdb.conf
./ssdb-server-1.9.4.exe -d ssdb.conf  
cat log.txt
netstat -an
mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
ls -l C:\Users\VssAdministrator\AppData\Local\aelf\keys ;
wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip -OutFile  aelf.zip ;
Expand-Archive -Path aelf.zip -DestinationPath aelf ;
ls -l aelf\ ;
cp scripts\aelf-node\appsettings.json  aelf\aelf\appsettings.json ;
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf\appsettings.MainChain.TestNet.json ;
cd aelf/aelf
dotnet AElf.Launcher.dll ;
netstat -ant ;
