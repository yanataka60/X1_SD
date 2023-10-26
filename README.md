# SHARP X1、X1turboにSD-CARDからロード、セーブ機能

![X1_SD](https://github.com/yanataka60/X1_SD/blob/main/JPEG/TITLE.jpg)

　X1、X1turboでSD-CARDからのアプリケーション起動とBASICなどのアプリケーションからSD-CARDへのロード、セーブを実現するものです。

　電源ONで起動するSD対応LauncherからはF又はLコマンドでSDからアプリケーションをLOAD実行ができます。

　LOAD実行範囲は、0000h～FF1Fhです。アプリケーション、ゲームを起動させるにはほぼ問題ないと思います。

　起動出来るのは、１段でロードできるCMTアプリケーションのみです。多段ロードで起動するCMTアプリケーションには対応していません。

　アプリケーション中でのSD-CARDとのロード、セーブについては、アプリケーションごとにSD-CARD対応化を行う必要があり、現在対応できているものは以下のとおりです。

|アプリケーション名|掲載誌|
| ------------ | ------------ |
|BASIC CZ-8CB01||
|S-OS SWORD TAPE版|Oh!MZ '86/2月号 '87/3,'89/2再掲載|
|TTLインタプリタ|Oh!MZ '84/10月号|
|EDAS for X1|月刊I/O '84/6月号|
|エディタ・アセンブラ|渡辺英行・沼倉　均共著「マシン語プログラミング入門」|
|Stellarコンパイラ|渡辺英行、高橋秀樹共著「X1ハイテックファイル」|

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
　まず、BASIC CZ-8CB01からIOCS(0000h～149Fh)を抜き出し、バイナリファイルとして保存します。

　CZ-8FB01 V10、CZ-8FB01 V20も大丈夫だとは思いますが、検証していません。なお、X1turbo用BASICは使えません。

　DumpList Editorを使ってWav又はtapファイルを読み込み、「マシン語入力に送る」を実行します。

　マシン語の14A0h以降を削除します。(0000h～149Fhのマシン語にします)

![IOCS_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/IOCS(1).jpg)

　「ファイル書出し」の「BIN(mot)ファイル書き出し(ヘッダ無し)(for他汎用)」を選択して「IOCS.bin」という名前で保存します。

![IOCS_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/IOCS(2).jpg)

　保存した「IOCS.bin」の後ろにバイナリエディタ等を使ってBOOTフォルダ内の「boot.bin」を付け加えます。0000h～17F6hのファイルとなるはずです。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～1816hのファイルとなります。

　[0000] 01 58 31 5F 53 44 20 42 4F 4F 54 20 20 20 20 20

　[0010] 20 20 F7 17 00 00 00 00 20 20 20 20 20 20 00 00

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
　X1エミュレータ用CMTファイルはTAP形式が一般的ですが、X1_SDではマシン語にヘッダ(FCB)を付加したバイナリファイルを扱い、拡張子をX1Tとしています。

　ヘッダ(FCB)の構造

|アドレス|内容|説明|
| ------------ | ------------ | ------------ |
|00|モード|01:マシン語,02:BASIC,03:ASC,04:その他|
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

![X1T_4](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1T(4).jpg)

　7)SDカードにコピーします。

　8)他のアプリケーションも同様にX1TファイルにしてSDカードにコピーしてください。ただし、起動可能なアプリケーションは機械語で１段ロードの物に限ります。

　9)雑誌等に掲載されたアプリケーション、ゲーム等でIOCSを必要とするものはIOCSも含めたX1Tファイルを作るか、X1_SD対応BASIC CZ-8CB01を起動してから当該アプリケーション、ゲームを起動してください。


## 操作方法
　電源ON、又はリセットでX1_SD Launcherのコマンド入力待ちになるので以下のコマンドが使えます。

　X1のMONITORで使えるD,M,G,Tコマンドは同じように使えます。

　X1の起動プロセスは、FDD、ROM、CMTの順です。X1_SDを装着したままCMTからLOADしたい場合は、Cキーを押したままで電源ON、又はリセットしてください。

　以下、SD-CARD内のファイルに付けられるファイル名をDOSファイル名、X1T形式ファイルのFCB内ファイル名をFCBファイル名とします。

### L　DOSファイル名[CR]
　DOSファイル名で指定したバイナリファイルをLOADして実行します。

　「.X1T」は省略可能です。

　LとDOSファイル名の間に空白が有っても無くても構いません。また、空白はいくつあっても構いません。

