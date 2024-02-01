# Koyeb部署签名服务（[如需HuggingFace部署请点击我](https://github.com/CikeyQi/QQsign_docs/tree/main)）

# **⚠️禁止在国内视频平台传播与二改传播，防止方案泛滥**

文档作者：`0卡苏打水`   QQ交流群：`551081559`

由于 **HuggingFace** 的围追堵截，被迫迁移至 **Koyeb**，目前来看仍然可以白嫖，就是配置低了点，个人使用足够了，网站访问也比 **HuggingFace** 流畅得多，下方测速图：

![下载](https://github.com/CikeyQi/QQsign_docs/assets/61369914/55507ffc-9b06-47bc-9a5a-b597334d4bcc)


**如果你是Windows，非常建议您查看我的这个项目：[unidbg-fetch-qsign-gui](https://github.com/CikeyQi/unidbg-fetch-qsign-gui)**

**如果你是Linux，非常建议您查看我的这个项目：[unidbg-fetch-qsign-shell](https://github.com/CikeyQi/unidbg-fetch-qsign-shell)**

**最近群友催的两条命令快速迁移NTQQ的一键脚本也弄好了：[chronocat-docker-shell](https://github.com/CikeyQi/chronocat-docker-shell)**

## **前排提示：如果图和文字冲突，请以文本为准，因为教程更新了图没更新**

# 注册 Koyeb

1.用自己的邮箱注册 **Koyeb** ，浏览器打开 [Koyeb](https://app.koyeb.com/auth/signup?method=email) ，输入随便内容到 **Full name** 栏，粘贴邮箱到 **Email** 栏，随便设置个密码到 **Pick a strong password** 栏，点击 **SIGN UP**即可

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/a547eb11-f1ca-4a29-b2b4-28f606c929f3)

2.接下来提示需要 **Confirm your email address** ，我们回到邮箱后台验证邮件，点击 **VERIFY EMAIL ADDRESS** 即可验证成功，在接下来 **Koyeb** 会问你一些问题，随便填即可

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/a2bc9af1-82df-470a-adea-ea3ad7c5f67a)

3.到这个界面，就是注册成功了

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/087bb141-663f-4758-a77b-05f6a2aae1c4)

# 创建 APP

1.点击 **Create App**，选择 **Docker** ，按照下图提示, **Image** 填入 `docker.io/cikeyqi/unidbg-fetch-qsign-docker` , **Tag** 填入 `latest`，点击 **Next**

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/5a44605e-e3df-40e3-b3e8-398cbee797f1)

2.接下来往下滑，找到 **Advanced** ，点击展开，如果需要修改协议版本（不修改默认使用 `8.9.96` ），找到 **Environment variables** ，点击 **Add Variable** ， **Name** 填 `TXLIB_VERSION` ， **Value** 填版本号，如图所示

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/ddd522be-81ae-4fa4-86bd-f06faad364c9)

3.继续往下滑，找到 **Exposing your service** ，修改 **Post** 为 `8080` ，如图所示

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/80db5ed2-cb5c-468c-b2e5-67bb5d475ff6)

4.点击左下角的 **Diploy** 即可

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/4a92afac-860d-4a28-a941-d5bd8018536a)

# 使用 API

1.等待如图所示位置变成 **Active**，复制 **Public URL** 链接，例如 `https://******.koyeb.app/`，即可完成部署

![image](https://github.com/CikeyQi/QQsign_docs/assets/61369914/2333da5e-31c8-4ec4-8f4d-fcf8a623887a)


## 后记：为什么我遇到了问题

1. 若有问题，可加入QQ群：**551081559**，询问解决办法

## 致谢

- unidbg-fetch-qsign项目：[unidbg-fetch-qsign](https://github.com/fuqiuluo/unidbg-fetch-qsign)
