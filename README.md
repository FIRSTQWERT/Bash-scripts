# Bash-scripts
Различные скрипты для автоматизации моих рабочих рутинных задач.

==============================================================
## Domofon
Keys.sh - скрипт для обработки ключей домофонов и преобразования их в базу данных с расширением *.cadb для загрузки из через приложение TI-Consierge.

Скрипт keys.sh запрашивает номер дома и номер подъезда, эти данные подставляет 
в имя создаваемого файла: номер_дома_номер_подъезда.cadb

В папке со скриптом должны лежать два файла keys.txt и vezdehod.txt

###### keys.txt - файл с ключами и номерами квартир. Разделитель - табуляция.
```
Структура:
номер_квартиры	первый_ключ	второй_ключ

Пример:
1	8670DBD1	7606F6D0
2	F67BDBD1	59312604
```
###### vezdehod.txt - файл с "универсальными" ключами, которые добавляются в базу всех домофонов.

```
Структура:
первый_ключ
второй_ключ

Пример:
E640F2D0
B659F4D0
```
==============================================================
## Detail
detail.sh – детализация звонков по отдельным номерам.
Скрипт читает файл detail.txt и выводит готовую команду для вставки в sql на svr1.tc.lan

select src,dst,dir,calldate,count,count_minutes,sum,sum_minutes from bill where operator=0 and direction='outgoing' and src IN (' 4994264684',' 4958032864','4958032570','4958032185','4958033926','4958034095','4958034399');

==============================================================

otkl8.sh – Отключение МГ/МН связи на АТС M-200.
Скрипт читает файл otkl8.txt и выводит готовую команду для вставки в M-200

==============================================================

## IP ping
однострочный скрипт, пингует заданный хост, пишет результаты в файл.
```
Вариант без статистики
ip=192.168.75.178; date=$(date +"%d%m%Y_%H%M_"); while true; do ping -c 1 -w 2 $ip >> /dev/null && echo “`date` $ip ping OK” || echo “`date` $ip ping FAILED” ; sleep 1; done >> $date$ip.txt

Вариант со статистикой
ip=192.168.75.178; date=$(date +"%d%m%Y_%H%M_"); while true; do ping -c 1 -w 2 $ip && echo “`date` $ip ping OK” || echo “`date` $ip ping FAILED” ; sleep 1; done >> $date$ip.txt
```
Создаёт файлик с именем дата_время_адрес.txt ( пример 19032021_1748_192.168.75.178.txt)

==============================================================


