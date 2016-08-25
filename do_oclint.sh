#!/bin/bash

# Clean main should work
./oclint-0.10.3/bin/oclint -o oclint.log -max-priority-1 0 -max-priority-2 0 -max-priority-3 0 \
<<<<<<< HEAD
  -disable-rule ShortVariableName \
  main.cpp  main_test.cpp  my_functions.cpp  my_functions_test.cpp \
  my_functions.h \
  -- -c > /dev/null

num_lines=`wc -l oclint.log | cut -d " " -f 1`
=======
  main.cpp  main_test.cpp  my_functions.cpp  my_functions_test.cpp \
  my_functions.h \
  -- -c > /dev/null
num_lines=`wc -l log_correct.txt | cut -d " " -f 1`
>>>>>>> 19ff5cf322e63b8ab7d0c50119e7387044c0e665

if [ $num_lines -eq 8 ]; 
then
  echo "Code is OK"
else
  echo "Code is not OK"
  exit 1
fi