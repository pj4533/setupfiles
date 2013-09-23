#!/bin/zsh

# When this exits, exit all back ground process also.
trap 'kill $(jobs -p)' EXIT

ssh pgray@prod-api-1 'tail -f /srv/api.evertrue.com/shared/logs/access_log' &
ssh pgray@prod-api-2 'tail -f /srv/api.evertrue.com/shared/logs/access_log' &

# wait .. until CTRL+C
wait