　LOAD実行可能範囲は0000h～FF1Fhです。

　なお、LOADするアプリケーションのLOAD範囲外のメインRAMは最少のSDアクセスルーチン(FF20h～FF7Dh)以外ゼロ埋めクリアされます。Launcherも消去されるのでIOCSを使用するアプリケーションをLOADしたい場合はIOCSを連結してLOADしてください。

例)

*L　TEST[CR]

*L　TEST.x1t[CR]

*LTEST[CR]

*L　　TEST[CR]

### F[CR]
　SD-CARDルートディレクトリにあるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならESC、SHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

　行頭に「*L」を付加して表示してあるので実行したいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOAD、実行が可能です。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

　LOAD実行可能範囲は0000h～FF1Fhです。

### F　x[CR]
ファイル名がxで始まるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならESC、SHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

xはX1のキーボードから入力可能な32文字までの文字列です。(数字、記号、アルファベット)

　Fとxの間に空白が有っても無くても構いません。また、空白はいくつあっても構いません。

　LOAD実行可能範囲は0000h～FF1Fhです。


例)

*F　S[CR]

*F　SP[CR]

*F　BASIC S[CR]

*FS[CR]

*F　　S[CR]

### アプリケーションからのLOAD
　L、LOAD等アプリケーションが指定したコマンドの後ろにはFCBファイル名を指定可となっていますが、指定せずにL、LOAD等のコマンドのみで[CR]キーを押します。

　CMTの場合にはここでPLAYボタンを押すよう指示が出るところですが、「DOS FILE:」と表示して行入力待ちになっているのでDOSファイル名を入力して[CR]キーを押します。この時、「.X1T」の入力は省略できます。

　DOSファイル名は「.X1T」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

例)BASIC CZ-8CB01では

× LOAD "TEST"[CR]

○ LOAD[CR]

　DOS FILE:TEST[CR]

○ LOAD[CR]

　DOS FILE:TEST.X1T[CR]

** 参考 **

　S-OS SWORDでの運用に当たっては起動直後に「DV S:」としてデバイスを各SYSTEMデバイスとしてください。

　FUZZY BASICだけかもしれませんが共通フォーマットデバイスのままだとLOADコマンドでFCBファイル名の省略ができませんでした。

#### LOAD時の特殊コマンド
　「DOS FILE:」と表示して行入力待ちになったときに以下の特殊コマンドが使用可能です。

##### *F[CR]
##### *F x[CR]
　Launcherコマンド入力待ちからのF、F xと全く同等のファイル一覧機能が使えます。

　検索結果の行頭には「DOS FILE:」を付加して表示してあるのでLOADしたいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOADが可能です。

### アプリケーションからのSAVE
　CMTの時と同様にアプリケーションの指定する入力方法、ルールでファイル名等を入力して保存してください。

　ただし、半角カタカナはArduinoが認識できないため、使用できません。アルファベット、数字および空白で指定してください。

　SAVE時は、入力したファイル名がFCBファイル名、DOSファイル名の両方に適用されます。

　DOSファイル名としての「.X1T」は自動的に付加されます。

例)BASIC CZ-8CB01では

○ SAVE "TEST"[CR]

## 操作上の注意
　「SD-CARD INITIALIZE ERROR」と表示されたときは、電源を入れ直してみてください。

　SD-CARDにアクセスしていない時に電源が入ったままで SD-CARDを抜いた後、再挿入しSD-CARDにアクセスすると「SD-CARD INITIALIZE ERROR」となる場合があります。再挿入した場合には電源を入れ直してみてください。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

## アプリケーションからSD-CARDとのLOAD、SAVEをするための対応
### BASIC CZ-8CB01
　BASIC CZ-8CB01にSDアクセス用ルーチンを付加してX1Tファイルを作成します。

　ROMへの書込みの為にBASIC CZ-8CB01をバイナリファイルとしたのと同様の操作をしてBASIC CZ-8CB01のバイナリファイルを作成します。

　DumpList Editorを使ってWav又はtapファイルを読み込み、「マシン語入力に送る」を実行します。

![CZ-8CB01_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(1).jpg)

　PROG AREAは、0000-9E0Fとなっていると思います。

　「ファイル書出し」の「BIN(mot)ファイル書き出し(ヘッダ無し)(for他汎用)」を選択して「CZ-8CB01.bin」という名前で保存します。

