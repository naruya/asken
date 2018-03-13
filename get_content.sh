#!/bin/sh

python get_content.py 0 10000 & \
python get_content.py 10000 20000 & \
python get_content.py 20000 30000 & \
python get_content.py 30000 40000
wait
python get_content.py 40000 50000 & \
python get_content.py 50000 60000 & \
python get_content.py 60000 70000 & \
python get_content.py 70000 80000
wait
python get_content.py 80000 90000 & \
python get_content.py 90000 100000 & \
python get_content.py 100000 110000 & \
python get_content.py 110000 120000
wait
python get_content.py 120000 130000 & \
python get_content.py 130000 140000 & \
python get_content.py 140000 150000 & \
python get_content.py 150000 160000
wait
python get_content.py 160000 170000 & \
python get_content.py 170000 180000 & \
python get_content.py 180000 190000 & \
python get_content.py 190000 200000
wait
echo done!!

