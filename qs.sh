#!/bin/bash

cd ~/Documents/.QuickScript
. msg.sh
start() {
    while :
    do
        if [ "$p1" == "" ]; then
            clear
            echo "***************** Ask Quick Script *****************"
            printf "命令\n"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "bl" "(Blog)" "进入 Blog 模式"
            printf " \033[32m %s \033[0m %s \t %s \n" "oc" "(Open Code)" "在 vscode 中打开当前脚本"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "q " "(Quit)" "退出当前脚本"
            echo "****************************************************"
            read -p "请输入指令: " p1  
        fi
        case $p1 in
            "bl") ./blog.sh || exit ;;
            "oc") code . ;;
            "q")
                echo "see you!"
                exit
            ;;
            *)
                $p1 || on_fail "命令有误..."
            ;;
        esac
        on_wait
        p1=""
    done
}

p1=$1

start