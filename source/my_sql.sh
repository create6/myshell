#!/bin/bash

mysql -uroot -pmysql <<-EOF

use bookhero;
select *from tb_books \G;
select *from tb_heros \G;

EOF
