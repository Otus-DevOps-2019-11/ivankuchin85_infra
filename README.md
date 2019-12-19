# ivankuchin85_infra
ivankuchin85 Infra repository
Необходимо создать в каталоге ~/.ssh (или отредактировать) файл config, добавив в него строки вида
Host someinternalhost
    HostName someinternalhost
    ProxyJump appuser@35.228.86.247
    User appuser
    IdentityFile ~/.ssh/appuser
    
После чего можно подключаться к внутреннему хосту командой вида ssh internalhost
