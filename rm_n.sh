#!/bin/bash

function rm_n {
  local dir=$1
  local n=$2
  echo "usage: $0 <dir> <n>" 1>&2
  find ./$dir -size +$n'c'
  find ./$dir -type f -size +$n'c' -exec rm -f {} \;
}

rm_n five 3
#echo rm_n five 3
