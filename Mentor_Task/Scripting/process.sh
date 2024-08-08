#!/bin/bash

mkdir process_parent 2> /dev/null

cd process_parent

touch file.txt

echo "process" > file.txt

grep "process" file.txt

df -h > disk.log

free -h > memory.log

ps aux --sort=-%mem | head -n 6 > memory.log

mkdir process_jar 2> /dev/null

cd process_jar

sudo touch process.jar

sudo useradd -m -G root Newuser

sudo chown Newuser:root process.jar

sudo chmod 755 process.jar

sudo -u newuser java -jar process.jar

mkdir processlog 2> /dev/null

LOG="processlog/process.log"
NAME=$(hostname)
IP=$(hostname -i)
DATE=$(date)

echo "hi i am @${NAME} , logged into meachine @${IP}, on @${DATE} " > $LOG

cat processlog/process.log

sudo userdel -r Newuser
