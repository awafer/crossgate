#!/usr/local/bin/ruby

gmsvpids=`ps auxw|grep gmsv__ |grep -v tail|grep -v ps|grep -v grep|grep -v killgmsv|grep -v init`

gmsvpids.each do |line|
  if line =~ /^\w*\s+(\w*)/ then
        print "gmsv__ kill process id #{$1} \n"
        system( "kill -USR2 #{$1}")
  end
end
