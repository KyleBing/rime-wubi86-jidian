#!/bin/sh

cd -- "$(dirname "$BASH_SOURCE")"

function show_menu() {
  echo "================================================"
  echo "  是否用当前文件夹内容覆盖 \033[31m~/Library/Rime\033[0m 目录？"
  echo "  ( 已经在 ~/Library/Rime 目录时请不要运行这个 )"
  echo "================================================"
}

function red() {
  echo "\033[31m${1}\033[0m"
}

function green() {
  echo "\033[32m${1}\033[0m"
}

# 参数1: 成功与否$0
# 参数2: 文件名
function echo_result() {
  if [ $1 -eq 0 ]; then
    green "-----------------------------------------------------"
    green "  ${2}\t\t【 成功 】 "
    green "  1. 之前的 Rime 文件夹已经备份到桌面，自行选择删除或保留"
    green "  2. 点击状态栏图标，执行「 布署 」即可使用鼠须管输入法"
    green "  3. 欢迎使用 Rime"
    green "-----------------------------------------------------"

  else
    red "${2}\t\t 【 失败 】"
    echo "请手动移动文件到 ~/Library/Rime 文件夹，再点击状态栏图标，执行布署即可"
  fi
}

show_menu

echo "  请选择 \033[32my: 执行\033[0m  \033[31mn: 取消\033[0m: \c"
read choice

case $choice in
y)
  if [ ! -d "~/Desktop/Rime" ];then # 如果存在 Rime 目录
    mkdir ~/Desktop/Rime
  fi
  cp -Rf ~/Library/Rime  ~/Desktop/备份的\ Rime\ 文件夹 &&
  cp -Rf ./* ~/Desktop/Rime/
  echo_result $? "复制文件到 ~/Library/Rime 目录"
  ;;
n)
  exit
  ;;

esac
