FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
# RUN wget https://download.visualstudio.microsoft.com/download/pr/5aad9c2c-7bb6-45b1-97e7-98f12cb5b63b/6f6d7944c81b043bdb9a7241529a5504/dotnet-sdk-3.1.102-win-x64.exe -O C:/dotnet.exe
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;
# RUN cd 'C:\Program Files\dotnet\'
COPY dotnet-install.ps1 /
RUN c:\dotnet-install.ps1;


# RUN wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip  -OutFile  c:\aelf.zip ; \
#     Expand-Archive -Path c:\aelf.zip -DestinationPath c:\aelf ; \
#     dir c:\ ; \
#     cat c:\aelf\aelf\appsettings.json; \
#     mkdir -p C:\Users\VssAdministrator\AppData\Local\aelf\keys ; 
# COPY ./scripts/aelf-node/appsettings.json c:/aelf/aelf/ 
# COPY ./scripts/aelf-node/keys/* C:/Users/VssAdministrator/AppData/Local/aelf/keys

# RUN cd c:/aelf/aelf;\
#     dotnet --version; \
#     dotnet AElf.Launcher.dll ;


