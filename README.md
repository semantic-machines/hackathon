Проект команды  "Смысловые машины" для конкурса "Цифровой прорыв"

установка и запуск:

Linux ubuntu 18.04:

1. создать папку hackathon (название папки не фиксированно и может быть иным) и зайти в нее
2. скачать файл c интегрированной платформы veda: $ wget https://github.com/semantic-machines/veda/releases/download/v5.4.6/Veda-x86_64.AppImage
3. установить право запуска на полученный файл: $ chmod u+x Veda-x86_64.AppImage
4. запустить: ./Veda-x86_64.AppImage
5. после запуска из Veda-x86_64.AppImage будут извлечены ряд файлов
6. установить требуемые дополнительные компоненты (tarantool, redis, haproxy):  ./install-tools/install-dbs.sh ./install-tools/install-haproxy.sh  
7. скопировать проект из папки onto/LNG в папку hakaton/onto/LNG
8. запустить систему: ./control-start.sh 
9. подождать 2-3 минуты для первичной инициализации платформы и установки проекта 
10. открыть приложение в браузере по ссылке: http://127.0.0.1
