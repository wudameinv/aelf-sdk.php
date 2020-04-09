FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN pwd

RUN wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip  -OutFile  C:\aelf.zip
RUN Expand-Archive -Path aelf.zip -DestinationPath C:\aelf ;
COPY C:\aelf /opt/

RUN wget https://download.visualstudio.microsoft.com/download/pr/5aad9c2c-7bb6-45b1-97e7-98f12cb5b63b/6f6d7944c81b043bdb9a7241529a5504/dotnet-sdk-3.1.102-win-x64.exe -O dotnet.exe



# Expose the Site
EXPOSE 8001

# Change working directory to web root
WORKDIR /opt
