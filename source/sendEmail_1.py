#!/usr/bin/env python
import sys
import smtplib
from email.mime.text import MIMEText
import re
# from . import aphorismView
# from .aphorismView import mysentence
# import aphorismView
#以上三个方式导入不了 aphorism,目前暂时将该方法直接加入本文件中
import random
import pymysql

def mysentence():
    conn1 = pymysql.connect(host="localhost", port=3306, user="root",
                            password="mysql", database="aphorism",charset="utf8")

    
    #数据库操作1:获取行号
    cs = conn1.cursor()
    #获取表格行数
    sql0="select count(*) from tb_aphorism;"
    cs.execute(sql0)
    data0=cs.fetchall()
    #行数
    c_raw = data0[0][0]
    #随机数，1至c_raw
    c_id=random.randint(1,c_raw)

    #数据库操作2：读取句子：
    cs = conn1.cursor()
    sql = "select *from tb_aphorism where id=%d;"%c_id
    # sql = "select *from tb_aphorism where id=2;"
    cs.execute(sql)
    data = cs.fetchall()  # 是一个元组
    # data1 = cs.fetchone()
    cs.close()
    conn1.close()
    # print(data)#((1, '无风不起浪 (There is no smoke without fire）'),)
    # print(data[0][1])
    #返回句子   
    return data[0][1]

#调用句子生成器
str0=mysentence()
# print('str0-->%s'%str0)


#判断输入的内容，是否合法
try:
    str1=str(sys.argv[1])
except Exception:
    print("未输入内容")

#重写设计结构！！else:

try:
    ret = re.match("[a-zA-Z0-9_-]{4,20}@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+",str1).group()
    print('收件箱：%s'%ret)

except Exception:
    print('默认发送至1416827190@qq.com')
    username_recv = '1416827190@qq.com'#收件人，多个收件人用逗号隔开
    #content_send=str(sys.argv[1:])
    content_list = sys.argv[1:]

else:
    username_recv= ret
    content_list = sys.argv[2:]

content_send = ''
for each in content_list:
    content_send += each + ' '
content_send += '\n\n' + str0
print('发送内容：%s' % content_send)


#发送邮件：
def sendEmail(content_send,username_recv)
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

#调用发送模块
sendEmail(content_send,username_recv)
