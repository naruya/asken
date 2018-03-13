#!/bin/sh

python get_content.py 0 10 & \
python get_content.py 10 20 & \
python get_content.py 20 30 & \
python get_content.py 30 40 & \
python get_content.py 40 50 & \
python get_content.py 50 60 & \
python get_content.py 60 70 & \
python get_content.py 70 80 & \
python get_content.py 80 90 & \
python get_content.py 90 100
wait
python get_content.py 100 110 & \
python get_content.py 110 120 & \
python get_content.py 120 130 & \
python get_content.py 130 140 & \
python get_content.py 140 150 & \
python get_content.py 150 160 & \
python get_content.py 160 170 & \
python get_content.py 170 180 & \
python get_content.py 180 190 & \
python get_content.py 190 200
wait
echo done!!

