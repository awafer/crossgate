pid=`ps auxw|grep gmsv__ |grep -v tail|grep -v ps|grep -v grep|grep -v killgmsv|grep -v init`
if [ "$pid" = ""  ]then
		date=`date`
		echo "Server Restart Time : $date" >> /home/crossgate/gmsv/server_check.txt
		/home/crossgate/gmsv/dungeonclear.csh
		/home/crossgate/gmsv/gmsv__
done
