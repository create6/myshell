#!/usr/bin/env python
import sys
import smtplib
from email.mime.text import MIMEText
import re
# from . import aphorismView
# from .aphorismView import mysentence
# import aphorismView

import random
import pymysql

def mysentence():
    conn1 = pymysql.connect(host="localhost", port=3306, user="root",
                            password="mysql", database="aphorism",charset="utf8")

    #cs =conn1.cu
    
    c_id=random.randint(1,147)


    # print(c_id)
    # c_sql="select *from tb_aphorism where id=%d"%c_id
    cs = conn1.cursor()
    sql = "select *from tb_aphorism where id=%d;"%c_id
    # sql = "select *from tb_aphorism where id=2;"
    sql0="select count(*) from tb_aphorism;"
    cs.execute(sql)
    
    data = cs.fetchall()  # 是一个元组
    # data1 = cs.fetchone()
    cs.execute(sql0)
    data0=cs.fetchall()
    
    
    cs.close()
    conn1.close()
    # print(data)#((1, '无风不起浪 (There is no smoke without fire）'),)
    # print(data[0][1])
    print(data0[0][0])
    return data[0][1]


str0=mysentence()
print('str0-->%s'%str0)

# str2 =sys.argv.append(str0)
# print('str2:%s'%str2)

try:
    str1=str(sys.argv[1])
except Exception:
    print("未输入内容")

#重写设计结构！！else:

try:
    ret = re.match("[a-zA-Z0-9_-]{4,20}@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+",str1).group()
    print('收件箱：%s'%ret)

except Exception:
    print('默认发送至1362254116@qq.com')
    username_recv = '1362254116@qq.com'#收件人，多个收件人用逗号隔开
    #content_send=str(sys.argv[1:])
    content_list = sys.argv[1:]



else:
    username_recv= ret
    content_list = sys.argv[2:]

    # content_send=''
    #
	# for each in sys.argv[2:]:
	#     content_send +=each + ' '
    #
	# print('发送内容：%s'%content_send)

content_send = ''
for each in content_list:
    content_send += each + ' '
content_send += '\n\n' + str0
print('发送内容：%s' % content_send)


#
mailserver = "smtp.126.com"  #邮箱服务器地址
username_send = 'create6@126.com'  #邮箱用户名
password = 'bolsu3306'   #邮箱密码：需要使用授权码
#mail = MIMEText('hello python and shell')   #内容
mail = MIMEText(content_send)   #内容
mail['Subject'] = 'lsu_IT'
mail['From'] = username_send  #发件人
mail['To'] = username_recv  #收件人；[]里的三个是固定写法，别问为什么，我只是代码的搬运工
smtp = smtplib.SMTP(mailserver,port=25) # 连接邮箱服务器，smtp的端口号是25
# smtp=smtplib.SMTP_SSL('smtp.qq.com',port=465) #QQ邮箱的服务器和端口号
smtp.login(username_send,password)  #登录邮箱
smtp.sendmail(username_send,username_recv,mail.as_string())# 参数分别是发送者，接收者，第三个是把上面的发送邮件的内容变成字符串
smtp.quit() # 发送完毕后退出smtp
print ('Send Success')
