import urllib.request
import bs4
import json
import pickle
import sys

import sys
sys.setrecursionlimit(10000)

# 検索対象url番号
start, end = int(sys.argv[1]), int(sys.argv[2])

# 取得した数
num = 0
menu = {}

last = 0

error_url = []

for i in range(start, end):
    tmp = i+1 # 次に検索し始めるurl番号を記録
    url = 'https://www.asken.jp/calculate/meal/' + str(i)
    try:
        
        me = bs4.BeautifulSoup(urllib.request.urlopen(url).read(), "lxml")
        num += 1
        print("found:", url, ", scraper:", str(start) + '-' + str(end), ", url_id:", i, ", num:" , num)
        me = me.find('div', id="content_all_body")
        menu.update({i:me})
        
    except urllib.error.HTTPError as e:
        print("[W] URL Not Found")

    except:
        print("[E] Unkown Error!!!")
        error_url.append(url)

    if (i+1)%1000==0:
        with open('data/menu-' + '{0:07d}'.format(last)+ '-' + '{0:07d}'.format(i+1) + '.pkl', 'wb') as f:
            pickle.dump(menu, f)
        menu={}
        last = i+1

print(error_url)
