#!/bin/bash

DIR=$(realpath $(dirname $0))

set -e

echo Build base
cd $DIR/base
./build

echo Build host-base
cd $DIR/host-base
./build

echo Build gateway base
cd $DIR/gw-base
./build

echo Build IDS
cd $DIR/ids
./build

echo Build IPS
cd $DIR/ips
./build

echo Build Googler
cd $DIR/benign-googler
./build

echo Build Juice Shop
cd $DIR/benign-wg
./build

echo Build DVWA
cd $DIR/benign-dvwa
./build

echo Build SYN attacker
cd $DIR/malish-syn
./build

echo Build APT attacker
cd $DIR/malish-apt
./build

echo Build metasploit
cd $DIR/malish-metasploit
./build

echo Build sqli
cd $DIR/malish-sqli
./build

echo Build halsey
cd $DIR/halsey
./build $DIR/../conf/gcp.json



