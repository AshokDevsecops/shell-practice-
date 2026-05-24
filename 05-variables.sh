#!/bin/bash

START_TIME=$(DATE +%s)

sleep 10

END_TIME=$(DATE +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo " scriptis excuted in $TOTAL_TIME seconds "