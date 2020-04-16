$progressPreference = 'silentlyContinue'
mkdir 'c:\Program Files\Linux Containers'
Invoke-WebRequest -UseBasicParsing -OutFile preview-1.zip https://github.com/friism/linuxkit/archive/preview-1.zip
# Invoke-WebRequest -UseBasicParsing -OutFile linuxkit.zip https://github.com/friism/linuxkit/releases/download/preview-1/linuxkit.zip
Expand-Archive preview-1.zip -DestinationPath 'c:\Program Files\Linux Containers\'
mv 'c:\Program Files\Linux Containers\linuxkit-preview-1\*'  'c:\Program Files\Linux Containers\'
Invoke-WebRequest -UseBasicParsing -OutFile dockerd.exe https://master.dockerproject.org/windows/x86_64/dockerd.exe
$Env:LCOW_SUPPORTED=1
$env:LCOW_API_PLATFORM_IF_OMITTED="linux"
# .\dockerd.exe -D --experimental -H "npipe:////./pipe//docker_lcow" --data-root c:\lcow
# docker  -H "npipe:////./pipe//docker_lcow" run -itd  -p 8001:8000   aelf/node:latest
