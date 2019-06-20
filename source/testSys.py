#!/usr/bin/env python
import sys
import re

print('-------------------')

str1='1362254116@qq.com'
ret = re.match("[a-zA-Z0-9_-]{4,20}@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+",str1).group()
print(ret)






# str1=str(sys.argv[1])
# str1='746011288@qq.com'
# print('sys.argv[1]:%s'%str1)


# try:
#     ret = re.match("^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?",'746011288@qq.com').group()
#     print(ret)
#     username_recv=ret
# except Exception:
#     print('邮箱输入有误，默认发送至1362254116@qq.com')
#     username_recv = '1362254116@qq.com'#收件人，多个收件人用逗号隔开


# content_send=''
# try:
#     for each in sys.argv[2:]:
#         content_send +=each + ' '
# except Exception:
#     content_send=sys.argv[1:]


# print('content_send:%s'%content_send)














# #!/usr/bin/env python
# import sys
# import smtplib
# from email.mime.text import MIMEText
# import re

# str1=str(sys.argv[1])
# print('sys.argv[1:]%s'%str1)


# try:
#     ret = re.match("^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?",str1).group()
#     print(ret)
#     username_recv=ret
# except Exception:
#     print('邮箱输入有误，默认发送至1362254116@qq.com')
#     username_recv = '1362254116@qq.com'#收件人，多个收件人用逗号隔开


# content_send=''
# try:
#     for each in sys.argv[2:]:
#         content_send +=each
# except Exception:
#     content_send=sys.argv[1:]


# print(content_send)









# # #!/usr/bin/env python
# # import sys
# # import re
# # #
# # # print('sys.argv[1]:%s'%sys.argv[1])
# # # print('sys.argv:%s'%sys.argv)
# # # sys.argv[1:]
# #
# # # ret = re.match(("[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?"),sys.argv)
# # # ret = re.match("[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?",sys.argv).group()
# #
# # str='sag3t53126.net   ljhojo9'
# # try:
# #     ret = re.match("^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?",str).group()
# #     print(ret)
# # except Exception:
# #     print('邮箱输入有误，默认发送至1362254116@qq.com')
# #     username_recv = '1362254116@qq.com'
# #
# #
# # # print('ret:%s'%ret)
# #
# #
