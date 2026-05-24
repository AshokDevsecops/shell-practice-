#!/bin/bash

NUM1=10
NUM2=linux

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

#Array

MOVIES=("RRR" "VARANASI" "PUSHPA")  #Index always starts from 0
echo "Movies are: ${MOVIES[@]}"
echo "first movie : ${MOVIES[0]}"
echo " Second movie : ${MOVIES[1]}"
echo "Third Movie: ${MOVIES[2]}"