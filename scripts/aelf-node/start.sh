#!/bin/bash
ip=`ip a | grep eth0 |grep 'inet' | awk -F/ '{print $1}'| awk '{print $2}'`
#sudo docker run -itd --name aelf-node-test -v $dir:/opt/node -v $dir/keys:/root/.local/share/aelf/keys -p 8000:8000 -p 6800:6800 -w /opt/node aelf/node:dev dotnet /app/AElf.Launcher.dll
apt install unzip -y
sudo mkdir -p /home/ubuntu/.ssh/aelf/keys
sudo mkdir -p /root/.ssh/aelf/keys
cd ../../
wget https://github.com/AElfProject/AElf/releases/download/v1.0.0-preview1/aelf.zip && unzip aelf.zip
sudo cp scripts/aelf-node/keys/SD6BXDrKT2syNd1WehtPyRo3dPBiXqfGUj8UJym7YP9W9RynM.json  /home/ubuntu/.ssh/aelf/keys
sudo cp scripts/aelf-node/keys/SD6BXDrKT2syNd1WehtPyRo3dPBiXqfGUj8UJym7YP9W9RynM.json  /root/.ssh/aelf/keys
sudo cp scripts/aelf-node/app* aelf/
echo "start node"
cd aelf && dotnet AElf.Launcher.dll >/dev/null 2>&1 &
height=`curl -s http://$ip:8001/api/blockChain/blockHeight`
echo "height is $height"
