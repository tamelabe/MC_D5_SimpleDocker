# Simple Docker

Введение в докер. Разработка простого докер образа для собственного сервера.

## Part 1. Готовый докер

## Часть 1. Готовый докер

Загрузка образа nginx через команду `docker pull`
![image](src/resources/1.1.png)

Проверка наличия образа через команду `docker images`
![image](src/resources/1.2.png)

Запуск образа через комнаду `docker run`
![image](src/resources/1.3.png)

Проверка наличия процесса через команду `docker ps`
![image](src/resources/1.4.png)

Просмотр информации о контейнере через команду \
`docker inspect [container_id]`
![image](src/resources/1.5.png)

Размер докер образа
![image](src/resources/1.6.png)

Его IP
![image](src/resources/1.7.png)

Замапленый порт
![image](src/resources/1.8.png)

Остановка докер образа и проверка его остановки
![image](src/resources/1.9.png)

Запуск образа с замапленными портами
![image](src/resources/1.10.png)

Проверка работы сервера
![image](src/resources/1.11.png)
Остановка докер образа через команду `docker stop [container_id|container_name]` и проверка его остановки для выполнения 2 части задания

![image](src/resources/1.12.png)

## Часть 2. Операции с контейнерами


Создание
![image](src/resources/2.1.png)

Чтение конфигурационного файла nginx.conf внутри докер контейнера при помощи команды `exec`
![image](src/resources/2.2.png)

Создание на локальной машине файла nginx.conf. Настройка в нем по пути /status отдачу страницы статуса сервера
![image](src/resources/2.2.1.png)
* 30 строка закомментирована чтобы nginx не цеплял другие конфиг файлы, препятствующие корректрой работе раздела `/status`

Копирование созданного конфиг файла в докер образ командой `docker cp` и перезапуск nginx внутри докер образа через `exec`
![image](src/resources/2.3.png)

Проверка статуса сервера
![image](src/resources/2.4.png)

Экспорт докер контейнера в архив через команду `export`
![image](src/resources/2.5.png)

Остановка контейнера, проверка остановки
![image](src/resources/2.6.png)
![image](src/resources/2.7.png)

Удаление образа через `docker rmi [image_id|repository]`
![image](src/resources/2.8.png)

Удаление всех контейнеров
![image](src/resources/2.9.png)

Импортировнаие контейнера через команду `import`
![image](src/resources/2.10.png)

Запуск импортрованного контейнера
![image](src/resources/2.11.png)

Проверка статуса сервера
![image](src/resources/2.12.png)


## Часть 3. Мини веб-сервер


Загрузка и запуск образа nginx, запуск контейнера
![image](src/resources/3.1.png)

Открытие контейнера через VSCode (перед запуском добавить в группу docker через `usermod -aG docker $USER`)
![image](src/resources/3.2.png)

Установка gcc, spawn-dcgi, libfcgi-dev в контейнер
![image](src/resources/3.3.png)

Создание сервера за языке С и FastCGI внутри контейнера
![image](src/resources/3.5.png)

Компиляция и запуск сервера внутри контейнера
![image](src/resources/3.6.png)

Создание nginx.conf
![image](src/resources/3.4.png)

Копирование конфигурационного файла и перезапуск nginx
![image](src/resources/3.7.png)

Открытие страницы
![image](src/resources/3.8.png)




## Часть 4. Свой докер

Создание докерфайла, заполнение инструкциями, включающие:
- сборку исходников мини сервера на FastCgi из Pt.3
- запуск его на 8080 порту
- копирование внутрь образа написанный ./nginx/nginx.conf
- запуск nginx
  ![image](src/resources/4.1.png)

Удаление всех образов и контейнеров
![image](src/resources/4.2.png)

Сборка образа через команду `docker build` с указанием имени и тега
![image](src/resources/4.3.png)

Проверка результата сборки
![image](src/resources/4.4.png)

Запуск собранного докер образа с маппингом 81 порта на 80 на локальной машине и маппингом папки ./nginx внутрь контейнера по адресу, где лежат конфигурационные файлы nginx'а
![image](src/resources/4.5.png)

Проверка  доступа страницы по localhost:80
![image](src/resources/4.6.png)

Добавление в ./nginx/nginx.conf проксирование странички /status, по которой надо отдавать статус сервера nginx
![image](src/resources/4.7.png)

Перезапуск образа, проверка
![image](src/resources/4.8.png)



## Часть 5. Dockle

Сканирование образа через Dockle.
![image](src/resources/5.1.png)

Исправление ошибок в Dockerfile
![image](src/resources/5.2.png)

Повторное сканование
![image](src/resources/5.3.png)

Заново билдим и проверяем, что все работает
![image](src/resources/5.4.png)
![image](src/resources/5.5.png)
![image](src/resources/5.6.png)


## Часть 6. Базовый Docker Compose

Создание конфигурационных файлов
- прокси:
  ![image](src/resources/6.1.png)
  -сервер:
  ![image](src/resources/6.2.png)

Dockerfile из Pt. 5
![image](src/resources/6.3.png)

Создание docker compose файла
![image](src/resources/6.4.png)

Билд при помощи `docker-compose build`
![image](src/resources/6.5.png)
Поднятие при сомощи `docker-compose up`
![image](src/resources/6.6.png)
![image](src/resources/6.7.png)

Проверка
![image](src/resources/6.8.png)
