#!/bin/bash

# 의존성 관계의 데몬을 백그라운드로 실행
mkdir /run/php-fpm
/usr/sbin/php-fpm

# 최종 웹데몬을 포그라운드로 실행
/usr/sbin/httpd -D FOREGROUND