#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = $PORT
token = $token
EOF

echo $PORT
echo $token
/frps/frps -c /frps/frps.ini
