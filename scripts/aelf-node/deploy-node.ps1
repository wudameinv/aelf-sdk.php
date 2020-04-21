cd D:\a\1\s
cp scripts/aelf-node/php.ini c:/tools/php/php.ini
php -c /c/tools/php/php.ini
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
php composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
# php composer.phar install 
# # --no-interaction --prefer-dist
# netstat -an
php phpunit.phar --bootstrap bootstrap.php D:\a\1\s\tests\AElfTest.php 
# wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  redis.zip
# Expand-Archive -Path redis.zip -DestinationPath redis ;
# cd redis
# $job1 = Start-Job -ScriptBlock { cd c:\redis; pwd; }
# Receive-Job -Job $job1
# Start-Job -ScriptBlock { cd c:\redis; redis-server; } 
# sleep 30
# netstat -an
# mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
# cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys;
# # # ls -l C:\Users\VssAdministrator\AppData\Local\aelf\keys ;
# # #wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip -OutFile  aelf.zip ;
# wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip ; 
# Expand-Archive -Path aelf.zip -DestinationPath aelf ;
# ls -l aelf\ ;
# cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json ;
# cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json ;
# cd aelf/aelf-node 

# # # $job = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; pwd; }
# # # Wait-Job $job
# # # Receive-Job -Job $job
# $job = Start-Job -ScriptBlock { cd D:\a\1\s\aelf\aelf-node; dotnet AElf.Launcher.dll; } 

