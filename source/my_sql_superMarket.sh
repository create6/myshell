#!/bin/bash

mysql -uroot -pmysql <<-EOF

use superMarket;
select *from vip_list \G;
#select *from tb_heros \G;

EOF
