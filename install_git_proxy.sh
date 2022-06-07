git-proxy-wrapper="/usr/local/bin/git-proxy-wrapper"


touch ${git-proxy-wrapper}
sudo chmod +x ${git-proxy-wrapper}

echo "nc -xlocalhost:1080 -X5 $*" > ${git-proxy-wrapper}


