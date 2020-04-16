$progressPreference = 'silentlyContinue'
mkdir 'c:\ProgramFiles\Linux Containers'

Invoke-WebRequest -UseBasicParsing -OutFile linuxkit.zip https://github.com/friism/linuxkit/releases/download/preview-1/linuxkit.zip
Expand-Archive linuxkit.zip -DestinationPath 'c:\ProgramFiles\Linux Containers\'
ls -l c:\ProgramFiles\Linux Containers\
rm linuxkit.zip
Invoke-WebRequest -UseBasicParsing -OutFile dockerd.exe https://master.dockerproject.org/windows/x86_64/dockerd.exe
$Env:LCOW_SUPPORTED=1
$env:LCOW_API_PLATFORM_IF_OMITTED="linux"
.\dockerd.exe -D --experimental -H "npipe:////./pipe//docker_lcow" --data-root c:\lcow
