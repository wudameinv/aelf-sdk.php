FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
RUN wget https://github.com/microsoftarchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile  c:\Redis.zip ;\
    Expand-Archive -Path c:\Redis.zip -DestinationPath c:\redis ; \
    cd c:\redis\redis ; \
    ls ;
CMD "c:\redis\redis\redis-server.exe c:\redis\redis\redis.windows.conf"
   
    
