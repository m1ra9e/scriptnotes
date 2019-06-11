rem этот пакетный файл предназначен для проверки связи с сервером БД "s3po"

echo off
cd\
cls
echo -----------------------
echo Link-test: SERV-DB s3po
echo -----------------------
echo on
tnsping s3po.world
ping 192.168.100.100 -n 10
pathping 192.168.100.100
tracert 192.168.100.100