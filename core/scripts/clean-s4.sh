#!/bin/bash
LOG_DIR=../s4_core/logs/s4_core
LOCK_DIR=../s4_core/lock

echo Deleting logs.
for file in $LOG_DIR/*; do
        if [ -f $file ]; then
                echo Deleting $file
                rm $file
        fi
done


echo Deleting locks.
for file in $LOCK_DIR/*; do
        if [ -f $file ]; then
                rm $file
        fi
done
