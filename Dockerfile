FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
RUN dotnet --version; 
# SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"] ;

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


