#!/bin/bash
export LC_ALL=C

X1=$(whoami)
X2=$(hostname)
X3=${UUID:-$(echo -n "$X1@$X2" | md5sum | head -c 32 | sed 's/^................................$/\1-\2-\3-\4-\5/')}
X4=${NEZHA_SERVER:-''}
X5=${NEZHA_PORT:-''}
X6=${NEZHA_KEY:-''}
X7=${SUB_TOKEN:-${X3:0:8}}

case "$X2" in
  *ct8*) D0="ct8.pl" ;;
  *hostuno*) D0="useruno.com" ;;
  *) D0="serv00.net" ;;
esac

B1="$HOME/domains/${X1}.${D0}/logs"
B2="$HOME/domains/${X1}.${D0}/public_html"
mkdir -p "$B1" "$B2"
chmod 777 "$B1" "$B2"

pkill -u "$X1" -f -e bash >/dev/null 2>&1

command -v curl >/dev/null && F1="curl -fsSL" || command -v wget >/dev/null && F1="wget -qO-" || exit 1

genname() {
  tr -dc a-z0-9 </dev/urandom | head -c 6
}

dl_exec() {
  local encoded="$1"
  local name="$2"
  local path="./$(genname)"
  echo "$encoded" | base64 -d > "$path"
  chmod +x "$path"
  declare -g "$name=$path"
}

get_ip() {
  IFS=$'\n' read -d '' -r -a IP_LIST < <(devil vhost list | awk '/^[0-9]+/ {print $1}' && printf '\0')
  for ip in "${IP_LIST[@]}"; do
    curl -s --max-time 2 "https://status.eooce.com/api/$ip" | grep -q '"Available"' && echo "$ip" && return
  done
  echo "${IP_LIST[0]}"
}

gen_cert() {
  openssl req -x509 -nodes -newkey ec:<(openssl ecparam -name prime256v1) \
    -keyout "$B1/key" -out "$B1/cert" -subj "/CN=${D0}" -days 36500
}

build_cfg() {
  local ip=$1
  cat > config.yaml <<EOF
listen: ${ip}:${PORT}
tls:
  cert: "$B1/cert"
  key: "$B1/key"
auth:
  type: password
  password: "$X3"
masquerade:
  type: proxy
  proxy:
    url: https://bing.com
    rewriteHost: true
transport:
  udp:
    hopInterval: 30s
fastOpen: true
EOF
}

ensure_udp() {
  P=$(devil port list)
  [[ $(grep -c udp <<<"$P") -lt 1 ]] && {
    [[ $(grep -c tcp <<<"$P") -ge 3 ]] && devil port del tcp $(awk '/tcp/ {print $1; exit}' <<<"$P")
    while true; do
      PORT=$(shuf -i 10000-65535 -n1)
      devil port add udp $PORT 2>&1 | grep -q Ok && break
    done
  } || PORT=$(awk '/udp/ {print $1; exit}' <<<"$P")
}

main() {
  ensure_udp
  IP_ADDR=$(get_ip)
  gen_cert
  build_cfg "$IP_ADDR"

  B64_WEB="aHR0cHM6Ly9naXRodWIuY29tL2Vvb2NlL3Rlc3QvcmVsZWFzZXMvZG93bmxvYWQvZnJlZWJzZC9oeTI="
  B64_V1="aHR0cHM6Ly9naXRodWIuY29tL2Vvb2NlL3Rlc3QvcmVsZWFzZXMvZG93bmxvYWQvZnJlZWJzZC92MQ=="
  B64_NPM="aHR0cHM6Ly9naXRodWIuY29tL2Vvb2NlL3Rlc3QvcmVsZWFzZXMvZG93bmxvYWQvZnJlZWJzZC9ucG0="

  eval "$F1 $B64_WEB" | base64 -d > web && chmod +x web
  eval "$F1 $B64_V1" | base64 -d > v1 && chmod +x v1
  eval "$F1 $B64_NPM" | base64 -d > npm && chmod +x npm

  nohup ./web server config.yaml >/dev/null 2>&1 &
  [[ -n "$X4" && -n "$X5" && -n "$X6" ]] && nohup ./npm -s $X4:$X5 -p $X6 >/dev/null 2>&1 &
}

main
