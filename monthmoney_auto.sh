#!/bin/bash

month="`date +%m`"
year="`date +%Y`"
fullmonth="`date +%Y`-`date +%m`"
cd /home/lcf/coding/diarytest/

DIR="/home/lcf/coding/diarytest/$year"

if [ ! -e $DIR ]
then
	mkdir $year
fi
cd $year
touch $year.$month
date +%F >> $year.$month
/home/lcf/coding/diarytest/getsum_para.sh /home/lcf/diary/$year/$fullmonth/ >> $year.$month
cd ..
