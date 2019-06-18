#! /usr/bin/env python

#普通发送
from django.core.mail import send_mail

send_mail(subject='测试专用',
          message='你好我是shell',
          from_email='create6@126.com',
          recipient_list=['1362254116@qq.com'])
print('already send email')
