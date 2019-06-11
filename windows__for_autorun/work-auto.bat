echo off
cls
echo Please wait...
ping -n 10 127.0.0.1 > NUL
echo __________________________________
echo I will run all programs for work
echo __________________________________
ping -n 10 127.0.0.1 > NUL
echo MS Outlook
echo Opera
echo Total Commander 
echo Radmin
echo zayavki-info
echo __________________________________
ping -n 30 127.0.0.1 > NUL
echo Start MS Outlook
ping -n 30 127.0.0.1 > NUL
start D:\progs\scripts\auto\outlook.lnk
ping -n 10 127.0.0.1 > NUL
echo Start Opera
ping -n 10 127.0.0.1 > NUL
start D:\progs\scripts\auto\opera.lnk
ping -n 10 127.0.0.1 > NUL
echo Start Total Commander
ping -n 10 127.0.0.1 > NUL
start D:\progs\scripts\auto\totalcmd.lnk
ping -n 10 127.0.0.1 > NUL
echo Start Radmin
start D:\progs\scripts\auto\radmin.lnk
ping -n 10 127.0.0.1 > NUL
echo Start zayavki-info
start D:\progs\scripts\auto\zayavki.lnk
ping -n 10 127.0.0.1 > NUL
echo Start Web-Server
start D:\progs\scripts\auto\denwer.lnk
ping -n 10 127.0.0.1 > NUL
echo Start VirtualBox for second Web-Server
start D:\progs\scripts\auto\vm.lnk
exit