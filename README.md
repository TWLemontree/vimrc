一个适用于python开发的轻量级的干净的vim配置
======================================
# 1. 安装（以Ubuntu系统为例）
## 1.1 使用之前
#### 1.1.1 安装git
```
    sudo apt install git
```
#### 1.1.2 安装vim（我所使用的Ubuntu没有vim）
```
    sudo apt install vim
```
#### 1.1.3 克隆vundle（用于管理vim的插件）
```
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
## 1.2 克隆该配置文件，并下载相关插件
#### 1.2.1 克隆该配置文件
```
    git clone https://github.com/TWLemontree/vimrc.git
```
此时你的 ~ 文件夹下应该有一个名为 vimrc 的文件夹，将该文件夹下的 .vimrc (是个看不见的隐藏文件)复制到 ~ 根目录下
```
    cp -r ~/vimrc/.vimrc ~/
```
#### 1.2.2 下载相关配置文件
终端下输入 vim ，进入vim界面，然后输入
```
    :PluginInstall
```
将会自动下载插件。下载完成后，按 q 键退出插件下载界面，按 :q 退出vim并重新进入 vim ，该配置文件即可配置完成
## 1.3 .vimrc 配置文件相关
#### 1.3.1 该配置文件并没有配置代码补全功能，代码补全添加十分的麻烦，如果您想要代码补全功能的话，请自行搜索 YouCompleteMe
#### 1.3.2 该配置文件注释掉了 powerline 插件的配置，如果您需要该功能的话（该功能非常的实用），请您自行搜索 powerline 的配置，并修改该 ~ 目录下的 .vimrc 文件进行配置
###### 1.3.2.1 安装 python2
```
    sudo apt install python-minimal
```
###### 1.3.2.2 安装 pip
```
    sudo apt install python-pip
```
###### 1.3.2.3 安装 powerline
```
    sudo pip install powerline-status
```
###### 1.3.2.4 查看 powerline安装路径
```
    pip show powerline-status
```
###### 1.3.2.4 安装 vim 的 powerline插件
在 .vimrc 文件中找到 powerline 插件，去掉行首的注释符号（英文的 " 号），保存该文件，并使用 1.2.2 的方法重新下载插件

