
# QuickScript

> 一款自用的每日任务工作脚本

目前测试环境：`MacOS 10.15.6`

所需依赖：
1. vscode
2. typora
3. nvm
4. node
5. hexo

## 安装方式

只需要执行以下代码即可完成安装:

``` bash
sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/askeynil/quickscript@master/quick.sh)"
```

## 功能

- [x] 使用 submodule 管理子依赖库
- [ ] 检测并自动安装 brew
- [ ] 检测并自动安装 vscode
- [ ] 检测并自动安装 typora
- [x] 检测并自动安装 nvm
- [x] 检测并自动安装 node
- [ ] ~~兼容 Ubuntu（放弃 Ubuntu）~~

1. Blog
    - [ ] 拉取最新的 Blog 文档
    - [ ] 快捷使用常用 hexo 命令
    - [ ] 使用自定义命令

2. LeetCode
    - [ ] 题目获取
    - [ ] 当天练习题自动打包成 readme
    - [ ] 根据条件筛选题目，并自动添加到 readme 
    - [ ] 自动获取每日一题


> 脚本制作参考来源：
>
> 1. [hexo.sh](https://xaoxuu.com/wiki/hexo.sh/#A-%E4%BD%BF%E7%94%A8%E8%84%9A%E6%9C%AC%E5%BF%AB%E9%80%9F%E6%90%AD%E5%BB%BA%E5%8D%9A%E5%AE%A2)
>
> 2. [macbootstrap](https://github.com/bestswifter/macbootstrap)