FROM ubuntu:22.04

# 避免安裝過程中的互動提問
ENV DEBIAN_FRONTEND=noninteractive

# 安裝 Yocto 必備的依賴工具
RUN apt-get update && apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa \
    libsdl1.2-dev pylint xterm python3-subunit mesa-common-dev zstd liblz4-tool \
    locales cpio sudo vim

# 設定系統語言 (Yocto 強制要求)
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# --- 修改這裡：使用者名稱改為 yocoto，密碼改為 123 ---
RUN useradd -m yocoto && echo "yocoto:123" | chpasswd && adduser yocoto sudo

# 以 yocoto 身份執行後續操作
USER yocoto
WORKDIR /home/yocoto/