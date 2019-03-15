#!/usr/bin/env bash

set -e

cd `dirname $0`

echo " >>> 备份默认源： /etc/apt/sources.list.bak"
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo " >>> 设置清华源 "
sudo mv ${PWD}/sources.list /etc/apt/

echo " >>> 安装软件: vim, git, svn, net-tools, terminator"
sudo apt-get install -y vim git subversion net-tools terminator

echo " >>> 配置终端分屏工具"
mkdir -p ~/.config/terminator/
mv ${PWD}/terminator_config ~/.config/terminator/config

echo " >>> 配置结束"