　保存した「CZ-8CB01.bin」の後ろにバイナリエディタ等を使ってSD_ACCESS_BASIC_CZ-8CB01フォルダ内の「SD_ACCESS_BASIC_CZ-8CB01.bin」を付け加えます。0000h～A267hのファイルとなるはずです。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～A287hのファイルとなります。

　なお、実行開始アドレスは、9E10hです。

　[0000] 01 42 41 53 49 43 20 43 5A 38 43 42 30 31 20 20

　[0010] 20 20 68 17 00 00 10 9E 20 20 20 20 20 20 00 00

![CZ-8CB01_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(2).jpg)

　出来上がったら「BASIC CZ8CB01_SD.X1T」という名前で保存し、SDカードにコピーします。

　Launcherから「BASIC CZ8CB01_SD.X1T」を選択してロードするとX1_SD対応BASIC CZ8CB01が起動します。

　起動直後に必ずCLEAR &HF800又はLIMIT &HF800を実行してください。SDカードアクセスルーチンはF800h～FC9Fhに配置されています。

　SAVEコマンドにAオプションをつけることでアスキー形式でのSAVEも出来ますが、SAVE、LOADに非常に時間が掛かります。気長にお待ちください。

#### DumpListEditorで入力したBASICプログラムをX1T形式に変換する方法
　DumpListEditorを使えばWindowsパソコンでBASIC CZ-8CB01用のBASICプログラムが入力できますが、保存方法がテキスト形式又はTAP形式のみでそのままX1T形式で保存することが出来ません。

　以下の方法でX1T形式に変換してください。

　OCRからの変換、キーボードからの入力等でBASICプログラムを入力します。

![CZ-8CB01_3](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(3).jpg)

　「ファイル整理画面にPaste」をクリックしてファイル整理画面に送ります。

![CZ-8CB01_4](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(4).jpg)

　「マシン語入力に送る」をクリックしてマシン語入力画面に送ります。

![CZ-8CB01_5](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(5).jpg)

　ここで表示される「PROG SIZE」を控えておきます。

　「ファイル書出し」の「BIN(mot)ファイル書き出し(ヘッダ無し)(for他汎用)」を選択し任意のファイル名で保存します。

　バイナリエディタ等を使って保存したファイルを読み込み、先頭に以下に示す32Byteのヘッダを付加して保存します。

|アドレス|内容|説明|
| ------------ | ------------ | ------------ |
|00|モード|02h|
|01～0D|ファイル名|13文字分|
|0E～10|拡張子|3文字|
|11|パスワード|20h|
|12～13|データ長|PROG SIZEで表示されたサイズの上位、下位を逆にします|
|14～15|0000h||
|16～17|0000h||
|18～1C|ファイル作成年月日|20h|
|1D～1F|システム格納アドレス|00h,00h,00h|

例)

