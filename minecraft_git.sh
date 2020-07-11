#!/bin/bash 

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true


git clone https://git-codecommit.ap-northeast-1.amazonaws.com/v1/repos/EC101_code_test

sleep 5

cd EC101_code_test/

docker build -t game_master .

docker run -d -p 25565:25565 -e EULA=TRUE -e VERSION=1.12     -e TZ=Asia/Taipei  --name mc game_master

docker ps -a 
