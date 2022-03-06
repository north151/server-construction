

# 1.连接软件

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

| 软件         | 支持协议 | 下载账号购买地址 |
| ------------ | -------- | ---------------- |
| Shadowrocket | ALL      | [地址]()         |
| Quantumult X |          | [地址]()         |
|              |          | [地址]()         |





# 2.传输协议

## 1.socks5

```


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
trojan : 模拟 https 协议,使用443端口  
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



# 3.中转对接







# 4.传输线路

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







# 5.安装

```shell
# 证书获取
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --register-account -m 邮箱地址(不一定真实)
~/.acme.sh/acme.sh --issue -d 绑定域名 --standalone
~/.acme.sh/acme.sh --installcert -d 绑定域名 --key-file /密钥存放地址/private.key --fullchain-file /证书存放地址/cert.crt
```



## 1.trojan-go面板

```

```

## 2.x-ui面板

```
wget https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh
mv install.sh x-ui_install.sh
bash x-ui_install.sh

```



# 6.VPS

```shell
# 购买时注意:
1.银行卡,详细地址,ip地址,号码地址 四者一致
2.代理的操作系统,界面语言使用英语
3.服务条款是否允许搭建代理,是否支持退款
```



## 1.低速不解锁

| 购买地址  | CPU内存   | 硬盘 | 月流量 | 带宽  | 月费 | 年费   | 线路 |
| --------- | --------- | ---- | ------ | ----- | ---- | ------ | ---- |
| CloudCone | 1核  1G   | 40G  | 2000G  | 1Gbps |      | $12.73 |      |
| CloudCone | 2核  1.5G | 60G  | 4000G  | 1Gbps |      | $17.89 |      |
| RackNerd  | 1核  512M | 10G  | 1000G  | 1Gbps |      | $9.89  |      |
| RackNerd  | 1核  768M | 12G  | 1000G  | 1Gbps |      | $10.88 |      |
| RackNerd  | 1核  1.2G | 15G  | 1000G  | 1Gbps |      | $12.79 |      |
| RackNerd  | 1核  1G   | 20G  | 2000G  | 1Gbps |      | $13.98 |      |
| RackNerd  | 1核  1G   | 25G  | 4000G  | 1Gbps |      | $14.88 |      |
| BuyVM     | 1核  512M | 10G  | 无限   |       | $2   | $24    |      |
| BuyVM     | 1核  1G   | 20G  | 无限   |       | $3.5 | $42    |      |
|           |           |      |        |       |      |        |      |
|           |           |      |        |       |      |        |      |







# 7.备用机场

| 机场     | 地址                          |
| -------- | ----------------------------- |
| 云速机场 | [云速机场](https://yunsu.org) |
|          |                               |
|          |                               |





