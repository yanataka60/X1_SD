# X1、X1turboにSD-CARDからのアプリケーション起動(実装済)、ロード、セーブ機能(予定)

![X1_SD](https://github.com/yanataka60/X1_SD/blob/main/JPEG/TITLE.jpg)

　X1、X1turboでSD-CARDからのアプリケーション起動(実装済)、BASICなどのアプリケーションからSD-CARDへのロード、セーブ(予定)を実現するものです。

　電源ONで起動するSD対応LauncherからはFD又はFDLコマンドでSDからアプリケーションをLOAD実行ができます。

　LOAD実行範囲は、0000h～FEFFhです。アプリケーション、ゲームを起動させるにはほぼ問題ないと思います。

　起動出来るのは、１段でロードできるCMTアプリケーションのみです。多段ロードで起動するCMTアプリケーションには対応していません。

　なお、アプリケーション中でのSD-CARDとのロード、セーブについては、アプリケーションごとにSD-CARD対応化を行う必要があり、BASIC、S-OS SWORDについて対応予定です。

　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 回路図
[X1_SD](https://github.com/yanataka60/X1_SD/blob/main/Kicad/X1_SD.pdf)
![X1_SD](https://github.com/yanataka60/X1_SD/blob/main/Kicad/X1_SD.jpg)

## 部品
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||J2、J3のいずれか|||
|J2|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J3|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの (注3)|
|J4|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど 拡張スロットの無いCZ-800に接続するときに必要です|
|J5|2x25Pinコネクタ|1|秋月電子通商 PH-2x40SGなど CZ-801に接続するときに必要です|
|J6|1x2Pinコネクタ|1|秋月電子通商 PH-1x40RG(2)など|
|R1、R2|1kΩ|2||
|U1|74LS04|1||
|U2|74LS30|1||
|U3|74LS10|1||
|U4、U7|74LS27|2||
|U5、U8|74LS273|2||
|U6、U9|74LS32|2||
|U10|74LS139|1||
|U11|74LS541|1||
|U12|8255|1||
|U13|27512/27C512相当品|1||
|U14|Arduino_Pro_Mini_5V|1|Atmega328版を使用 168版は不可。(注2)|
|C1、C3-C14|積層セラミックコンデンサ 0.1uF|6||
|C2|電解コンデンサ 16v100uF|1||
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|
||ピンヘッダ|2Pin分|Arduino_Pro_MiniにはA4、A5用のピンヘッダが付いていないため別途調達が必要です 秋月電子通商 PH-1x40SGなど|
||ピンソケット(任意)|26Pin分|Arduino_Pro_Miniを取り外し可能としたい場合に調達します 秋月電子通商 FHU-1x42SGなど|
||2.54mmピッチ2x25Pinフラットケーブル|1|拡張スロットの無いCZ-800、CZ-801に接続するときに必要です(注4)|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)Arduino Pro MiniはA4、A5ピンも使っています。

　　　注3)Arduino等に使われる5V電源に対応したMicroSD Card Adapterも正しく信号を繋げば使えるとご報告いただきました。

　　　注4)拡張スロットの無いCZ-800に接続するときには本来2.54mmピッチ2x22Pinフラットケーブルですが、手に入りにくいので2.54mmピッチ2x25Pinフラットケーブルでも接続できます。CZ-801の接続には2.54mmピッチ2x25Pinフラットケーブルが必要です。

### MicroSD Card Adapterを使う
J3に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J3の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ2の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.JPG)

![MicroSD Card Adapter2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/MicroSD%20Card%20Adapter2.JPG)

![MicroSD Card Adapter3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/MicroSD%20Card%20Adapter3.JPG)


## ROMへの書込み
　まず、HuBASIC CZ-8CB01からIOCS(0000h～149Fh)を抜き出し、バイナリファイルとして保存します。

　CZ-8FB01、CZ-8FB01も大丈夫だとは思いますが、検証していません。なお、X1turbo用BASICは使えません。

　DumpList Editorを使ってWav又はtapファイルを読み込み、「マシン語入力に送る」を実行します。

