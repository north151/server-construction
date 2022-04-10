
# 权限
sudo root

cd /
mkdir A.脚本集合
cd A.脚本集合


# 安装epel 
# 基于Fedora的一个项目，为“红帽系”的操作系统提供额外的软件包
# 适用于RHEL、CentOS等系统
yum install epel-release

yum update 


# 安装 wget
yum -y install wget
# 安装 cURL
yum install -y curl

yum install -y vim nano 1> /dev/null

# pip 更新
yum install --assumeyes python3-pip

########################################
yum -y install vim net-tools httpd-tools lrzsz  tmux man-pages strace redhat-lsb-core chrony psmisc man-pages zip unzip bzip2 tcpdump ftp rsync 1> /dev/null

########################################


# ip相关命令
yum -y install iptables iptables-services
systemctl start iptabels
systemctl enable iptables

yum -y install lsof
yum -y install traceroute



# 安装 nginx
yum install -y nginx

# 卸载 nginx
/usr/local/nginx/sbin/nginx -s stop
rm -rf /usr/local/nginx
chkconfig nginx off
rm -rf /etc/init.d/nginx





# 宝塔国际版
wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh 
mv install.sh install_宝塔国际版.sh
bash install_宝塔国际版.sh


# 宝塔国内版
wget -O install.sh http://download.bt.cn/install/install_6.0.sh 
mv install.sh install_宝塔国内版.sh
bash install_宝塔国内版.sh


wget http://download.bt.cn/install/bt-uninstall.sh
sh bt-uninstall.sh


# trojan-go-with-web-panel.sh 
# Jrohy的一键Trojan面板脚本
# 安装
source <(curl -sL https://git.io/trojan-install)
# 卸载
source <(curl -sL https://git.io/trojan-install) --remove


