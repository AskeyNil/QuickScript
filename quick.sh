

path_name=~/Documents/.QuickScript
if [ -e ${path_name} ] ; then
    echo "${path_name} 文件夹已存在，请检查后重试"
else
    git clone https://github.com.cnpmjs.org/AskeyNil/QuickScript.git ${path_name} --recursive
    cd ${path_name}
    bash install.sh
fi