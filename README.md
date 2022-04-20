**[原理视频](https://www.youtube.com/embed/Fhu6XxEno_o)**



# 1.连接软件


[下载软件](https://github.com/north151/software-and-scripts/releases/tag/%E8%BF%9E%E6%8E%A5%E5%B7%A5%E5%85%B7)



## 1.win

| 软件           | 支持协议                                         | 下载地址 |
| -------------- | ------------------------------------------------ | -------- |
| v2ray          | vmess,shadowsocks,socks                          | [地址]() |
| trojan-qt5     | vmess,ss,ssr,trojan,socks5,http,snell,NaiveProxy | [地址]() |
| Qv2ray(可插件) | vmess,vless,ss,trojan,socks                      | [地址]() |
| Clash          | 配置文件url                                      | [地址]() |



## 2.andriod

| 软件    | 支持协议                    | 下载地址 |
| ------- | --------------------------- | -------- |
| v2rayNG | vmess,vless,ss,socks,trojan | [地址]() |
| clash   | 配置文件url                 | [地址]() |
| Igniter | trojan                      | [地址]() |



## 3.ios

| 软件         | 支持协议 | 下载账号购买地址            |
| ------------ | -------- | --------------------------- |
| Shadowrocket | ALL      | [地址](https://dailv118.cn) |
| Quantumult X | ALL      | [地址](https://dailv118.cn) |
| Loon         | ALL      | [地址](https://dailv118.cn) |


<br><br>


# 2.传输协议

## 1.socks5

```
过墙相当于裸奔
可用于连接中国大陆中转机

```



## 2.ssr

```shell



```



## 3.vmess

```
vmess + tls + wst
vmess + tls + wst + Nginx/Caddy
vmess + tls + wst + Nginx/Caddy + CDN(cloudfare)

```



## 4.trojan

```shell
trojan : 模拟 https 协议,使用443端口(可改端口)
trojan-go : trojan + ws + (多路复用)


(问题: 1.改端口;2.共用端口)
```



```shell
tls :
	# 对web应用程序和服务器之间的通信进行加密
	HTTPS是在HTTP基础上实施TLS加密
	网站/应用程序使用TLS,必须在其源服务器上安装TLS证书(又叫SSL证书),
	TLS证书由证书权威机构颁发(需要有域名),证书包含域名的信息以及服务器的公钥
	Cloudflare向所有用户提供免费的TLS/SSL证书。
    
wst : 
	# WebSocket在浏览器和服务器之间建立一个不受限的双向通信的通道,
	服务器可以在任意时刻发送消息给浏览器(一般情况下浏览器不主动请求，服务器是不能主动发数据给浏览器)
	
Nginx/Caddy :
    http服务器
    # 反向代理服务器
    
CDN :
	广泛采用各种缓存服务器，将这些缓存服务器分布到用户访问相对集中的地区或网络中
	youtube->vps->CDN服务器->客户端
	
多路复用 :



```

<br><br>

# 3.中转隧道

```shell
IPLC/IEPL : 内网专线
VPN : 将两台vps组成内网,注重加密,特征明显,易被识别
      常见工具:Zerotier,WireGuard(基于UDP协议,中国大陆网络环境对UDP不友好)
中专 : luo
隧道 : TLS加密隧道
       iptables流量转发:
           1.用户端 -(密文A)-> 中转服务器(1.1.1.1:1111) -(密文A)-> 
           2.长城防火墙机房 -(密文A)-> 
           3.落地服务器(2.2.2.2:2222)(1次解密)
       隧道中转:
           1.用户端 -(密文A)-> 中转服务器(1.1.1.1:1111) -(密文B)-> 
           2.长城防火墙机房 -(密文B)-> 
           3.落地服务器(2.2.2.2:2222)(2次解密)


```



<br><br>

# 4.传输线路

路由追踪工具 **BestTrace**下载

| 系统           | 下载地址 |
| ------------ | ------------|
| Windows | [地址](https://github.com/north151/software-and-scripts/releases/tag/%E8%B7%AF%E7%94%B1%E8%B7%9F%E8%B8%AA) |
| Android   | [地址](https://github.com/north151/software-and-scripts/releases/tag/%E8%B7%AF%E7%94%B1%E8%B7%9F%E8%B8%AA) |
| IOS            | [地址](https://github.com/north151/software-and-scripts/releases/tag/%E8%B7%AF%E7%94%B1%E8%B7%9F%E8%B8%AA) |
| Mac           | [地址](https://github.com/north151/software-and-scripts/releases/tag/%E8%B7%AF%E7%94%B1%E8%B7%9F%E8%B8%AA) |
| Linux        | [地址](https://github.com/north151/software-and-scripts/releases/tag/%E8%B7%AF%E7%94%B1%E8%B7%9F%E8%B8%AA) |



```shell
# 注: 
# 1.不同省份,不同运营商线路不同
# 2.是回程还是去程CN2,要回程CN2而不是去程
# 3.是不是全部运营商都是CN2
# 4.会不会绕道

```



|          |                              |      |
| -------- | ---------------------------- | ---- |
| ChinaNet | 163骨干网, AS134,2020.97.*.* |      |
| CN2      | AS4809                       |      |
| CN2 GT   | 国内:ChinaNet     出国:CN2   |      |
| CN2 GIA  | 全程CN2                      |      |



<br><br>



# 5.安装

## 证书获取
**安装证书工具**
```shell
curl https://get.acme.sh | sh
```
**注册账号**  (注意有没有安装web服务器)
```
~/.acme.sh/acme.sh --register-account -m 邮箱地址(不一定真实)
```
**申请证书**
```
~/.acme.sh/acme.sh --issue -d 绑定域名 --standalone
```
**证书移到指定位置**
```
~/.acme.sh/acme.sh --installcert -d 绑定域名 --key-file /密钥存放地址/private.key --fullchain-file /证书存放地址/cert.crt
```



## 1.trojan-go面板
**下载脚本**
```
wget https://raw.githubusercontent.com/north151/software-and-scripts/main/%E8%8A%82%E7%82%B9%E6%90%AD%E5%BB%BA/trojan-go-with-web-panel.sh?token=GHSAT0AAAAAABQG24UDAHYXGV4HV5O7FG3OYRUNENA
```
**重命名脚本**
```
mv trojan-go-with-web-panel.sh\?token\=GHSAT0AAAAAABQG24UDAHYXGV4HV5O7FG3OYRUNENA  trojan-go-with-web-panel.sh
```
**运行脚本**
```
bash trojan-go-with-web-panel.sh
```

## 2.x-ui面板
**下载脚本**
```
wget https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh
```
**重命名脚本**
```
mv install.sh x-ui_install.sh
```
**运行脚本**
```
bash x-ui_install.sh
```

<br><br>

# 6.VPS

```shell
# 购买时注意:
1.银行卡,详细地址,ip地址,号码地址 四者一致
2.代理的操作系统,界面语言使用英语
3.服务条款是否允许搭建代理,是否支持退款
```

[解锁Netfilx等](https://github.com/north151/software-and-scripts/releases/tag/%E8%A7%A3%E9%94%81)

## 1.低速不解锁

| 购买地址  | CPU内存   | 硬盘 | 月流量 | 带宽  | 月费 | 年费   |
| --------- | --------- | ---- | ------ | ----- | ---- | ------ |
| CloudCone | 1核  1G   | 40G  | 2000G  | 1Gbps |      | $12.73 |
| CloudCone | 2核  1.5G | 60G  | 4000G  | 1Gbps |      | $17.89 |
| RackNerd  | 1核  512M | 10G  | 1000G  | 1Gbps |      | $9.89  |
| RackNerd  | 1核  768M | 12G  | 1000G  | 1Gbps |      | $10.88 |
| RackNerd  | 1核  1.2G | 15G  | 1000G  | 1Gbps |      | $12.79 |
| RackNerd  | 1核  1G   | 20G  | 2000G  | 1Gbps |      | $13.98 |
| RackNerd  | 1核  1G   | 25G  | 4000G  | 1Gbps |      | $14.88 |
| BuyVM     | 1核  512M | 10G  | 无限   |       | $2   | $24    |
| BuyVM     | 1核  1G   | 20G  | 无限   |       | $3.5 | $42    |
|           |           |      |        |       |      |        |
|           |           |      |        |       |      |        |




<br><br>


# 7.备用机场

| 机场     | 地址                                     |
| -------- | ---------------------------------------- |
| 云速机场 | [云速机场](https://yunsu.org)            |
| 白云机场 | [白云机场](https://tz.baiyuntech.store/) |
|          |                                          |





