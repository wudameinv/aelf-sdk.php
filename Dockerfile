FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
# RUN ls /Users/ContainerAdministrator/Downloads ;
RUN wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip  -OutFile  c:\aelf.zip ;
RUN Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf  ;
# RUN pwd ;
# RUN ls ;

RUN dir c:\ ; \
    cat c:\aelf\aelf\appsettings.json; \
    mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys ; 
 ;
COPY ./scripts/aelf-node/appsettings.json c:/aelf/aelf/ 
COPY ./scripts/aelf-node/keys/* C:\Users\VssAdministrator\AppData\Local\aelf\keys
RUN  ls -l C:\Users\VssAdministrator\AppData\Local\aelf\keys\;
# COPY scripts/aelf-node/ / ;
# RUN wget https://download.visualstudio.microsoft.com/download/pr/5aad9c2c-7bb6-45b1-97e7-98f12cb5b63b/6f6d7944c81b043bdb9a7241529a5504/dotnet-sdk-3.1.102-win-x64.exe -O dotnet.exe;
# COPY c:\aelf D:\ ;
# EXPOSE 8001 ;
ENTRYPOINT  "dotnet c:\aelf\aelf\AElf.Launcher.dll"

