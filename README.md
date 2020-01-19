# ivankuchin85_infra
#ivankuchin85 Infra repository

Необходимо создать в каталоге ~/.ssh (или отредактировать) файл config, добавив в него строки вида
`Host someinternalhost`  
    `HostName someinternalhost`  
    `ProxyJump appuser@35.228.86.247`  
    `User appuser`  
    `IdentityFile ~/.ssh/appuser`

После чего можно подключаться к внутреннему хосту командой вида ssh internalhost

чтобы добавить алиас в систему нужно ввести команду alias someinternalhost='ssh someinternalhost'
тогда можно будет подключаться просто набрав someinternalhost в шелле

`bastion_IP = 35.228.86.247`  
`someinternalhost_IP = 10.166.0.10`

`testapp_IP = 34.90.65.86`  
`testapp_port = 9292`

## ДЗ packer

### Основное задание
1. Установлен packer
2. сформирован конфигурационный файл с параметрами создания образа в google cloud
3. создана ВМ с использованием образа google cloud
4. на данной ВМ поднято приложение puma
5. конфигурационный файл для создания образа ВМ параметризован с помощью отдельного файла, где хранятся переменные

## ДЗ terraform-1

### Основное задание
1. Установлен terraform-1
2. Созданые конфигурационные файлы для создания ВМ на google cloud
3. Создана ВМ из командной строки с помощью terrform и созданных конфигурационных файлов
4. Определены указанные в задании input-переменные
5. Проверена работа тестового приложения в браузере

### Задание со *
1. в основной файл конфигурации terraform  добавлено создание нескольких пользователей для подключения по SSH 

## ДЗ terraform-2

### Основное задание
1. Импортирована существующная инфраструктура в terraform
2. Настроена зависимость ресурсов
3. Структуризация ресурсов путем разделения на файлы tf
4. Ресурсы структурированы путем разбиения на модули
5. Добавлены параметры в модули
6. Сделано разбинение на среды