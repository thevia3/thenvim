Vim�UnDo� ?
�*-��G��5NJc]�uԗ���Q���iQp   M                 =       =   =   =    ^��P   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^��     �                   5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             ^��6     �                  -#!/data/data/com.termux/files/usr/bin/python35�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^��M     �                 # -*- encoding:utf-8 -*-5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��N    �                  �               �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^��g     �      ,   P      m   headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}   *    r = requests.get(url, headers=headers)      r.encoding = 'gb2312'      return r.text           def get_pic_list(html):      '''   P   获取每个页面的套图列表,之后循环调用get_pic函数获取图片       '''   ,   soup = BeautifulSoup(html, 'html.parser')   3   pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:   3       a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')          text = a_tag.get_text()          get_pic(link, text)           def get_pic(link, text):      '''   (   获取当前页面的图片,并保存      '''   -   html = download_page(link)  # 下载界面   ,   soup = BeautifulSoup(html, 'html.parser')   X   pic_list = soup.find('div', id="picture").find_all('img')  # 找到界面所有图片   n    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�                    @       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   ?   A   R         create_dir('pic')5�_�                    A       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   @   B   R      D   queue = [i for i in range(1, 72)]   # 构造 url 链接 页码。5�_�      	              C       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   B   D   R         while len(queue) > 0:5�_�      
           	   D       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   C   E   R             for thread in threads:5�_�   	              
   E       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   D   F   R      $           if not thread.is_alive():5�_�   
                 F       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   E   G   R      %               threads.remove(thread)5�_�                    G       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   F   H   R      P       while len(threads) < 5 and len(queue) > 0:   # 最大线程数设置为 55�_�                    H       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   G   I   R      #            cur_page = queue.pop(0)5�_�                    I       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   H   J   R      E           url = 'http://meizitu.com/a/more_{}.html'.format(cur_page)5�_�                    L       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   K   M   R                 thread.start()5�_�                    M       ����                                                                                                                                                                                                                                                                                                                                                             ^���     �   L   N   R      Y           print('{}正在下载{}页'.format(threading.current_thread().name, cur_page))5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             ^��      �   Q              	   main()5�_�                   ;       ����                                                                                                                                                                                                                                                                                                                            ;           <           V        ^��     �   ;   =   R         get_pic_list(page_html)�   :   <   R      !   page_html = download_page(url)5�_�                    6       ����                                                                                                                                                                                                                                                                                                                            6          7          V       ^��*     �   6   8   R             os.makedirs(name)�   5   7   R         if not os.path.exists(name):5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            '          )          V       ^��D     �   (   *   R      X   pic_list = soup.find('div', id="picture").find_all('img')  # 找到界面所有图片�   '   )   R      ,   soup = BeautifulSoup(html, 'html.parser')�   &   (   R      -   html = download_page(link)  # 下载界面5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            '          )          V       ^��L     �   ,   .   R         for i in pic_list:5�_�                    .       ����                                                                                                                                                                                                                                                                                                                            '          )          V       ^��O     �   -   /   R      ;       pic_link = i.get('src')  # 拿到图片的具体 url5�_�                    2       ����                                                                                                                                                                                                                                                                                                                            '          )          V       ^��W     �   1   3   R      V           time.sleep(1)   # 休息一下，不要给网站太大压力，避免被封5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            '          )          V       ^��`     �   )   +   R          headers = {   _"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}�   *   ,   R      g        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       ^��v     �      !   Q             get_pic(link, text)�          Q             text = a_tag.get_text()�         Q               link = a_tag.get('href')�         Q      3       a_tag = i.find('h3', class_='tit').find('a')�         Q          for i in pic_list:�         Q      3   pic_list = soup.find_all('li', class_='wp-item')�         Q      ,   soup = BeautifulSoup(html, 'html.parser')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       ^���     �         Q         headers = {   _"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}�         Q      f       "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^���    �         P         return r.text�         P         r.encoding = 'gb2312'�         P      *    r = requests.get(url, headers=headers)�         P      m   headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      ,   P         '''      用于下载页面      '''   n    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}   *    r = requests.get(url, headers=headers)       r.encoding = 'gb2312'       return r.text           def get_pic_list(html):      '''   P   获取每个页面的套图列表,之后循环调用get_pic函数获取图片       '''   -    soup = BeautifulSoup(html, 'html.parser')   4    pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:   4        a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')           text = a_tag.get_text()           get_pic(link, text)           def get_pic(link, text):      '''   (   获取当前页面的图片,并保存      '''   .    html = download_page(link)  # 下载界面   -    soup = BeautifulSoup(html, 'html.parser')   Y    pic_list = soup.find('div', id="picture").find_all('img')  # 找到界面所有图片   n    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      ,   R      *    r = requests.get(url, headers=headers)       r.encoding = 'gb2312'       return r.text           def get_pic_list(html):       '''   Q    获取每个页面的套图列表,之后循环调用get_pic函数获取图片        '''   -    soup = BeautifulSoup(html, 'html.parser')   4    pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:   4        a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')           text = a_tag.get_text()           get_pic(link, text)           def get_pic(link, text):       '''   )    获取当前页面的图片,并保存       '''   .    html = download_page(link)  # 下载界面   -    soup = BeautifulSoup(html, 'html.parser')   Y    pic_list = soup.find('div', id="picture").find_all('img')  # 找到界面所有图片5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �                g        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�      %               &       ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �   %   &              '''5�_�       &   !       %   *        ����                                                                                                                                                                                                                                                                                                                            *           +           V        ^��f     �   )   *              headers = {   g        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��k     �                Q    获取每个页面的套图列表,之后循环调用get_pic函数获取图片5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^��m     �                     '''5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                            (           (           V        ^��o     �         N    �         N    5�_�   (   *           )   >   !    ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^���     �   =   ?   O      E    queue = [i for i in range(1, 72)]   # 构造 url 链接 页码。5�_�   )   +           *   >   D    ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^���    �   =   ?   O      D    queue = [i for i in range(1, 5)]   # 构造 url 链接 页码。5�_�   *   ,           +   >   P    ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^���    �         O               '''   Q    获取每个页面的套图列表,之后循环调用get_pic函数获取图片        '''   -    soup = BeautifulSoup(html, 'html.parser')   4    pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:   4        a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')           text = a_tag.get_text()           get_pic(link, text)    5�_�   +   -           ,   &   I    ����                                                                                                                                                                                                                                                                                                                            '           '           V        ^���     �   %   '   M      g        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0"}5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                            '           '           V        ^���     �         M    5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                            (           (           V        ^���    �         N    �         N    5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^��
     �         O          '''5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^��    �         O              '''5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^��     �         O      '''   T       获取每个页面的套图列表,之后循环调用get_pic函数获取图片   '''   -    soup = BeautifulSoup(html, 'html.parser')   4    pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��    �         P      T       获取每个页面的套图列表,之后循环调用get_pic函数获取图片5�_�   2   4           3   "        ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��4     �   "   $   P    5�_�   3   5           4   #        ����                                                                                                                                                                                                                                                                                                                            +           +           V        ^��5     �   #   %   Q    �   #   $   Q    5�_�   4   6           5   %        ����                                                                                                                                                                                                                                                                                                                            ,           ,           V        ^��:     �   $   %              '''5�_�   5   7           6   &       ����                                                                                                                                                                                                                                                                                                                            +           +           V        ^��;     �   %   &              '''5�_�   6   8           7   %       ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��=     �   $   &          )    获取当前页面的图片,并保存5�_�   7   9           8   %       ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��?     �   $   &   P      +    # 获取当前页面的图片,并保存5�_�   8   :           9           ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^��D     �                '''5�_�   9   ;           :           ����                                                                                                                                                                                                                                                                                                                            )           )           V        ^��E     �                '''5�_�   :   <           ;           ����                                                                                                                                                                                                                                                                                                                            (           (           V        ^��H     �                 5�_�   ;   =           <           ����                                                                                                                                                                                                                                                                                                                            '           '           V        ^��J   	 �                M获取每个页面的套图列表,之后循环调用get_pic函数获取图片5�_�   <               =   '        ����                                                                                                                                                                                                                                                                                                                            '           '           V        ^��O   
 �      #   M      O# 获取每个页面的套图列表,之后循环调用get_pic函数获取图片   * soup = BeautifulSoup(html, 'html.parser')   2  pic_list = soup.find_all('li', class_='wp-item')      for i in pic_list:   4        a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')           text = a_tag.get_text()           get_pic(link, text)           def get_pic(link, text):   '# 获取当前页面的图片,并保存5�_�       "       %   !   *        ����                                                                                                                                                                                                                                                                                                                            *          *          V       ^���     �   )   ,        5�_�   !   #           "   ?   !    ����                                                                                                                                                                                                                                                                                                                            *          *          V       ^���     �   >   @   P      D    queue = [i for i in range(1, 5)]   # 构造 url 链接 页码。5�_�   "   $           #   ?   D    ����                                                                                                                                                                                                                                                                                                                            *          *          V       ^���    �   >   @   P      O    queue = [i for i in range(1, 5)]   # 构造 url 链接 页码,default:1~72.5�_�   #               $   @       ����                                                                                                                                                                                                                                                                                                                            (          (          V       ^��
     �      "   P      R    获取每个页面的套图列表, 之后循环调用get_pic函数获取图片   R    获取每个页面的套图列表, 之后循环调用get_pic函数获取图片       '''           '''   -    soup = BeautifulSoup(html, 'html.parser')   4    pic_list = soup.find_all('li', class_='wp-item')       for i in pic_list:   4        a_tag = i.find('h3', class_='tit').find('a')            link = a_tag.get('href')           text = a_tag.get_text()           get_pic(link, text)5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                            :          ;          V       ^��     �   :   <   R      !   page_html = download_page(url)�   9   <   R      5def execute(url):      page_html = download_page(url)5��