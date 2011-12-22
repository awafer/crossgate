date=`date '+%Y%m%d'`
cp /home/crossgate/gmsv/gmsvlog /home/crossgate/gmsv/log/gmsvlog.$date
cp /dev/null /home/crossgate/gmsv/gmsvlog
date_remove=`date '+%Y%m%d' --date '28 days ago'`
\rm -rf /home/crossgate/gmsv/log/*$date_remove
