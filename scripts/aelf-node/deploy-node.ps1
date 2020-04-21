cp scripts\aelf-node\php.ini c:\tools\php\php.ini
php -c c:\tools\php\php.ini
# php -r " eval('?>' .file_get_contents('https://getcomposer.org/installer'));"
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
php composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
php composer.phar install --no-interaction --prefer-dist
php phpunit.phar --bootstrap bootstrap.php tests/AElfTest.php 

