# create-image

光学メディアから、isoファイルまたはシングルwav+cueを作成するスクリプト

1. データディスク  
ファイル名はvolnameコマンドでボリューム名を取得できる場合,volnameの結果を使用.  
取得できない場合,指定必須
取得でき,引数指定した場合はvolnameの取得結果を優先
```
./datadisk.bash [FILENAME]
```
2. オーディオディスク  
オーディオディスクはvolnameコマンドでボリューム名が取得できないので引数必須  
```
./audiodisk.bash FILENAME
```

