#!/bin/sh

username=gest
hostname=localhost

echo -n "Password: "
#エコーバックをoffにする(-echo)
stty -echo
read password
#エコーバックをONにする
stty echo
echo
#入力されたパスワードでダウンロードを行う
curl -s -u "${username}:${password}" "ftp://${hostname}/filename.txt"