#!/bin/bash

if [[  -f "count.out" ]]; then
  count=$(cat count.out)
  if [[ $count -eq 0 ]]; then 
     exit 0;
  fi 
fi 
exit -1;

