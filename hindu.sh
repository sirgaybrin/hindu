#!/bin/bash
# declare LINK variable
echo "Usage: hindu.sh [EDITION] [TYPE]
Editions:

1				Chennai
2				Hyderabad
3				Delhi
4				Bengaluru
5				Kochi
6				Vishakapatnam
7				Vijayawada

Types:

A				Regular Paper
B				Metro Plus
C 				Education Plus

Example:
	hindu.sh 1 A


"
LINK="https://epaper.thehindu.com/pdf/$(date +"%Y")/$(date +"%m")/$(date +"%d")/$(date +"%Y%m%d")$1$2.zip"
wget -c $LINK
unzip $(date +"%Y%m%d")$1$2.zip
rm $(date +"%Y%m%d")$1$2.zip
