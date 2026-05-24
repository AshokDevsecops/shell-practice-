#!/bin/bash

#### Special Variables #####
echo " All variables passed to the script: $@ "
echo " Number of varibles passed: $# "
echo " First varible: $1 "
echo " Script Name : $0 "
echo "Who is running this: $USER "
echo "which directory: $PWD "
echo "Home Directory: $HOME "
echo " PID of the currrent script: $PID"
sleep 5 &
echo " PID of the background running script right now: $! "
wait $!
echo " line number: $LINENO "
echo " Script excuted in $SECONDS seconds "
echo " Random number : $RANDOM "
echo "Exit code of previous number: $?