wget http://18.203.235.132:8000/aelf-node.zip  -OutFile  c:\aelf.zip
Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf
dir c:\aelf\

dir c:\
./dotnet-install.ps1 -InstallDir '~/.dotnet' -Version '3.1.102' 
mkdir -p C:\Users\ContainerAdministrator\AppData\Local\aelf\keys
cp c:/appsettings.json c:/aelf/aelf-node/
cp c:/*.json C:/Users/ContainerAdministrator/AppData/Local/aelf/keys/
dotnet c:/aelf/aelf-node/AElf.Launcher.dll
