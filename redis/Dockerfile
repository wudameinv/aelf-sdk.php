FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
# # FROM alexellisio/redis-windows:3.2
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
# RUN Invoke-Webrequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression;
# RUN "C:\ProgramData\chocolatey\choco install -y redis-64";

# COPY ./redis/redis.conf C:/
# EXPOSE 6379/tcp
# ENTRYPOINT ["C:\ProgramData\chocolatey\lib\redis-64\redis-server.exe", "c:\redis.conf"]   
LABEL Description=Redis Vendor=MSOpenTech Version=3.2
ENV maxmemory=500MB
ENV protected-mode=yes
EXPOSE 6379/tcp
WORKDIR C:\redis
RUN Invoke-WebRequest -Method Get -Uri https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip -OutFile redis.zip ;\
Expand-Archive redis.zip . ; \
Remove-Item redis.zip -Force;
CMD ["cmd" "/S" "/C" "redis-server --maxmemory %maxmemory% --protected-mode %protected-mode%"]
