#!/bin/bash
#for loop 30.get process id by  random tag 
#if got the process id , start strace command
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i  in $(seq 1 30);do
   #echo $i $1
   #cmd="ps -ef |grep qht6v9ez2s |grep -v sshpass |grep -v grep |awk '{print $2}'
   process_id=`ps -ef |grep $1 |grep -v sshpass |grep -v grep | grep -v 'session_tracker.sh' |awk '{print $2}'` # run cmd and set the result to variable cmd
   echo "process:  $process_id"
   if [ ! -z "$process_id"  ];then
        echo 'start run strace....'
        strace -fp $process_id -t -o $DIR/track_log/ssh_audit_$2.log;
        break;
   fi
   sleep 1
done;
