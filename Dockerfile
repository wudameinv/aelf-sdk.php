FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
COPY ./dotnet-install.ps1 /

RUN ./dotnet-install.ps1 -InstallDir '~/.dotnet' -Version '3.1.102' ;

RUN wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip  -OutFile  c:\aelf.zip ; \
    Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf ; \
    dir c:\ ; \
    cat c:\aelf\aelf\appsettings.json; \
    mkdir -p C:\Users\ContainerAdministrator\AppData\Local\aelf\keys ; 
COPY ./scripts/aelf-node/appsettings.json c:/aelf/aelf/ 
COPY ./scripts/aelf-node/keys/* C:/Users/ContainerAdministrator/AppData/Local/aelf/keys/

# RUN netstat -an ;\
#     cd c:/aelf/aelf;\
#     C:\Users\ContainerAdministrator\.dotnet\dotnet.exe AElf.Launcher.dll ;


