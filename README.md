# ivankuchin85_infra
ivankuchin85 Infra repository
Необходимо создать в каталоге ~/.ssh (или отредактировать) файл config, добавив в него строки вида
Host someinternalhost
    HostName someinternalhost
    ProxyJump appuser@35.228.86.247
    User appuser
    IdentityFile ~/.ssh/appuser

После чего можно подключаться к внутреннему хосту командой вида ssh internalhost

чтобы добавить алиас в систему нужно ввести команду alias someinternalhost='ssh someinternalhost'
тогда можно будет подключаться просто набрав someinternalhost в шелле

bastion_IP = 35.228.86.247
someinternalhost_IP = 10.166.0.10

testapp_IP = 34.90.65.86
testapp_port = 9292
