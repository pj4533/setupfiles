#!/bin/zsh

BUILDENDED=`date +"%s"`
BUILDSTARTED=$(cat /tmp/buildstarted)
BUILDTIME=$(($BUILDENDED - $BUILDSTARTED))

curl -d "email=$STATHAT_EZKEY&stat=Xcode Build Time&value=$BUILDTIME" http://api.stathat.com/ez
curl -d "email=$STATHAT_EZKEY&stat=Xcode Build Time Total&count=$BUILDTIME" http://api.stathat.com/ez

`rm /tmp/buildstarted`
