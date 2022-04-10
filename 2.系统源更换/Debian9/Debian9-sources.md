

```shell
# Debian 9 stretch
位置    : /etc/apt/soures.list
deb     : 已编译好
deb-src : 源码未编译
注释掉 deb-src 源码镜像 可以提高 sudo apt update 的速度
```

**更新源**

```shell
sudo apt-get update
```

**更新软件**

```shell
sudo apt-get upgrade
```





## 官方源

```shell
# 官方源
# deb http://ftp.debian.org/debian/ stretch main non-free contrib
# deb http://ftp.debian.org/debian/ stretch-proposed-updates main non-free contrib
# deb http://ftp.debian.org/debian/ stretch-backports main contrib non-free
# deb http://security.debian.org/ stretch/updates main

# deb-src http://ftp.debian.org/debian/ stretch main non-free contrib
# deb-src http://ftp.debian.org/debian/ stretch-proposed-updates main non-free contrib
# deb-src http://ftp.debian.org/debian/ stretch-backports main contrib non-free
# deb-src http://security.debian.org/ stretch/updates main
```



## 阿里源

```shell
# 阿里源
deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib
deb http://mirrors.aliyun.com/debian-security stretch/updates main
deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib
deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib

# deb-src http://mirrors.aliyun.com/debian/ stretch main non-free contrib
# deb-src http://mirrors.aliyun.com/debian-security stretch/updates main
# deb-src http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib
# deb-src http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib
```



## 网易源

```shell
# 网易源
# deb http://mirrors.163.com/debian/ stretch main non-free contrib
# deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib
# deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib
# deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib

# deb-src http://mirrors.163.com/debian/ stretch main non-free contrib
# deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib
# deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib
# deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
```



## 中科大源

```shell
# 中科大源
# deb https://mirrors.ustc.edu.cn/debian/ stretch main contrib non-free
# deb https://mirrors.ustc.edu.cn/debian/ stretch-updates main contrib non-free
# deb https://mirrors.ustc.edu.cn/debian/ stretch-backports main contrib non-free
# deb https://mirrors.ustc.edu.cn/debian-security/ stretch/updates main contrib non-free

# deb-src https://mirrors.ustc.edu.cn/debian/ stretch main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian/ stretch-updates main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian/ stretch-backports main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian-security/ stretch/updates main contrib non-free
```



## 清华源

```shell
# 清华源
# deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch main contrib non-free
# deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch-updates main contrib non-free
# deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch-backports main contrib non-free
# deb https://mirrors.tuna.tsinghua.edu.cn/debian-security/ stretch/updates main contrib non-free

# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch-updates main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ stretch-backports main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security/ stretch/updates main contrib non-free
```