![CZ-8CB01_6](https://github.com/yanataka60/X1_SD/blob/main/JPEG/CZ-8CB01(6).jpg)

#### なお、今のところ、X1T形式で保存されたBASICプログラムをDumpListEditorで編集する方法はありません。


### S-OS SWORD
　Oh!MZ '86/2月号に掲載されたS-OS SWORDをX1_SD対応とすることでOh!MZ誌及びOh!X誌に連載されたTHE SENTINELのプログラムがFDD、CMT無しでも利用できるようになります。

　Oh!MZ誌掲載のダンプリストから入力したテープ専用版SWORDが必要ですが、大石様のWEB THE SENTINEL http://www.retropc.net/ohishi/s-os/ からsword.binがダウンロードできます。『X1/C/D/Cs/Ck/F/G/Twin (1986.2,1987.3,1989.2)』版をダウンロードしてください。

　ダウンロードしたX1Sword-1989-02.zipを解凍するとbinariesフォルダにsword.bin(6,101Byte)があります。

　まず、sword.binに以下のパッチを当て、テープ専用版に修正します。

|ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|0AA6|1FA6|C3 4F 23|C3 37 1C|
|0AA9|1FA9|C3 7C 23|C3 32 1C|
|0AAC|1FAC|C3 2D 23|C3 2D 1C|
|0AAF|1FAF|C3 B3 22|C3 28 1C|
|0B00|2000|C3|C9|
|0B03|2003|C3|C9|
|0B06|2006|C3 19 24|C3 73 1B|
|0B09|2009|C3 FA 22|C3 18 1B|
|0B0C|200C|C3|C9|
|0B0F|200F|C3|C9|
|0B12|2012|C3|C9|
|0B15|2015|C3|C9|

　修正が終わったら1600h(実アドレス2B00h)以降は、ディスクI/Oで必要ありませんので0000h～15FFhまでを保存します。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、テープ専用版sword.bin(1500h～2AFFh)、SD_ACCESS_SOS_SWORDフォルダ内の「SD_ACCESS_SOS_SWORD.bin」(2B00h～2F38h)の3つをバイナリエディタ等を使ってIOCS、sword.bin、SD_ACCESS_SOS_SWORD.binの順番に連結します。IOCSの後ろの14A0h～1AFFhまでは00hで埋めてください。

　0000h～2F38hのファイルとなります。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～2F58hのファイルとなります。

　なお、実行開始アドレスは、2B00hです。

　[0000] 01 53 2D 4F 53 20 53 57 4F 52 44 5F 53 44 20 20

　[0010] 20 20 39 2F 00 00 00 2B 20 20 20 20 20 20 00 00

![SWORD](https://github.com/yanataka60/X1_SD/blob/main/JPEG/SWORD.jpg)

　出来上がったら「SWORD_SD.X1T」という名前で保存し、SDカードにコピーします。

　S-OS SWORD起動直後に「DV S:」としてSYSTEMデバイスに切り替えておいた方が無難です。なお、SDカードアクセスルーチンはF800h～FC80hに配置されます。

　S-OS用のアプリケーションも大石様のWEB THE SENTINEL http://www.retropc.net/ohishi/s-os/ からダウンロードできます。

　公開されているアプリケーションの多くは、obj形式となっていますのでX1T形式のヘッダに付け替えます。

　先頭の10Byteがobj形式のヘッダですので削除し、32Byteのヘッダを付加してX1T形式にしたうえでSDカードにコピーします。

例)INVADER GAME (1987.4)

![S-OS_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/S-OS(1).jpg)

![S-OS_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/S-OS(2).jpg)


### C-GRACE
　徳間書店発行のテクノポリスに掲載されたC-GRACE用にLauncherを作ってみました。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、SD_ACCESS_C-GRACEフォルダ内の「SD_ACCESS_C-GRACE.bin」(14A0h～5FFFh)、C-GRACE Executerのバイナリファイル(6000h～7FFFh)を用意します。

　バイナリエディタ等を使って3つのファイルをIOCS、SD_ACCESS_C-GRACE.bin、C-GRACE Executerの順番に連結します。0000h～7FFFhのファイルとなるはずです。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～801Fhのファイルとなります。

　なお、実行開始アドレスは、0000hです。

　[0000] 01 43 2D 47 52 41 43 45 20 20 20 20 20 20 20 20

　[0010] 20 20 00 80 00 00 00 00 20 20 20 20 20 20 00 00

![C-GRACE_1](https://github.com/yanataka60/X1_SD/blob/main/JPEG/C-GRACE(1).jpg)

　出来上がったら「C-GRACE_SD.X1T」という名前で保存し、SDカードにコピーします。

　C-GRACE用のデータも32Byteのヘッダを付加してX1T形式にしたうえでSDカードにコピーします。

|アドレス|内容|説明|
| ------------ | ------------ | ------------ |
|00|モード|01h|
|01～0D|ファイル名|13文字分|
|0E～10|拡張子|3文字|
|11|パスワード|20h|
|12～13|データ長|各データのファイルサイズによる|
|14～15|データ先頭アドレス|00h,20h|
|16～17|実行アドレス|6000h|
|18～1C|ファイル作成年月日|20h|
|1D～1F|システム格納アドレス|00h,00h,00h|

![C-GRACE_2](https://github.com/yanataka60/X1_SD/blob/main/JPEG/C-GRACE(2).jpg)

　Launcherから「C-GRACE_SD.X1T」を選択してロードするとC-GRACE Launcherが起動します。

　C-GRACE LauncherからFコマンド、LコマンドでC-GRACEデータファイルを選択して読み込みます。

　CGの描画が終わるとキー入力待ちになるので何かキーを押すとグラフィック画面が消えて、C-GRACE Launcherのコマンド待ちに戻ります。


### TTLインタプリタ
　Oh!MZ '84/10月号に掲載されたTTLインタプリタです。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、SD_ACCESS_TTLフォルダ内の「SD_ACCESS_TTL.bin」(14A0h～192Eh)、TTLインタプリタのオブジェクト(B000h～BBFFh)の3つをバイナリエディタ等を使ってIOCS、SD_ACCESS_TTL.bin、TTLインタプリタのオブジェクトの順番に連結します。TTLインタプリタのオブジェクトはSD_ACCESS_TTL.binの直後(192Fh～)に連結します。

　0000h～252Ehのファイルとなります。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～254Ehのファイルとなります。

　なお、実行開始アドレスは、14A0hです。

　[0000] 01 54 54 4C 2D 58 31 5F 53 44 20 20 20 20 20 20

　[0010] 20 20 2F 25 00 00 A0 14 20 20 20 20 20 20 00 00

![TTL](https://github.com/yanataka60/X1_SD/blob/main/JPEG/TTL.jpg)

　出来上がったら「TTL-X1_SD.X1T」という名前で保存し、SDカードにコピーします。

　なお、SDカードアクセスルーチンは14A0h～192Ehに配置されます。


### EDAS for X1
　月刊I/O '84/6月号に掲載されたEDAS for X1です。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、EDAS for X1のオブジェクト(14A0h～34FFh)、SD_ACCESS_EDASフォルダ内の「SD_ACCESS_EDAS.bin」(3500h～3945h)の3つをバイナリエディタ等を使ってIOCS、EDAS for X1のオブジェクト、SD_ACCESS_EDAS.binの順番に連結します。

　0000h～3945hのファイルとなります。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～254Ehのファイルとなります。

　なお、実行開始アドレスは、3500hです。

　[0000] 01 45 44 41 53 5F 58 31 5F 53 44 20 20 20 20 20

　[0010] 20 20 46 39 00 00 00 35 20 20 20 20 20 20 00 00

![EDAS](https://github.com/yanataka60/X1_SD/blob/main/JPEG/EDAS.jpg)

　出来上がったら「EDAS_X1_SD.X1T」という名前で保存し、SDカードにコピーします。

　なお、SDカードアクセスルーチンはF800h～FC8Dhに配置されます。


### X1エディタ・アセンブラ
　渡辺英行・沼倉　均共著「マシン語プログラミング入門」に掲載されたエディタ・アセンブラです。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、エディタ・アセンブラのオブジェクト(14A0h～4A9Fh)、SD_ACCESS_X1_EDITOR_ASSEMBLERフォルダ内の「SD_ACCESS_X1_EDITOR_ASMBLR.bin」(4AA0h～4ECDh)の3つをバイナリエディタ等を使ってIOCS、エディタ・アセンブラのオブジェクト、SD_ACCESS_X1_EDITOR_ASMBLR.binの順番に連結します。

　0000h～4ECDhのファイルとなります。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～4EEDhのファイルとなります。

　なお、実行開始アドレスは、4AA0hです。

　[0000] 01 58 31 5F 45 44 20 41 53 53 45 4D 42 4C 20 20

　[0010] 20 20 CE 4E 00 00 A0 4A 20 20 20 20 20 20 00 00

![X1_EDITOR_ASSEMBLER](https://github.com/yanataka60/X1_SD/blob/main/JPEG/X1_EDITOR_ASSEMBLER.jpg)

　出来上がったら「X1_EDITOR_ASSEMBLER_SD.X1T」という名前で保存し、SDカードにコピーします。

　なお、SDカードアクセスルーチンはF800h～FC75hに配置されます。


### Stellarコンパイラ
　渡辺英行、高橋秀樹共著「X1ハイテックファイル」に掲載されたStellarコンパイラです。

　BASIC CZ-8CB01から抜き出したIOCS(0000h～149Fh)、Stellarコンパイラのオブジェクト(14A0h～67DFh)、SD_ACCECC_STELLARフォルダ内の「SD_ACCESS_STELLAR.bin」(67E0h～6C1Ah)の3つをバイナリエディタ等を使ってIOCS、Stellarコンパイラのオブジェクト、SD_ACCESS_STELLAR.binの順番に連結します。

　0000h～6C1Ahのファイルとなります。

　次にファイルの先頭に以下に示す32Byteのヘッダを付加します。0000h～6C3Ahのファイルとなります。

　なお、実行開始アドレスは、67E0hです。

　[0000] 01 53 74 65 6C 6C 61 72 5F 53 44 20 20 20 20 20

　[0010] 20 20 1B 6C 00 00 E0 67 20 20 20 20 20 20 00 00

![STELLAR](https://github.com/yanataka60/X1_SD/blob/main/JPEG/stellar.jpg)

　出来上がったら「Stellar_SD.x1t」という名前で保存し、SDカードにコピーします。

　なお、SDカードアクセスルーチンはAB7Dh～AFFFhに配置されます。


## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM


## 追記
2023.10.26　SD対応アプリケーションにStellarコンパイラを追加。

