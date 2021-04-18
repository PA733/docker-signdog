FROM ubuntu
WORKDIR /opt/autocheckin/data/
# 安装基础软件包
RUN apt update && apt upgrade -y && \
    apt install -y curl wget
# 安装nodejs环境
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt install -y nodejs && \
    npm config set registry https://registry.npm.taobao.org
# 开始下载signdog
RUN wget -q --no-cookie --no-check-certificate https://github.com/houzi-/autocheckin/raw/master/autocheckin/autocheckin/signdog -O /opt/autocheckin/signdog && \
    chmod +x /opt/autocheckin/signdog && \
    mkdir -p /opt/autocheckin/data/.cache/script && \
    wget -x -O /opt/autocheckin/data/.cache/script/NobyDa_BoxJs.js https://raw.githubusercontent.com/NobyDa/Script/master/NobyDa_BoxJs.json
CMD ["/opt/autocheckin/signdog"]
