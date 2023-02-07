#!/bin/sh 

if [  -f "count.out" ]; then
  count=$(cat count.out)
  if [[ $count -eq 0 ]]; then 
     return 0;
  fi 
fi 
exit -1;

