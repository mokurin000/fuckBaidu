#!/bin/bash

if [ -f /usr/bin/BaiduPCS-Go ]&&[ "${@}"o != o ]
then	BaiduPCS-Go config set -appid=266719 &> /dev/null
	BaiduPCS-Go cp "${@}" /apps/baidu_shurufa &> /dev/null
	BaiduPCS-Go config set -appid=265486 &> /dev/null
	BaiduPCS-Go d /apps/baidu_shurufa/*
	BaiduPCS-Go rm /apps/baidu_shurufa/* &> /dev/null
	BaiduPCS-Go config set -appid=266719 &> /dev/null
else	cat<<QWQ
使用方法： $0 文件路径
QWQ
	if [ ! -f $HOME/exist_dir ]
	then	if [ -f $HOME/BaiduPCS-Go/BaiduPCS-Go ]
		then	ln -s $HOME/BaiduPCS-Go/BaiduPCS-Go $PREFIX/bin/BaiduPCS-Go
		fi
		BaiduPCS-Go config set -appid=266719 &> /dev/null
		BaiduPCS-Go mkdir /apps/baidu_shurufa &> /dev/null
		echo 所需文件夹已建立！
		touch exist_dir
	fi
fi
BaiduPCS-Go config set -appid=266719 &> /dev/null