　マシン語の14A0h以降を削除します。(0000h～149Fhのマシン語にします)

![IOCS_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/IOCS(1).jpg)

　「ファイル書出し」の「BIN(mot)ファイル書き出し(ヘッダ無し)(for他汎用)」を選択して「IOCS.bin」という名前で保存します。

![IOCS_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/IOCS(2).jpg)

　保存した「IOCS.bin」の後ろにバイナリエディタ等を使ってBOOTフォルダ内の「boot.bin」を付け加えます。0000h～17E5hのファイルとなるはずです。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～1805hのファイルとなります。

　[0000] 01 58 31 5F 53 44 20 42 4F 4F 54 20 20 20 20 20

　[0010] 20 20 E6 17 00 00 00 00 20 20 20 20 20 20 00 00

![IOCS_3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/IOCS(3).jpg)

　出来上がったら「X1_SD_BOOT.X1T」という名前で保存します。

　「X1_SD_BOOT.X1T」をROMライター(TL866II Plus等)を使って27512に書き込んでください。


## Arduinoプログラム
　Arduino IDEを使ってArduinoフォルダ内のX1_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、X1本体とは接続を外し、74LS04を外したうえで書き込んでください。

## 接続
### 拡張スロットが使える機体(拡張スロットのついたCZ-800、CZ-804、X1turbo等)の拡張スロットに差し込む
　X1_SD基板を拡張スロットに挿し込みます。

![CZ-804 CONNECT](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-804%20CONNECT.JPG)

### 拡張スロットを装着していないCZ-800への接続
　X1本体のカバーを開けると拡張スロットを装着するためのコネクタがあるので以下の補助基板を挿し込むことでX1_SD基板とフラットケーブルで接続できるようになります。

![CZ-800_EX_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800%20EXT-BOARD(1).JPG)
![CZ-800_EX_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800%20EXT-BOARD(2).JPG)

#### 補助基板回路図
[X1_SD](https://github.com/yanataka60/X1_SD/blob/main/CZ-800_EXT-BOARD/CZ800EX.pdf)
![X1_SD](https://github.com/yanataka60/X1_SD/blob/main/CZ-800_EXT-BOARD/CZ800EX.jpg)

#### 部品
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
||2.54mmピッチ2x22Pin又は2.54mmピッチ2x25Pinフラットケーブル|1||

J2の2x22Pinコネクタは基板裏側にハンダ付けします。

　本来2x22Pinのフラットケーブルでの接続ですが、手に入りにくいので2x25Pinフラットケーブルでも接続が可能です。

![CZ-800_CONNECT_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800_CONNECT(1).JPG)

　補助基板はこのように挿し込みます。

![CZ-800_CONNECT_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800_CONNECT(2).JPG)
![CZ-800_CONNECT_3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800_CONNECT(3).JPG)
![CZ-800_CONNECT_4](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800_CONNECT(4).JPG)

　X1_SD基板側は、「for CZ-800」と表記のある2x22Pinコネクタにフラットケーブルを接続します。X1_SD基板への+5Vはフラットケーブルから供給されるので外部から供給する必要はありません。

![CZ-800_CONNECT_5](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-800_CONNECT(5).JPG)

### 外部拡張ユニット接続用拡張端子しかない機体(CZ-801等)に接続する場合
　拡張端子とX1_SDを2x25Pinフラットケーブルで接続します。

![CZ-801_CONNECT_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-801_CONNECT(1).JPG)

　拡張端子には+5Vが出ていないので外部からX1_SD基板へ+5Vを供給する必要があります。私は、プロッタプリンタのコネクタから取りました。右から3番目と4番目のピンが+5Vです。

![CZ-801_CONNECT_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-801_CONNECT(2).JPG)

　X1_SD基板側は、「for CZ-801C」と表記のある2x25Pinコネクタにフラットケーブルを接続します。本体から取り出した+5VはコネクタJ6に挿し込みます。J6は2Pinとも+5Vですのでどちらに挿し込んでも構いません。

![CZ-801_CONNECT_3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-801_CONNECT(3).JPG)

　本体側の拡張端子にフラットケーブルを接続するときにはケーブルの折り返しが上に来るように接続してください。

![CZ-801_CONNECT_4](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-801_CONNECT(4).JPG)

　このように折り返しを下にして接続すると接触不良で正常に動作しないことがあります。

![CZ-801_CONNECT_5](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-801_CONNECT(5).JPG)


## SD-CARD
　FAT16又はFAT32が認識できます。

　ルートに置かれたX1Tファイルのみ認識できます。(X1T以外のファイル、フォルダも表示されますがLOAD実行の対象になりません)

　ファイル名は「.X1T」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

## X1Tファイルの作成
　X1エミュレータ用CMTファイルはTAP形式が一般的ですが、X1_SDではマシン語にヘッダ(FCB)を付加したバイナリファイルを扱い拡張子をX1Tとしています。

　ヘッダ(FCB)の構造

|アドレス|内容|説明|
| ------------ | ------------ | ------------ |
|00|モード|01:マシン語,02:BASIC,03:ASC|
|01～0D|ファイル名|13文字分|
|0E～10|拡張子|3文字|
|11|パスワード|無指定時は20h|
|12～13|データ長||
|14～15|データ先頭アドレス||
|16～17|実行アドレス||
|18～1C|ファイル作成年月日|無指定時は20h|
|1D～1F|システム格納アドレス|CMT,X1_SDの場合は00h,00h,00h|

### X1T作成例(サンダーフォースをX1Tファイル化)
　1) DumpListEditorを起動し、対象マシンとして「X1」を選択

　2)サンダーフォースのWav又はTapファイルをDumpListEditorにドロップする。

