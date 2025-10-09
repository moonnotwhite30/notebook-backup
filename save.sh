#!/bin/bash
# save.sh - 一键保存 notebook 到本地 Git 并推送到 GitHub

# 切换到代码目录
cd "/home/wenyutao/New world2"

# 检查是否输入了提交信息
if [ -z "$1" ]; then
    echo "请提供提交信息，例如：./save.sh \"更新：完成模型训练\""
    exit 1
fi

# 添加所有修改和新文件
git add .

# 提交
git commit -m "$1"

# 推送到 GitHub
git push origin main

