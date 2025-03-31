#!/bin/bash
#Удаление файлов в корзине
rm -fr /mnt/share/.recycle/*
#Удаление папок с кривыми именами созданными в режиме force directory
find /mnt/share/ -maxdepth 1 -type d -perm 2771 -exec rm -fr {} \;