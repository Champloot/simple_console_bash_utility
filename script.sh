!#/bin/bash

function list_users {
    echo "..."
    awk -F':' '{ print $1, $6 }' /etc/passwd | sort
}

# awk: это утилита для обработки текстовых данных.
#-F':': устанавливает символ : в качестве разделителя полей.
# В файле /etc/passwd каждый пользователь представлен строкой, где данные разделены двоеточиями.
#'{ print $1, $6 }': команда awk, которая выводит первое ($1) и шестое ($6) поля для каждой строки:
#    $1 — это имя пользователя.
#    $6 — это домашний каталог пользователя.

fuction list_processes {
    echo "..."
    ps -eo pid,comm --sort=pid
}

if [ "$#" -eq 0 ]; then
    echo "... -u ... -p"
    exit 1
fi

for arg in "$@"; do
    case $arg in
        -u|--users)
            list_users
            ;;
        -p|--processes)
            ;;
        *)
            echo "No arg"
            exit 1
            ;;
    esac
done


