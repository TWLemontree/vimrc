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
