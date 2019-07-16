#!/c/Users/struggle6/AppData/Local/Programs/Python/Python37/python

from pexpect import pxssh
import sys

def gossh():
    s=pxssh.pxssh()
    s.logfile=sys.stdout
    hostname='47.112.108.32'
    username='root'
    password='bolsu9908@'
    s.login(hostname,username,password)
    s.sendline('ls ~/Desktop')
    s.prompt()

gossh()


