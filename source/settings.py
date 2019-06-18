

#邮件发送配置
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend' # 指定邮件后端
EMAIL_HOST = 'smtp.126.com' # 发邮件主机
EMAIL_PORT = 25 # 发邮件端口
EMAIL_HOST_USER = 'create6@126.com' # 授权的邮箱
EMAIL_HOST_PASSWORD = 'bolsu3306' # 邮箱授权时获得的密码，非注册登录密码
#EMAIL_FROM = '小助手<create6@126.com>' # 发件人抬头