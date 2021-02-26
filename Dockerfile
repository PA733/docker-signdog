FROM ubuntu
WORKDIR /opt/autocheckin/
# 安装基础软件包
RUN apt update && apt upgrade -y && \
    apt install -y curl wget
# 安装nodejs环境
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt install -y nodejs
# 开始下载signdog
RUN wget -q --no-cookie --no-check-certificate https://www.houzi-blog.top/tool/signdog -O /opt/autocheckin/signdog && \
    chmod +x /opt/autocheckin/signdog
CMD ["/opt/autocheckin/signdog"]
