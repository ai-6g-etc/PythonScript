#!/bin/bash

# 检查是否已安装 Python 3.9
python3.9 --version >/dev/null 2>&1
PYTHON_3_9_INSTALLED=$?

# 如果 Python 3.9 未安装
if [ $PYTHON_3_9_INSTALLED -ne 0 ]; then
    echo "Installing Python 3.9..."

    # 安装依赖项
    sudo apt-get update
    sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

    # 下载 Python 3.9 源代码
    wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
    tar -xf Python-3.9.7.tgz
    cd Python-3.9.7

    # 配置和编译 Python 3.9
    ./configure --enable-optimizations
    make -j $(nproc)
    sudo make altinstall

    # 清理临时文件
    cd ..
    rm -rf Python-3.9.7 Python-3.9.7.tgz

    echo "Python 3.9 installed."
else
    echo "Python 3.9 is already installed."
fi
