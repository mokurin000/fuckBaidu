#!/bin/bash

if [ -f /usr/bin/BaiduPCS-Go ]&&[ o$* != o ]
then	BaiduPCS-Go config set -appid=266719 &> /dev/null
	BaiduPCS-Go cp "${@}" /apps/baidu_shurufa &> /dev/null
	BaiduPCS-Go config set -appid=265486 &> /dev/null
	BaiduPCS-Go d /apps/baidu_shurufa/*
	BaiduPCS-Go rm /apps/baidu_shurufa/* &> /dev/null
	BaiduPCS-Go config set -appid=266719 &> /dev/null
else	echo 使用方法： $0 文件路径
	if [ ! -f ~/.exist_dir ]
	then	BaiduPCS-Go config set -appid=266719 &> /dev/null
		BaiduPCS-Go mkdir /apps/baidu_shurufa &> /dev/null
		echo 所需文件夹已建立！
		touch ~/.exist_dir
	fi
	echo 请创建链接或使/usr/bin/BaiduPCS-Go链接到二进制可执行文件
fi
BaiduPCS-Go config set -appid=266719 &> /dev/null
