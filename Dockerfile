FROM openjdk:22-slim-bookworm

# 设置时区
ENV TZ Asia/Shanghai

# 设置工作目录
WORKDIR /app

# 复制解压包和txlib到工作目录
COPY txlib /app/txlib
COPY lib /app/lib
COPY bin /app/bin

# 设置命令
CMD bash bin/unidbg-fetch-qsign --basePath=txlib/$TXLIB_VERSION

# 暴露端口
EXPOSE 7860