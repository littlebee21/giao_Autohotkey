ip="192.168.31.231" 

git config  --global http.proxy socks5://${ip}:10809
git config  --global https.proxy socks5://${ip}:10809
