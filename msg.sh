

### 等待
 # Args:
 #  - $1: 数字, 可选
 #      - 存在, 表示延时多长时间
 #      - 不存在, 表示按下任意键继续
on_wait() {
    if [ "$1" != "" ]; then
        sleep $1
    else
        printf "\n按下任意键继续: "
        read -s -n 1
    fi
}

### 成功的提示
 # Args:
 #  - $1: 提示语, 可选
 #      - 存在, 
 #      - 不存在, 默认使用 "操作成功! "
on_success(){
    msg=$@
    if [ "$msg" = "" ];then
        msg="操作成功！"
    fi
    printf "\033[32m [Success] %s \033[0m\n" "$msg"
}

### 失败的提示
 # 失败后默认会使用 on_wait 
 # Args:
 #  - $1: 提示语, 可选
 #      - 存在, 
 #      - 不存在, 默认使用 "操作失败! "
on_fail(){
    msg=$@
    if [ "$msg" = "" ];then
        msg="操作失败！"
    fi
    printf "\033[31m [Fail] %s \033[0m\n" "$msg"
}

execute() {
    msg="$@"
    printf "\033[34m==>\033"
    printf "\033[37m $msg \033[0m\n"
    $msg
}
