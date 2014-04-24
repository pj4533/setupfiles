#!/bin/zsh

ssh prod-api-1 "cp /srv/api.evertrue.com/shared/logs/access_log ~/prod1_access_log"
ssh prod-api-2 "cp /srv/api.evertrue.com/shared/logs/access_log ~/prod2_access_log"

ssh prod-api-1 "zip prod1_access_log prod1_access_log"
ssh prod-api-2 "zip prod2_access_log prod2_access_log"

scp "prod-api-1:~/prod1_access_log.zip" prod1_access_log.zip
scp "prod-api-2:~/prod2_access_log.zip" prod2_access_log.zip

ssh prod-api-1 "rm ~/prod1_access_log*"
ssh prod-api-2 "rm ~/prod2_access_log*"