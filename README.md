    Linux 常用命令
    
    一、文件操作
    1.1 创建和删除文件
    功能	命令	解释
    创建普通文件	touch filename	
    创建目录	mkdir -p dirname	指定-p选项可以创建多级目录
    删除空目录	rmdir dirname	只能删除空目录
    删除文件和目录	rm -rf name	将会递归删除文件，不会放入回收站
    1.2 查看文本文件内容
    功能	命令	解释
    查看整个文件	cat -n filename	指定-n添加行号
    查看整个文件	less -N filename	指定-N添加行号，一点一点查看
    查看部分文件	head -n 20 filename	查看前面20行，默认前10行
    查看部分文件	tail -n 20 filename	查看尾部20行，默认后10行
    1.3 查看文件状态
    功能	命令	解释
    查看目录状态	ls -dl dirname	指定-d查看目录信息，而不是里面的文件
    以大小可读的形式查看目录中的文件	ls -lh dirname	
    查看文件属性	file filename	可以查看文件编码
    查看文件所有信息	stat filename	
    1.4 编辑文件
    功能	命令	解释
    使用vim编辑器	vi filename	使用命令行编辑
    使用gedit编辑器	gedit filename	使用GUI界面编辑
    使用sed编辑器	sed ‘s/gzx/Tom/g’ /etc/passwd	将每行的gzx全部换成Tom
    使用awk编辑器	awk -F : ‘{print $1}’ /etc/passwd	指定分隔符，输出用户名
    1.5 文件处理
    功能	命令	解释
    文件行排序	sort -t ‘:’ -k 7 /etc/passwd	使用:分割，第7行排序
    文件行查找	grep -n ‘^gzx’ /etc/passwd	使用正则表达式查找，且标出行号
    1.6 查找文件
    功能	命令	解释
    利用文件名定位文件	locate hello	从整个目录树查找含有hello的文件或目录
    查找特定文件	find ~ -type f -name hello.txt	从用户的HOME目录下查找文件名为hello.txt的文件
    1.7 文件打包和压缩
    功能	命令	解释
    打包并压缩成gzip格式	tar cvfz all.tgz *	将当前目录下的所有文件压缩到all.tgz
    解压缩gzip格式	tar -C test -zxvf all.tgz	将压缩包解压到test目录下，第二个-不能省
    打包并压缩成bzip2格式	tar cvfj all_bzip2.tbz *	压缩比大，速度慢
    解压缩bzip2格式	tar -C test -jxvf all_bzip2.tbz	同上
    打包并压缩成tar.xz格式	tar cvfJ all.tar.xz *	大写的J
    解压缩xz格式	tar -C test -Jxvf all.tar.xz	
    
    
    二、设备操作
    功能	命令	解释
    查看设备的分区表	sudo fdisk -l /dev/sda	使用超级权限，列出分区信息
    给U盘分区	sudo fdisk /dev/sdb	一开始在内存里操作，直到输入w命令，分区之前应当卸载该设备上的文件系统
    给分区安装文件系统	sudo mkfs -t ext4 /dev/sda1	给第一块硬盘的第一个分区安装ext4文件系统
    挂载文件系统	sudo mount -t ext4 /dev/sdb1 /media	挂载设备/dev/sda1到/media，同时指定设备的文件系统为ext4
    挂载文件系统	sudo mount -t iso9660 -o loop image.iso /mnt/iso_image	挂载镜像文件image.iso1到/mnt/iso_image，挂载文件要加-o选项
    卸载文件系统	sudo umount /dev/sba1[/media]	卸载文件系统，可以指定设备名或挂载点
    拷贝设备	sudo dd if=/dev/sda of=bootsect.bin bs=512 count=1	拷贝sda的第一个扇区，其中bs表示block size，每次拷贝的大小，而count表示拷贝多少次
    列出当前系统的各种文件系统	df -h	
    列出当前目录下各个文件占用的空间大小	du -sh *	-s表示统计当前文件，而不进入子目录
    列出系统挂载点	mount	
    
    三、用户管理
    3.1 增删用户
    功能	命令	解释
    创建用户	sudo useradd -m Jession	创建Jession，同时创建HOME目录，还必须用passwd设置密码。没有sudo权限
    设置用户密码	sudo passwd Jession	普通用户只能设置自己的密码，超级用户能设置他人的密码
    删除用户	sudo userdel -r Jession	同时删除其HOME目录
    切换到超级用户	su	当前目录不变，输入root的密码
    切换到超级用户	su -	运行root的Login Shell，并切换到/root
    使用超级用户权限	sudo 命令	当前用户必须是sudoer。输入的是当前用户的密码，创建的文件是root，更加安全
    
    3.2 修改文件属性
    功能	命令	解释
    修改权限	chmod -x note.txt	全部去掉执行权限，有u(用户),g(组),o(其他),a(所有)四种
    修改权限	chmod 664 note.txt	八进制的形式
    修改属主	sudo chmod Jessin note.txt	更改属主
    修改属主	sudo chmod Jessin: note.txt	更改属主并修改为Jessin属组
    修改属主和属组	sudo chmod Jessin:Jessin note.txt	
    修改属组	sudo chgrp Jessin note.txt	可以用chown替换
    查看创建文件的默认权限	umask	
    修改创建的文件的属性	umask 022	去掉属组和其他用户的写权限
    
    
    四、软件安装
    4.1 从库安装
    功能	命令	解释
    更新软件库	sudo apt-get update	源位于文件/etc/apt/sources.list
    升级已安装的软件	sudo apt-get upgrade	一般要先运行上一个命令
    安装软件	sudo apt-get install pkt_name	包名不包括版本号，包含包文件，由库源完成映射
    删除软件	sudo apt-get remove pkt_name	不会删除配置文件
    删除软件	sudo apt-get purge pkt_name	会删除配置文件
    智能删除软件	sudo apt-get autoremove	移除安装某软件包时需要的依赖包
    清除本地仓库的所有包文件	sudo apt-get clean	主要是/var/cache/apt/archives/ 和/var/cache/apt/archives/partial/
    智能清除本地仓库的包文件	sudo apt-get autoclean	
    查找文件所在的包	dpkg -S filename	
    查找文件所在的包	apt-file search filename	一般要先运行apt-file update
    解决依赖破损	sudo apt-get -f install	-f表示–fix-broken
    查看软件的安装状态	dpkg –status pkt_name	可以查看软件是否已经安装
    添加库源	sudo add-apt-repository ppa:fcitx-team/nightly	
    删除库源	sudo add-apt-repository –remove ppa:fcitx-team/nightly	
    
    4.2 手动安装
    功能	命令	解释
    生成Makefile	./configure	可以指定安装的目录–prefix
    编译	make	
    将命令安装到特定目录	sudo make install	
    
    五、进程管理
    功能	命令	解释
    列举当前系统的所有进程	ps aux	BSD风格
    列举当前系统的所有进程	ps -ef	UNIX风格，字段与上面存在不同
    动态刷新进程列表	top	
    查看所有任务	jobs	
    将进程放置到后台运行	命令 &	
    将进程放置到后台运行	bg %1	1表示第一个任务号
    将进程放置到前台运行	fg %1	1表示第一个任务号
    列出系统支持的信号	kill -l	
    给进程发送信号	kill -signum[-signame] pid	必须存在亲属关系或者是超级用户。默认发送SIGTERM
    查看进程树	pstree
    	
    六、网络管理
    功能	命令	解释
    查看IP	ifconfig	
    检查网络是否连通	ping IP	发送ICMP echo回显请求
    检查网络路由拓扑	traceroute	发送ICMP echo回显请求，TTL从一开始不断加加
    查看网络连接状态	netstat	可以看TCP状态
    查看本地路由表	netstat -r	
    发起http请求	curl	
    抓取网络数据包	tcpdump	
    查看arp缓存	arp	可以添加或删除arp表项
    查看打开的端口、运行的服务	sudo lsof -i :22,3306	冒号不能省，后面跟逗号列表。部分服务需要超级权限
    查看打开的端口、运行的服务	netstat -ntl	-n表示服务的端口，而不是输出服务名，-t表示输出tcp，-l表示监听的端口，不指定这个选项将输出当前的tcp连接
    非交互式下载	wget -c URL	指定-c表示继续下载
    使用ftp服务	ftp ftp_server	通常有一个匿名用户anonymous，无密码
    上传或下载远程文件	scp filename gzx@192.168.1.100:Share	上传文件filename到gzx用户目录的Share目录下。在100 IP上必须有一个gzx用户
    远程登录	ssh gzx@192.168.1.100	100 IP必须运行sshd服务
    
    七、其他命令
    功能	命令	解释
    执行历史记录的某条命令	!number	通过history命令得到number，但执行环境必须相同
    画图工具	dot -Tpng -o test.png test.dot	生成dot图，其中-T为输出格式，-o为输出的文件名，test.dot为输入的脚本
    打开网页等各种格式的文件	xdg-open http://www.baidu.com	在浏览器中打开一个新的界面
    打开图片	xdg-open test.png	自动调用默认的程序
    将上一个命令的结果格式化给另一个命令	cat hello.txt | xargs -I {} mv {} /tmp/	默认情况下会将参数以空白放到命令的最后，参数最多可以达到系统的上限，然后执行下一次命令。如果参数要放到中间，则必须用-I制定占位符，从而将结果放到中间
    
    
    ========================================
    flask 用6001端口无法访问
     工程师 63828 号 :    您好：您使用sudo ufw status查看系统防火墙状态是否开启；如果开启关闭下防火墙试试；如果关闭使用iptables -F清除下防火墙规则后再访问谢谢  
    
    iptables -F ：慎用
    ========================================
    
    flask 远程调试中-Address already in use
    
    答：端口已被占用
    netstat  -anptu  |  grep   5000
    kill -9 pid
    （产生原因，本地断网，重新调试时端口被占用）
    
    ========================================
    nginx
    检查: netstat -tnulp | grep nginx
    
    启动: systemctl start nginx
    停止: systemctl stop nginx
    
    ------新用阿里服务器----------------
     Unable to locate package git
    答：apt-get update
    
    ========================================
    启动,停止docker服务
    启动
    sudo service docker start
    停止
    sudo service docker stop
    启动docker
    sudo service docker restart
    状态检查
    sudo service docker status
    ========================================
    service --status-all
    + 表示服务正在运行，- 表示服务已停止。您可以通过为+和-服务运行service SERVICENAME status来查看此信息。
    某些服务由Upstart管理。您可以使用sudo initctl list检查所有Upstart服务的状态。由Upstart管理的任何服务也将显示在service --status-all提供的列表中，但将标记为?。
    参考：man service
    
    抓取网络数据包	tcpdump	
    查看进程树	pstree
    列举当前系统的所有进程	ps -ef
    动态刷新进程列表	top
    
    
    ========================================
    #显示两层
    tree -L 2 
    ======================
    netstat -pan 查看当前开放的端口
    ======================
    
    
    
