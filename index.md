# HuggingFace部署签名服务

优点：不需要服务器，不需要过多操作，一人一地址，可以多部署几个通过Nginx轮询

缺点：部分地区网络无法访问HuggingFace
## 第一步：克隆空间
打开我已经部署好的空间：[QQsign](https://huggingface.co/spaces/CikeyQI/QQsign)，点击右上角三个点，点击**Duplicate this Space**
![克隆空间](https://img-blog.csdnimg.cn/67fdeed3858c48d7858e79410e1ba0a3.png)
## 第二步：填写相应的项
 **COUNT**
 Unidbg实例数量 ，官方建议等于核心数，免费空间是2核16GB，所以这里建议填`2`。（数值越大并发能力越强，内存占用越大）\
 **TXLIB_VERSION**
 存放核心so文件的文件夹绝对路径，在本空间已经存放了官方提供的最近六个版本的so文件，包括`8.9.50` `8.9.58`或`8.9.63`，支持的所有版本号在txlib目录下，推荐使用高于8.9.50及以上的版本，您可以自行将so文件上传到空间的txlib文件夹中，选择自己的版本\
 **visibility**修改为Public
![so文件存放路径](https://i.postimg.cc/jSDtXcVd/version.png)
![查看协议版本](https://img-blog.csdnimg.cn/6e27f33483d548e284ec777015227b42.png)
**ANDROID_ID**
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
在底部添加：`sign_api_addr: https://此处为你复制的地址/sign`\
（直接复制的地址末尾没有/sign，请自行添加/sign，冒号后面必须添上一个空格）
![增加配置项](https://img-blog.csdnimg.cn/81a3666013e9436bad31c40986ade90e.png)
保存，回到自己的空间，点击devices，找到创建空间选择的版本devices_版本号.js，下载它，并重命名为device.js
![选择device.js](https://i.postimg.cc/mDz8txCG/7-E2-DC331-ADB8-406d-ACD9-782-A58-A3-D81-E.png)
找到并替换Miao-Yunzai\node_modules\icqq\lib\core\中的device.js\
![替换device.js](https://img-blog.csdnimg.cn/3e5a7c8fba214155842feba62cce212a.png)
**注意**:创建空间时的安卓版本与你崽使用不一致device_版本.js时\
(ICQQ0.4.7默认版本为8.9.50)，应在替换device.js后手动删除data\icqq\device.json并重新生成device.json设备,修改后的Android_data重新复制后，回到你的空间中，点击右上角**setting**，下拉找到**Repository secrets**，找到**ANDROID_ID**，点击**Edit**修改为你新的Android_ID，并点击**Restart space**重启空间
![修改空间参数](https://i.postimg.cc/FR2KyS6B/1.png)
![修改空间参数](https://i.postimg.cc/RZXVPy8f/2.png)
在config中找到bot.yaml更改协议为1或2（安卓手机或apad）
![修改协议](https://i.postimg.cc/YSrfSPz2/796-F9-BB1-06-C0-42b1-B26-C-267-B1304-DF55.png)\
启动成功
![在这里插入图片描述](https://img-blog.csdnimg.cn/9187d3c094154b63ae0c2df3dec46239.png)
