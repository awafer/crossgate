#!/usr/local/bin/ruby

pid=`ps auxw|grep check|grep -v ps|grep -v grep|grep -v kill`

pid.each do |line|
	if line =~ /^\w*\s+(\w*)/ then
		print "check.sh kill process id #{$1} \n"
		system( "kill -TERM #{$1}")
	end
end

gmsvpids=`ps auxw|grep gmsv__ |grep -v tail|grep -v ps|grep -v grep|grep -v killgmsv|grep -v init`

gmsvpids.each do |line|
  if line =~ /^\w*\s+(\w*)/ then
        print "gmsv__ kill process id #{$1} \n"
        system( "kill -USR1 #{$1}")
  end
end
