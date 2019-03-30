# create-image

光学メディアから、isoファイルまたはシングルwav+cueを作成するスクリプト

1. データディスク
  ファイル名はvolnameコマンドでボリューム名を取得できない場合のみ使用.
  取得できる場合はvolnameの結果を優先
```
./datadisk.bash [FILENAME]
```

2. オーディオディスク
  オーディオディスクはvolnameコマンドでボリューム名が取得できないので引数必須
```
./audiodisk.bash FILENAME
```

