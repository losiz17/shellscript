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
wget -q --password="$password" "ftp://${username}@${hostname}/filename.txt"