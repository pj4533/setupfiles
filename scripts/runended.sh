#!/bin/zsh

RUNENDED=`date +"%s"`
RUNSTARTED=$(cat /tmp/runstarted)
RUNTIME=$(($RUNENDED - $RUNSTARTED))

curl -d "email=$STATHAT_EZKEY&stat=Xcode Run Time&value=$RUNTIME" http://api.stathat.com/ez
curl -d "email=$STATHAT_EZKEY&stat=Xcode Run Time Total&count=$RUNTIME" http://api.stathat.com/ez

`rm /tmp/runstarted`
