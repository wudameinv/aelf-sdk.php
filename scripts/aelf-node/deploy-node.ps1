pwd
mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys
cp -r scripts\aelf-node\keys\* C:\Users\VssAdministrator\AppData\Local\aelf\keys
wget http://18.203.235.132:8000/aelf-node.zip -OutFile  aelf.zip 
Expand-Archive -Path aelf.zip -DestinationPath aelf
ls -l aelf\
cp scripts\aelf-node\appsettings.json  aelf\aelf-node\appsettings.json
cp scripts\aelf-node\appsettings.MainChain.TestNet.json  aelf\aelf-node\appsettings.MainChain.TestNet.json
cd aelf/aelf-node 
$job = Start-Job -ScriptBlock {dotnet AElf.Launcher.dll}
$job1 = Start-Job -ScriptBlock { New-Item test.txt }
Wait-Job $job1
Receive-Job -Job $job1
sleep 60
Get-Job
Receive-Job -Job $job
New-Item test2.txt
ls test2.txt
ls test.txt
#netstat -an
cd D:\a\1\s\
cp scripts/aelf-node/php.ini /c/tools/php/php.ini
php -c /c/tools/php/php.ini
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
php composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
php composer.phar install --no-interaction --prefer-dist
php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php 
