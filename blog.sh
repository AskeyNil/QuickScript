#!/bin/bash

cd ~/Documents/.QuickScript
source msg.sh

start() {
    cd Blog
    while :
    do
        if [ "$p1" == "" ]; then
            clear
            echo "********************** LeetCode Mode *********************"
            printf "命令\n"
            printf " \033[32m %s \033[0m %s \t\t\t %s \n" "c  " "(clean)" " 执行 hexo clean"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "s  " "(server)" " 执行 hexo server"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "g  " "(generate)" " 执行 hexo generate"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "d  " "(deploy)" " 执行 hexo deploy"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "cs " "(clean, server)" " 执行 c s 组合"
            printf " \033[32m %s \033[0m %s \t %s \n" "cg " "(clean generate)" " 执行 c g 组合"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "cgd" "(c, g, d)" " 执行 c g d 组合，然后提交代码"
            printf " \033[32m %s \033[0m %s \t\t %s \n" "ot " "(open typora)" " 在 blog 目录打开 typora "
            printf " \033[32m %s \033[0m %s \t\t %s \n" "oc " "(open code)" " 在 BlogCode 目录打开 vscode "
            printf " \033[32m %s \033[0m %s \t\t\t %s \n" "q  " "(quit)" " 退出当前脚本 "
            echo "**********************************************************"
            read -p "请输入指令: " p1
        fi

        case $p1 in
            "c") execute hexo clean ;;
            "s") execute hexo server -o;;
            "g") execute hexo generate ;;
            "d") execute hexo deploy;;
            "cs")
                execute hexo clean
                execute hexo server -o
            ;;
            "cg")
                execute hexo clean
                execute hexo generate
            ;;
            "cgd")
                execute hexo clean
                execute hexo generate
                execute hexo deploy
                git add .
                git commit -m "update blog"
                git push origin master
                cd ../BlogCode
                git add .
                git commit -m "update code"
                git push origin master
                cd ../Blog
            ;;
            "ot") execute open -a typora source ;;
            "oc") code ../BlogCode ;;
            "q")
                # 回到根目录
                cd ..
                return
            ;;
            *)
                execute $p1 || on_fail "命令有误..."
            ;;
        esac
        on_wait
        p1="" && p2=""
    done
}

p1=$1

start
