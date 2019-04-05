@echo off
echo 请检索文件路径
BaiduPCS-Go config set -appid=266719
BaiduPCS-Go web
set /p file=
BaiduPCS-Go cp "%file%" /apps/baidu_shurufa
BaiduPCS-Go config set -appid=265486
BaiduPCS-Go d /apps/baidu_shurufa/*
BaiduPCS-Go rm /apps/baidu_shurufa/*
BaiduPCS-Go config set -appid=266719