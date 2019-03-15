#!/usr/bin/env bash

set -e

cd `dirname $0`

echo " >>> 备份默认源： /etc/apt/sources.list.bak"
[[ -f /etc/apt/sources.list ]] && sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo " >>> 设置清华源 "
sudo cp ${PWD}/sources.list /etc/apt/sources.list

echo " >>> 安装软件: vim, svn, net-tools, terminator"
sudo apt update
sudo apt install -y vim subversion net-tools terminator

echo " >>> 配置终端分屏工具"
mkdir -p ~/.config/terminator/
cp ${PWD}/terminator_config ~/.config/terminator/config

echo " >>> 配置结束"

