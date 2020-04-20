pwd
mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys
wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip 
Expand-Archive -Path aelf.zip -DestinationPath aelf
ls -l aelf\
cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json
cd aelf/aelf-node 
$job = Start-Job -ScriptBlock { pwd; } -WorkingDirectory "D:\a\1\s\aelf\aelf-node"
Wait-Job $job
Receive-Job -Job $job
Start-Job -ScriptBlock { cd; dotnet AElf.Launcher.dll; } -WorkingDirectory "D:\a\1\s\aelf\aelf-node"
sleep 60
Get-Job
netstat -an
cd D:\a\1\s\
cp scripts/aelf-node/php.ini /c/tools/php/php.ini
php -c /c/tools/php/php.ini
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
php composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
php composer.phar install --no-interaction --prefer-dist
php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php 
