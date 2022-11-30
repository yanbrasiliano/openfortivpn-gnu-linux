HOST=YOUR_HOST
PORT=YOUR_PORT
OPEN_FORTIVPN_CONFIG=~/Development/openfortivpn/openfortivpn-config

eval $(printenv | openssl s_client -connect $HOST:$PORT 2>/dev/null | openssl x509 -outform der | sha256sum | awk '{ print "export TRUSTED_CERT="$1 }')
sudo openfortivpn -c $OPEN_FORTIVPN_CONFIG --trusted-cert $TRUSTED_CERT
