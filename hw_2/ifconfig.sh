ifconfig | sed -e "s/inet addr:\(\([0-9]\{1,3\}\)\.\)\{3\}\([0-9]\{1,3\}\)/inet addr:x.x.x.x/g" -e "s/^\s*$/----------/g"
