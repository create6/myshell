#!/usr/bin/env python
import sys
import smtplib
from email.mime.text import MIMEText
import re

str1=str(sys.argv[1])


try:
    ret = re.match("[a-zA-Z0-9_-]{4,20}@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+",str1).group()
    print('收件箱：%s'%ret)
    
except Exception:
    print('邮箱输入有误，默认发送至1362254116@qq.com')
    username_recv = '1362254116@qq.com'#收件人，多个收件人用逗号隔开
    content_send=str(sys.argv[1:])
    print('发送内容：%s'%content_send)
    # for each in :
	   #  content_send +=each
	# print('发送内容：%s'%content_send)
    
else:
	username_recv=ret
	content_send=''

	for each in sys.argv[2:]:
	    content_send +=each + ' '

	print('发送内容：%s'%content_send)



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
print ('success')
