#!/bin/sh

python get_content.py 160000 170000 & \
python get_content.py 170000 180000 & \
python get_content.py 180000 190000 & \
python get_content.py 190000 200000
wait
echo done!!

