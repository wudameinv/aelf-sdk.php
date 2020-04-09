FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
# RUN wget https://download.visualstudio.microsoft.com/download/pr/5aad9c2c-7bb6-45b1-97e7-98f12cb5b63b/6f6d7944c81b043bdb9a7241529a5504/dotnet-sdk-3.1.102-win-x64.exe -O C:/dotnet.exe
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
# COPY dotnet-install.ps1 /
RUN mkdir -p c:\ssdb;
COPY ssdb-bin c:/ssdb/
RUN ls -l c:/ssdb ;\
    c:/ssdb/ssdb-server-1.9.4.exe -d c:/ssdb/ssdb.conf;\
    netstat -an;
RUN ./dotnet-install.ps1 -InstallDir '~/.dotnet' -Version '3.1.102' ;

# RUN git clone https://github.com/ideawu/ssdb-bin.git ;
# COPY scripts/aelf-node/ssdb.conf ssdb-bin/ 
# RUN cd ssdb-bin  ;\
#     ssdb-server-1.9.4.exe -d ssdb.conf;\
#     netstat -ant;

RUN wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip  -OutFile  c:\aelf.zip ; \
    Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf ; \
    dir c:\ ; \
    cat c:\aelf\aelf\appsettings.json; \
    mkdir -p C:\Users\ContainerAdministrator\AppData\Local\aelf\keys ; 
COPY ./scripts/aelf-node/appsettings.json c:/aelf/aelf/ 
COPY ./scripts/aelf-node/keys/* C:/Users/ContainerAdministrator/AppData/Local/aelf/keys/

RUN netstat -an\
    cd c:/aelf/aelf;\
    C:\Users\ContainerAdministrator\.dotnet\dotnet.exe AElf.Launcher.dll ;


