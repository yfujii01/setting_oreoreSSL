#/bin/sh
openssl req -nodes -newkey rsa:2048 -keyout server.key -out server.csr -subj "/C=JP/ST=Okayama/L=Okayama/O=Hoge INC./OU=IT Department/CN=hogehogefugafuga.com" && openssl x509 -req -days 3650 -in server.csr -signkey server.key -out server.crt
