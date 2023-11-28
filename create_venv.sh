#!/bin/bash

# 创建Python 3.6.9虚拟环境
function create_python3_6_9_venv() {
    echo "创建Python 3.6.9虚拟环境"
    python3.6 -m venv python3.6.9_venv  # 使用Python 3.6.9的解释器创建虚拟环境
    source python3.6.9_venv/bin/activate  # 激活虚拟环境
    pip install --upgrade pip  # 升级pip
    echo "Python 3.6.9虚拟环境已创建"
}

# 创建Python 3.8虚拟环境
function create_python3_8_venv() {
    echo "创建Python 3.8虚拟环境"
    python3.8 -m venv python3.8_venv  # 使用Python 3.8的解释器创建虚拟环境
    source python3.8_venv/bin/activate  # 激活虚拟环境
    pip install --upgrade pip  # 升级pip
    echo "Python 3.8虚拟环境已创建"
}

# 创建Python 3.9虚拟环境
function create_python3_9_venv() {
    echo "创建Python 3.9虚拟环境"
    python3.9 -m venv python3.9_venv  # 使用Python 3.8的解释器创建虚拟环境
    source python3.9_venv/bin/activate  # 激活虚拟环境
    pip install --upgrade pip  # 升级pip
    echo "Python 3.9虚拟环境已创建"
}
# 创建Python 3.6.9虚拟环境
create_python3_6_9_venv

# 创建Python 3.8虚拟环境
create_python3_8_venv

# 创建Python 3.9虚拟环境
create_python3_9_venv
# 退出虚拟环境
deactivate
