# wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  C:\Redis.zip ;
# Expand-Archive -Path C:\Redis.zip -DestinationPath C:\Redis ;
# (cd C:\Redis) -and (C:\Redis\redis-server.exe --service-install C:\Redis\redis.windows.conf --loglevel verbose) -and (redis-server.exe --service-start);
# wget https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.msi ;
# vagrant init hashicorp/bionic64;
# vagrant up;
# wget https://raw.github.com/ServiceStack/redis-windows/master/downloads/vagrant-redis.zip -OutFile  C:\vagrant-redis.zip;
# Expand-Archive -Path C:\vagrant-redis.zip -DestinationPath C:\vagrant-redis ;
# cd c:\vagrant-redis;
# vagrant up;
git clone https://github.com/ideawu/ssdb-bin.git
ls
wget https://github.com/ideawu/ssdb/archive/1.9.7.zip -o 1.9.7.zip
unzip 1.9.7.zip 
cp scripts/aelf-node/ssdb.conf ./ssdb-1.9.7/ssdb.conf
./ssdb-bin/ssdb-server-1.9.4.exe -d ./ssdb-1.9.7/ssdb.conf
cd D:\a\1\s;
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
