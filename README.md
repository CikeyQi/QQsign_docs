# HuggingFace部署签名服务

文档作者：`0卡苏打水`   QQ交流群：`621069204`

截至当前，HuggingFace空间unidbg-fetch-qsign同步更新至 `1.1.9` 版本

优点：不需要服务器搭建，白嫖Huggingface的2核16G服务器，一键克隆即可运行，一人一地址

缺点：移动网络无法访问HuggingFace，部分地区网络可能存在一定延迟，如果出现timeout错误则是你运营商的问题，不是本教程的问题

**如果你是Windows，非常建议您查看我的这个项目：[unidbg-fetch-qsign-gui](https://github.com/CikeyQi/unidbg-fetch-qsign-gui)**

## 第一步：克隆空间

打开我已经部署好的空间：[QQsign](https://huggingface.co/spaces/CikeyQI/QQsign)，点击右上角三个点，点击 **Duplicate this Space** 
![克隆空间](/src/1.png)

## 第二步：填写相应的项

 **Visibility：**
 
 修改为**Public**，一定要公开，否则无法正常访问接口
 
 **TXLIB_VERSION：**
 
 本项请直接填写版本号即可，如 `8.9.68` ，不用填写路径！在本空间已经存放了官方提供的几个版本的so文件 `3.5.1` `3.5.2` `8.9.63` `8.9.68` `8.9.71` 和 `8.9.73` ，请将icqq更新到0.5.1版本以上以自动匹配协议版本，更新命令`pnpm add icqq@0.5.4 -w` 

<br>

填写好后，点击**Duplicate this Space**，将自动为您部署

![开始部署](/src/5.png)

## 第三步：获取地址

当状态变成**Running**时，即部署成功

![空间开始运行](/src/6.png)

点击右上角三个点，选择**Embed this Space**

![查看个人URL](/src/7.png)

下方Direct URL就是你的接口地址，点**copy**复制到剪切板

![查看个人URL](/src/8.png)

## 第四步：填写并使用

在config中找到bot.yaml文件

![bot配置项路径](/src/9.png)

在底部添加：`sign_api_addr: https://此处为你复制的地址/sign?key=114514`
（直接复制的地址末尾没有/sign?key=114514，请自行添加/sign?key=114514，sign_api_addr:冒号后面必须添上一个空格）

（什么，你问我为什么Key这么臭？原作者设置的！）

![增加配置项](/src/10.png)

在config中找到bot.yaml更改协议为1或2（安卓手机或apad）

![修改协议](/src/4.png)

启动成功

如果该文档对你有帮助，请给我一个免费的Star，谢谢

![在这里插入图片描述](/src/11.png)

## 后记：为什么我遇到了问题

1. 检查克隆时是否填写了**TXLIB_VERSION**，否则克隆后空间会报错

2. **Visibility**必须改成Public，否则第三步会没有**Embed this Space**，且机器人无法访问接口

3. 如果你遇到'ERR_INVALID_ARG_TYPE'的报错，请删除设备文件再试

4. 请检查服务器是否能访问huggingface.co

5. 若仍有问题，可加入QQ群：**621069204**，询问解决办法

## 致谢

- unidbg-fetch-qsign项目：[unidbg-fetch-qsign](https://github.com/fuqiuluo/unidbg-fetch-qsign)