![X1T_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1T(1).jpg)

　3)「マシン語入力に送る」をクリックするとマシン語入力画面に切り替わる。

![X1T_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1T(2).jpg)

　4)ここで表示される以下の３つの情報をメモします。

// PROG AREA = 0000-FEFF

// PROG SIZE = FF00 (65280BYTE)

// EXEC ADRS = 0000

　5)「ファイル書出し」の「BIN(mot)ファイル書き出し(ヘッダ無し)(for他汎用)」を選択して適当な名前(例 THUNDER FORCE.bin)で保存します。

![X1T_3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1T(3).jpg)

　6)保存したファイル(例 THUNDER FORCE.bin)をバイナリエディタ等で開き、先程のFCBの構造に基づいて32Byteのヘッダを付加し、拡張子をX1Tとし適当な名前(例 THUNDER FORCE.X1T)を付けて保存します。

![X1T_4](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1T(3).jpg)

　SDカードにコピーします。


## 操作方法
　ROM起動させた場合にMONITORコマンド入力待ちから以下のコマンドが拡張されます。

　MONITOR本来のMコマンド、Dコマンド、Jコマンドは同じように使えます。

　以下、SD-CARD内のファイルに付けられるファイル名をDOSファイル名、X1T形式ファイルのインフォメーションブロック内ファイル名をIBFファイル名とします。

### L　DOSファイル名[CR]
　DOSファイル名で指定したバイナリファイルをLOADして実行します。

　「.X1T」は省略可能です。

　LOAD実行可能範囲は0000h～FEFFhです。

例)

L　TEST[CR]

### FD[CR]
　SD-CARDルートディレクトリにあるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならESC、SHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

　行頭に「*L」を付加して表示してあるので実行したいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOAD、実行が可能です。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

　LOAD実行可能範囲は0000h～FEFFhです。

### FD　x[CR]
ファイル名がxで始まるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならESC、SHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

xはMZのキーボードから入力可能な32文字までの文字列です。(数字、記号、アルファベット)

　LOAD実行可能範囲は0000h～FEFFhです。


例)

FD S[CR]

FD SP[CR]

FD BASIC S[CR]


## 操作上の注意
　「SD-CARD INITIALIZE ERROR」と表示されたときは、電源を入れ直してみてください。

　SD-CARDにアクセスしていない時に電源が入ったままで SD-CARDを抜いた後、再挿入しSD-CARDにアクセスすると「SD-CARD INITIALIZE ERROR」となる場合があります。再挿入した場合には電源を入れ直してみてください。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM
