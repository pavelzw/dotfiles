function pferd() {
  find ~/PFERD_SS22 -name '.DS_Store' -delete;
  ~/PFERD_SS22/pferd "$@";
}

function whois() {
  local domain=$(echo "$1" | awk -F/ '{print $3}') # get domain from URL
  if [ -z $domain ] ; then
  	domain=$1
  fi
  echo "Getting whois record for: $domain …"

  # avoid recursion
  # this is the best whois server
  # strip extra fluff
  /usr/bin/whois -h whois.internic.net $domain | sed '/NOTICE:/q'
}

function fs() {
  size=$(stat -f "%z" $1)
  kb=1024
  mb=1048576
  gb=1073741824
  tb=1099511627776
  if [ $size -gt $tb ]; then
    echo "$(bc -l <<< "scale=2; ${size} / ${tb}") TB"
  elif [ $size -gt $gb ]; then
    echo "$(bc -l <<< "scale=2; ${size} / ${gb}") GB"
  elif [ $size -gt $mb ]; then
    echo "$(bc -l <<< "scale=2; ${size} / ${mb}") MB"
  elif [ $size -gt $kb ]; then
    echo "$(bc -l <<< "scale=2; ${size} / ${kb}") KB"
  else
    echo $size
  fi
}
