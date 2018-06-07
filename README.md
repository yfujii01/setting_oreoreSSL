# setting_oreoreSSL
オレオレ証明書作成ワンライナー

下記のいずれかを実行

- shellを直接実行する場合

  以下のコマンドを実行する

  curl -L raw.github.com/yfujii01/setting_oreoreSSL/master/make.sh | sh

- 手動でコマンドを実行する場合

  以下のコマンドを実行する

  openssl req -nodes -newkey rsa:2048 -keyout server.key -out server.csr -subj "/C=JP/ST=Okayama/L=Okayama/O=Hoge INC./OU=IT Department/CN=hogehogefugafuga.com" && openssl x509 -req -days 3650 -in server.csr -signkey server.key -out server.crt
