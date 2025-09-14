
# create self signed certificate 
openssl req -x509 -nodes -days 256 -newkey rsa:2048 \
  -keyout weatherapp.key \
  -out weatherapp.crt \
  -subj "/CN=weatherapp"
# create secret for certificate 
kubectl create secret tls weatherapp-ui-tls \
  --cert=weatherapp.crt \
  --key=weatherapp.key
