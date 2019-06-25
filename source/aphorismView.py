#!/usr/bin/env python
# from aphorism_001.models import Aphorism
# c_sentence=Aphorism.objects.get(id=1)
# print(c_sentence)
import random
import pymysql

def mysentence():
    conn1 = pymysql.connect(host="localhost", port=3306, user="root",
                            password="mysql", database="aphorism",charset="utf8")

    c_id=random.randint(1,8)
    # print(c_id)

    # c_sql="select *from tb_aphorism where id=%d"%c_id
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
    return data[0][1]






