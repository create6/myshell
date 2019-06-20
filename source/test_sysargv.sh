#!/usr/bin/env python
import sys
import re

print('sys.argv[1]:%s'%sys.argv[1])
print('sys.argv:%s'%sys.argv)


str1=str(sys.argv[1])
print('sys.argv[1]%s'%str1)


try:
    ret = re.match("^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?",str1).group()
    print(ret)
    username_recv=ret
except Exception:
    print('邮箱输入有误，默认发送至1362254116@qq.com')
    username_recv = '1362254116@qq.com'#收件人，多个收件人用逗号隔开


content_send=''
try:
    for each in sys.argv[2:]:
        content_send +=each + ' '
except Exception:
    content_send=sys.argv[1:]


print('content_send:%s'%content_send)
