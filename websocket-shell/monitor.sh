#!/bin/sh
set -x

if [ -z "$PORT" ]
then
    PORT=8080;
fi

if [ -z "$TIMEOUT" ]
then
    TIMEOUT=60000000;
fi


nowInMs() {
  echo '('`date +"%s.%N"` ' * 1000000)/1' | bc
}


next_time=$(expr $(nowInMs) + $TIMEOUT);

while [ 1 ]; do 
  count=$(netstat -anp | grep -i "$PORT"  | grep ESTABLISHED | wc -l)
  if [[ $count -le 0 ]];then
    if [ $(nowInMs) -le $next_time ]; then 
       echo $count > count.out;
       next_time=$(expr $(nowInMs) + $TIMEOUT);
    fi 
    echo "none connections";
  else
    rm -f count.out;
  fi
  sleep 1;
done 

