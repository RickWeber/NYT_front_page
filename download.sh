#!/usr/bin/bash
year='2015 2016 2017 2018 2019 2020 2021'
month='01 02 03 04 05 06 07 08 09 10 11 12'
day='01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31'

for y in $year
do
for m in $month
do
for d in $day
do
url="https://static01.nyt.com/images/"
url+="$y/$m/$d"
url+="/nytfrontpage/scan.jpg"
wget $url -O "$y-$m-$d.jpg"
done
done
done
