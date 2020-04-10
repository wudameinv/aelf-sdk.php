FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
# FROM alexellisio/redis-windows:3.2
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
# # RUN wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  c:\Redis.zip ;\
# #     Expand-Archive -Path c:\Redis.zip -DestinationPath c:\redis ; 
# # #     ls c:/redis; \
# # #     cd c:\redis\ ; \
# # #     c:\redis\redis-server.exe redis.windows.conf;
# # #     ls ;
# # #  CMD "c:\redis\redis\redis-server.exe c:\redis\redis\redis.windows.conf"
# # CMD [ "c:\redis\redis\redis-server.exe", "c:\redis\redis\redis.windows.conf" ]

# FROM microsoft/windowsservercore

RUN Invoke-Webrequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

RUN "C:\ProgramData\chocolatey\choco install -y redis-64"

COPY redis.conf C:\\redis.conf

EXPOSE 6379
ENTRYPOINT ["redis-server.exe", "C:\\redis.conf"]   
    
