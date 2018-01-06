#!/bin/bash

# 本シェルの絶対パス取得
SCRIPT_DIR=$(cd $(dirname $0); pwd)

. $SCRIPT_DIR/../private-conf.sh

PAYLOAD=`cat << EOS
    payload={
        "channel": "#incoming_test",
        "username": "k",
        "text": "!",
        "icon_emoji": ":poop:"
    }
EOS`

curl -X POST --data-urlencode "$PAYLOAD" $WEBHOOK_URL
