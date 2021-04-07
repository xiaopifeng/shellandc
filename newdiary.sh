#!/bin/bash

cd /home/lcf/diary/
day=`date +%d`
year="`date +%Y`"
fullmonth="`date +%Y`-`date +%m`"
month="`date +%m`"
diary="diary.`date +%F`"
one="01"
#tempmonth="01" #for test
#tempday="24" #for test

# _____new folder if not exist_____
DIR="/home/lcf/diary/$year"
if [ ! -e $DIR ]
then
	mkdir $year
	cd $year
	mkdir $fullmonth
	cd ..
fi
# _____new diary per day ___________
if [ $month = $one -a $day = $one ]
then
	mkdir $year
	cd $year
	mkdir $fullmonth
	cd $fullmonth
	touch "$diary"
elif [ $day = $one ] 
then
	cd $year
	mkdir $fullmonth
	cd $fullmonth
	touch $diary
else 
	cd $year
	cd $fullmonth
	touch "$diary"
fi
cd
