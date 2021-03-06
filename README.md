一个适用于python开发的轻量级的干净的vim配置
======================================
# 1. 安装（以Ubuntu系统为例）
## 1.1 使用之前
#### 1.1.1 安装git
```
    sudo apt install git
```
#### 1.1.2 安装pip并安装autopep8（为插件vim-autopep8做准备）
```
    sudo apt install python-pip
    pip install --upgrade autopep8
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
#### 1.3.2 有关 powerline 的安装(此项废除，请不要按此项安装)
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
我的路径是
```
    /usr/local/lib/python2.7/dist-packages
```
###### 1.3.2.5 配置 powerline
在 .vimrc 文件中加入
```
    set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
    set laststatus=2 
```
其中 rtp 路径 powerline 之前的部分就是你 1.3.2.4 中查看的路径
# 2. 使用
## 2.1 使用小技巧
#### 2.1.1 多屏操作
通过 ``` :sv + 文件名 ``` 或 ``` :vs + 文件名 ``` 来多屏打开文件，通过``` Ctrl + h,j,k,l ```（vim的移动键）来切换屏幕。如果想要关闭某个屏幕，请移动到该屏幕，并根据自己的需要``` :q :wq :q! ```来关闭屏幕
#### 2.1.2 NERDTree
通过快捷键 F3 （macOS用户 FN + F3） 打开/关闭 NERDTree，NERDTree的使用请自行搜索
#### 2.1.3 代码折叠
通过快捷键 ``` za ```对代码进行折叠和展开
#### 2.1.4 鼠标
通过快捷键``` Ctrl + m ```来设置是否使用鼠标
#### 2.1.5 简单的一键运行 python
通过快捷键``` F5 ```来一键运行 python
#### 2.1.6 文件搜索
使用快捷键``` Ctrl + p ```进行文件搜索，回车打开文件，快捷键``` esc ```退出文件搜索
#### 2.1.7 快速注释
使用快捷键``` . + cc ```对选中行快速注释（可使用``` Shift + v ```选中多行后再进行注释）,
使用快捷键``` . + cu ```取消注释，使用快捷键``` . + cy ```先复制，再注释（使用快捷键p来粘贴）
#### 2.1.8 一键格式化代码（pep8风格）
使用快捷键``` <F8> ```来一键格式化代码


