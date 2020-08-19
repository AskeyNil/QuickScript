

path_name=~/Documents/.QuickScript
if [ -e ${path_name} ] ; then
    echo "${path_name} 文件夹已存在，请检查后重试"
else
    git clone https://github.cnpmjs.com/AskeyNil/QuickScript.git ${path_name} --recursive
    cd ${path_name}
    bash start.sh
fi