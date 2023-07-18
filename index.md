# HuggingFace部署签名服务

文档作者：0卡苏打水   QQ交流群：621069204

**注意：本方案不支持最新版本的icqq，如果你遇到'ERR_INVALID_ARG_TYPE'的报错，请降级icqq至0.4.8，降级命令`pnpm add icqq@0.4.8 -w`**

优点：不需要服务器搭建，白嫖Huggingface的2核16G服务器，一键克隆即可运行，一人一地址，避免公共使用导致集体封号

缺点：移动网络无法访问HuggingFace

## 第一步：克隆空间

打开我已经部署好的空间：[QQsign](https://huggingface.co/spaces/CikeyQI/QQsign)，点击右上角三个点，点击**Duplicate this Space**
![克隆空间](https://img-blog.csdnimg.cn/67fdeed3858c48d7858e79410e1ba0a3.png)

## 第二步：填写相应的项

 **Visibility：**
 
 修改为Public，一定要公开，否则无法正常访问接口
 
 **COUNT：**
 
 Unidbg实例数量 ，官方建议等于核心数，免费空间是2核16GB，所以这里建议填`2`。（数值越大并发能力越强，内存占用越大）
 
 **TXLIB_VERSION：**
 
 本项请直接填写版本号即可，如`8.9.63`，不用填写路径！存放核心so文件的文件夹绝对路径，在本空间已经存放了官方提供的最近六个版本的so文件，包括`8.9.50` `8.9.58`或`8.9.63`，支持的所有版本号在txlib目录下，推荐使用高于8.9.50及以上的版本，您可以自行将so文件上传到空间的txlib文件夹中，选择自己的版本
 
![so文件存放路径](https://i.postimg.cc/jSDtXcVd/version.png)
![查看协议版本](https://img-blog.csdnimg.cn/6e27f33483d548e284ec777015227b42.png)

**ANDROID_ID：**

请打开您的device.json，查看

![device文件](https://img-blog.csdnimg.cn/b6198cc8221648dc85fbb242ec5bc255.png)
![查看ANDROID_ID](https://img-blog.csdnimg.cn/f313264930344b8599b6dfd2d940cb69.png)

填写好后，点击**Duplicate this Space**，将自动为您部署

![开始部署](https://img-blog.csdnimg.cn/121ba7ea6c124d91966ffd5131b30c69.png)

## 第三步：获取地址

当状态变成**Running**时，即部署成功

![空间开始运行](https://img-blog.csdnimg.cn/4864f13caff1466d982b91023b91da56.png)

点击右上角三个点，选择**Embed this Space**

![查看个人URL](https://img-blog.csdnimg.cn/bf7fc6cf3ab94290bdee765660ca5cf9.png)

下方Direct URL就是你的接口地址，点**copy**复制到剪切板

![查看个人URL](https://img-blog.csdnimg.cn/3b310c17ebb0496aac36a4ef40d0c8ee.png)

## 第四步：填写并使用

在config中找到bot.yaml文件

![bot配置项路径](https://img-blog.csdnimg.cn/25a96210007a4beba978bca719fff717.png)

在底部添加：`sign_api_addr: https://此处为你复制的地址/sign`
（直接复制的地址末尾没有/sign，请自行添加/sign，冒号后面必须添上一个空格）

![增加配置项](https://img-blog.csdnimg.cn/81a3666013e9436bad31c40986ade90e.png)

在config中找到bot.yaml更改协议为1或2（安卓手机或apad）

![修改协议](https://i.postimg.cc/YSrfSPz2/796-F9-BB1-06-C0-42b1-B26-C-267-B1304-DF55.png)

启动成功

如果该文档对你有帮助，请给我一个免费的Star，谢谢

![在这里插入图片描述](https://img-blog.csdnimg.cn/9187d3c094154b63ae0c2df3dec46239.png)

## 拓展：修改协议版本

方法一：调整icqq版本

Tips：如果你启动机器人时显示的协议版本与sign服务器填写的协议版本对的上时，您不用替换device.js，对不上的再替换相应的device.js

回到自己的空间，点击devices，找到创建空间选择的版本devices_版本号.js，下载它，并重命名为device.js

![选择device.js](https://i.postimg.cc/mDz8txCG/7-E2-DC331-ADB8-406d-ACD9-782-A58-A3-D81-E.png)

找到并替换Miao-Yunzai\node_modules\icqq\lib\core\中的device.js

![替换device.js](https://img-blog.csdnimg.cn/3e5a7c8fba214155842feba62cce212a.png)

方法二：调整sign服务器版本

**注意**：如果您启动机器人时，ICQQ的协议版本与空间**TXLIB_VERSION**版本对不上时：

(ICQQ0.4.8默认版本为8.9.63)，在自己空间中，点击右上角**Setting**，下拉找到**Repository secrets**，找到**TXLIB_VERSION**，点击**Edit**修改为你ICQQ的协议版本，如`8.9.63`，并点击**Restart space**重启空间

![修改空间参数](https://i.postimg.cc/FR2KyS6B/1.png)
![修改空间参数](https://i.postimg.cc/RZXVPy8f/2.png)

## 后记：为什么我遇到了问题
1. 检查克隆时是否填写了必须要填的三项**COUNT**，**TXLIB_VERSION**，**ANDROID_ID**，否则克隆后空间会报错

2. **Visibility**必须改成Public，否则第三步会没有**Embed this Space**，且机器人无法访问接口

3. 请仔细检查启动时使用的ICQQ协议版本与空间所填写的**TXLIB_VERSION**是否一致，**ANDROID_ID**是否与device.json中的一致

4. 请检查服务器是否能访问huggingface.co

5. 若仍有问题，可加入QQ群：**621069204**，询问解决办法
