# HuggingFace部署签名服务

优点：不需要服务器，不需要过多操作，一人一地址，可以多部署几个通过Nginx轮询

缺点：部分地区网络无法访问HuggingFace
## 第一步：克隆空间
打开我已经部署好的空间：[QQsign](https://huggingface.co/spaces/CikeyQI/QQsign)，点击右上角三个点，点击**Duplicate this Space**
![克隆空间](https://img-blog.csdnimg.cn/67fdeed3858c48d7858e79410e1ba0a3.png)
## 第二步：填写相应的项
 **COUNT**
 Unidbg实例数量 ，官方建议等于核心数，免费空间是2核CPU，所以这里建议填==2==。（数值越大并发能力越强，内存占用越大）
 **TXLIB_VERSION**
 存放核心so文件的文件夹绝对路径，在本空间已经存放了官方提供的两个版本的so文件，即可填==8.9.58==或==8.9.63==，这取决于你的ICQQ协议版本，您可以自行将so文件上传到空间的txlib文件夹中，选择自己的版本
![so文件存放路径](https://img-blog.csdnimg.cn/5e072fc3148842e29c82bbc1413ecbce.png)
![查看协议版本](https://img-blog.csdnimg.cn/6e27f33483d548e284ec777015227b42.png)
**ANDROID_ID**
请打开您的device.json，查看
![device文件](https://img-blog.csdnimg.cn/b6198cc8221648dc85fbb242ec5bc255.png)
![查看ANDROID_ID](https://img-blog.csdnimg.cn/f313264930344b8599b6dfd2d940cb69.png)
填写好后，点击**Duplicate this Space**，将自动为您部署
![开始部署](https://img-blog.csdnimg.cn/121ba7ea6c124d91966ffd5131b30c69.png)
## 第三步：获取地址
当状态变成Running时，即部署成功
![在这里插入图片描述](https://img-blog.csdnimg.cn/4864f13caff1466d982b91023b91da56.png)
点击右上角三个点，选择**Embed this Space**
![在这里插入图片描述](https://img-blog.csdnimg.cn/bf7fc6cf3ab94290bdee765660ca5cf9.png)
下方Direct URL就是你的接口地址
![在这里插入图片描述](https://img-blog.csdnimg.cn/3b310c17ebb0496aac36a4ef40d0c8ee.png)
## 第四步：填写并使用
找到bot.yaml文件
![在这里插入图片描述](https://img-blog.csdnimg.cn/25a96210007a4beba978bca719fff717.png)
在底部添加：sign_api_addr: https://cikey-qqsign.hf.space/sign（直接复制的地址末尾没有/sign，请自行添加/sgin）
![在这里插入图片描述](https://img-blog.csdnimg.cn/81a3666013e9436bad31c40986ade90e.png)
保存，回到自己的空间，点击Files，找到device.js，下载它
![在这里插入图片描述](https://img-blog.csdnimg.cn/58313973a4984d74972a46392058958f.png)
替换Miao-Yunzai\node_modules\icqq\lib\core\中的device.js
![在这里插入图片描述](https://img-blog.csdnimg.cn/3e5a7c8fba214155842feba62cce212a.png)
更改协议为1（安卓手机）
![在这里插入图片描述](https://img-blog.csdnimg.cn/ad731ede03c84046940a98f18c8a66a4.png)
启动成功
![在这里插入图片描述](https://img-blog.csdnimg.cn/9187d3c094154b63ae0c2df3dec46239.png)

