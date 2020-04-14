FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
# FROM mcr.microsoft.com/windows/servercore:ltsc2019
WORKDIR /azp
# SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
COPY dotnet-install.ps1 .
RUN dotnet-install.ps1 -InstallDir '~/.dotnet' -Version '3.1.102' ;
RUN wget http://18.203.235.132:8000/aelf-node.zip  -OutFile  c:\aelf.zip ; \
    Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf ; \
    dir c:\aelf\ ; \
    cat c:\aelf\aelf-node\appsettings.json; \
    mkdir -p C:\Users\ContainerAdministrator\AppData\Local\aelf\keys ; 
COPY scripts/aelf-node/appsettings.json c:/aelf/aelf-node/ 
COPY scripts/aelf-node/keys/* C:/Users/ContainerAdministrator/AppData/Local/aelf/keys/
COPY build.ps1 .
# CMD ["dotnet", "c:/aelf/aelf-node/AElf.Launcher.dll"]
# RUN netstat -an ;\
#     cd c:/aelf/aelf-node;\
#     C:\Users\ContainerAdministrator\.dotnet\dotnet.exe AElf.Launcher.dll ;
#CMD ["C:\Users\ContainerAdministrator\.dotnet\dotnet.exe","c:\aelf\aelf-node\AElf.Launcher.dll"] 
EXPOSE 8001
EXPOSE 80
CMD powershell .\build.ps1
#ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
# CMD ["C:\Users\ContainerAdministrator\.dotnet\dotnet.exe","c:\aelf\aelf-node\AElf.Launcher.dll"] 
