#!/bin/zsh

LOGFILENAME="access_log.$1.gz"

scp "prod-api-1:/srv/api.evertrue.com/shared/logs/archives/$LOGFILENAME" prod1_$LOGFILENAME
scp "prod-api-2:/srv/api.evertrue.com/shared/logs/archives/$LOGFILENAME" prod2_$LOGFILENAME

gunzip prod1_$LOGFILENAME
gunzip prod2_$LOGFILENAME
