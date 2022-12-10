## Часть 1. Готовый докер

 Загрузка образа nginx через команду `docker pull`

![image](resources/1.1.png)
Проверка наличия образа через команду `docker images`

![image](resources/1.2.png)
Запуск образа через комнаду `docker run`

![image](resources/1.3.png)
Проверка наличия процесса через команду `docker ps`

![image](resources/1.4.png)
Просмотр информации о контейнере через команду \
`docker inspect [container_id]`

![image](resources/1.5.png)
Размер докер образа

![image](resources/1.6.png)
Его IP

![image](resources/1.7.png)
Замапленый порт

![image](resources/1.8.png)
Остановка докер образа и проверка его остановки

![image](resources/1.9.png)
Запуск образа с замапленными портами

![image](resources/1.10.png)
Проверка работы сервера

![image](resources/1.11.png)
Остановка докер образа через команду `docker stop [container_id|container_name]` и проверка его остановки для выполнения 2 части задания

![image](resources/1.12.png)

## Часть 2. Операции с контейнерами


Создание

![image](resources/2.1.png)

Чтение конфигурационного файла nginx.conf внутри докер контейнера при помощи команды `exec`

![image](resources/2.2.png)

Создание на локальной машине файла nginx.conf. Настройка в нем по пути /status отдачу страницы статуса сервера

![image](resources/2.2.1.png)
    * 30 строка закомментирована чтобы nginx не цеплял другие конфиг файлы, препятствующие корректрой работе раздела `/status`

Копирование созданного конфиг файла в докер образ командой `docker cp` и перезапуск nginx внутри докер образа через `exec`

![image](resources/2.3.png)

Проверка статуса сервера

![image](resources/2.4.png)

Экспорт докер контейнера в архив через команду `export`

![image](resources/2.5.png)

Остановка контейнера, проверка остановки

![image](resources/2.6.png)
![image](resources/2.7.png)

Удаление образа через `docker rmi [image_id|repository]` 

![image](resources/2.8.png)

Удаление всех контейнеров

![image](resources/2.9.png)

Импортировнаие контейнера через команду `import`

![image](resources/2.10.png)

Запуск импортрованного контейнера

![image](resources/2.11.png)

Проверка статуса сервера

![image](resources/2.12.png)


## Часть 3. Мини веб-сервер

