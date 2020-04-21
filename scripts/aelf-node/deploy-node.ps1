 # wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  redis.zip
# Expand-Archive -Path redis.zip -DestinationPath redis ;
# cd redis
# $job1 = Start-Job -ScriptBlock { cd c:\redis; pwd; }
# Receive-Job -Job $job1
# Start-Job -ScriptBlock { cd c:\redis; redis-server; } 
# sleep 30
# netstat -an
cp scripts/aelf-node/php.ini c:\tools\php\php.ini
php -c c:\tools\php\php.ini
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
# php composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
php composer.phar install --no-interaction --prefer-dist
php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php 
# mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
# cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
# wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
# Expand-Archive -Path aelf.zip -DestinationPath aelf ;
# cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json ;
# cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json ;
# cd aelf/aelf-node 
# $job1 = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; pwd; }
# Wait-Job $job
# Receive-Job -Job $job1
# $job2 = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; dotnet AElf.Launcher.dll; } 
# sleep 30
# Receive-Job -Job $job2

netstat -an
sleep 30 
netstat -an
