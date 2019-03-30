# create-image
光学メディアから、isoファイルまたはシングルwav+cueを作成するスクリプト

## require
- 下記コマンド群が使用可能であること, ddrescue,abcdeは手元で動作したバージョンを記載
  - volname (ファイル名を引数指定するなら不要)
  - ddrescue (ubuntuの場合`sudo apt install gddrescue`でインストールされるもの)
    - 1.22
  - abcde
    - 2.8.1
  - mkcue

- .bashファイル配置ディレクトリの下にisoディレクトリを作成すること  

- abcdeのCD情報取得先をcddbにしておかないとCD情報に基づいたファイル名になってしまうので、事前に~/abcde.confで設定しておくこと  
abcde2.9からコマンドラインで設定できるようになるので、パッケージのバージョン上がったら対応
```
echo "CDDBMETHOD=cddb" >~/.abcde.conf
```
## usage
1. データディスク  
ファイル名は引数指定したものを最優先  
引数指定せず,かつvolnameコマンドでボリューム名を取得できる場合,volnameの結果を使用.  
引数指定せず,かつvolnameコマンドで取得できない場合,エラー終了
```
./datadisk.bash [FILENAME]
```
2. オーディオディスク  
オーディオディスクはvolnameコマンドでボリューム名が取得できないので引数必須  
```
./audiodisk.bash FILENAME
```

