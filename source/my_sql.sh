#!/bin/bash

mysql -uroot -pmysql <<-EOF

#/usr/bin/mysql <<-EOF
use bookhero;
select *from tb_books \G;

EOF
