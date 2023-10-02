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
|J4|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
|J5|2x25Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
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


### その他必要なもの
　基板のコネクタは2x22Pinで設計していますが、2.54mmピッチ2x22Pinフラットケーブルが手に入りにくいので2.54mmピッチ2x25Pinフラットケーブルで代用しています。

　2.54mmピッチ2x22Pinフラットケーブルが手に入るようであればそちらをお使いください。

#### EXPANSION UNITの拡張スロットに挿入して使用する場合
・2.54mmピッチ2x25Pinフラットケーブル

　長さは50～70cmあれば前面まで持ってこられます。

#### EXPANSION UNITを使わない場合
・2.54mmピッチ2x25Pinフラットケーブル、ただし片側はカードエッジコネクタ

　長さは50～70cmあれば全面まで持ってこられます。

・2.54mmピッチ2x25Pinフラットケーブル

　インタフェース基板とSD-CARD UNIT基板は重ねられるので10cm以上の長さがあれば十分です。

## ROMへの書込み
　まず、BASICからMONITOR(0000h～129Fh)を抜き出し、バイナリファイルとして保存します。

バイナリエディタで以下の修正をします。
### MZ-80B SB-1520
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|
|00AE|01 76 49(C3 76 49)|C3 A0 12|
|00F6|56 17 02|46 00 F8|
|0252|16 01 21|C3 03 F8|
|0283|16 02 ED|C3 06 F8|
|028F|16 04 21|C3 09 F8|
|02B3|16 08 ED|C3 0C F8|
|02BF|16 08 ED|C3 0F F8|

　次にEXT-ROMフォルダ内のEXT-ROM_SD MZ-80B.bin又はEXT-ROM_SD MZ-2000.binをMONITORの後ろ(12A0h～)に付け加えて保存します。出来上がるバイナリファイルは0000h～198Ehとなるはずです。

　出来上がったバイナリファイルをROMライター(TL866II Plus等)を使って27C256に書き込んでください。

　27C512を使えば二つのバイナリファイルを切り替えて使うような使い方ができます。このとき、一つのバイナリファイルは32KByte、二つ合わせて64KByteにして書き込んでください。

### 参考)起動プロセス
　1　「/」キーを押しながら電源を入れる、又は「/」キーを押しながらIPLボタンを押す。

　2　EXT-ROMからプログラムが読み込まれ、ノーマル時のメモリマップに切り替わった後、リセットされる。

　3　MINITORが起動し、MZの初期化が行われた後、12A0hにJUMPする。

　4　12A0hからの転送プログラムにより、SDアクセスルーチンをF800h以降に転送する。

　5　MZ-2000_SDの8255を初期化する。

　6　12A0hからの転送プログラムが再度起動しないよう00AEhに01hを書き込む。

　7　コマンドプロンプトに戻る。

　8　FDコマンド又はFDLコマンドによりSD-CARD内アプリケーションのLOAD実行が指示されるとF800hのSDアクセスルーチンにJUMPする。

　9　指定したファイルがSDに存在したらスタックポインタをFFFFhに設定する。

　10　MZTファイルのヘッダ情報にあるLOAD開始アドレスからファイル長分をSD-CARDから読み出しメインメモリに書き込む。

　　　この時、LOAD終了アドレスがF800h以降でLOAD開始アドレスが12A0h以降ならSD-LOADルーチンを1200h～124Fhにコピーし1206hにJUMPしてLOADを実行する。

　11　実行開始アドレスが0000hでないならスタックポインタを1140hに設定する。

　12　実行開始アドレスにJUMPする。

### ROMにBOOT LOADERを書き込む方式の追加
　前述のBASICからMONITORを抜き出してROMに書き込む方式は、自分が所有しているBASICから抜き出してROMに書き込むには問題が無いのですが、書き込み済みROMの配布はSHARPの著作権があるので出来ません。

　そこで「@BOOT-A MZ-2000.bin」、「@BOOT-A MZ-80B.bin」というバイナリファイルをSD-CARDから読み込み起動するプログラムをROMに書き込む方式を追加しました。

　ROMに27256を使えば「@BOOT-A MZ-xxxx.bin」、27512を使えば「@BOOT-A MZ-xxxx.bin」と「@BOOT-B MZ-xxxx.bin」を切り替えて読み込むことができます。

　前述「ROMへの書込み」の手順により修正を加えたMONITORの後ろ(12A0h～)にEXT-ROM_SD MZ-2000.bin又はEXT-ROM_SD MZ-80B.binを付け加えて保存したバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を「@BOOT-A MZ-2000.bin」又は「@BOOT-A MZ-80B.bin」のファイルネームでSD-CARDに保存してください。

　27512を使うのであれば同様にBASICを加工したバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を「@BOOT-B MZ-2000.bin」又は「@BOOT-B MZ-80B.bin」のファイルネームでSD-CARDに保存することでスイッチの切り替えで読み込むことができます。

#### BOOT LOADERをROMに書き込む
　BOOT_LOADERフォルダにある「BOOT_A_LOADER.bin」または「BOOT_AB_LOADER.bin」をROMに書き込みます。

　　27256を使用する場合は「BOOT_A_LOADER.bin」を書き込んでください。

　　27512を使用する場合は「BOOT_AB_LOADER.bin」を書き込んでください。

#### 「@BOOT-A MZ-xxxx.bin」を作成してSD-CARDに保存する
　「ROMへの書込み」を参照してバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を作成します。

　出来上がったファイルの名前は、MZ-2000用なら「@BOOT-A MZ-2000.bin」、MZ-80B用なら「@BOOT-A MZ-80B.bin」としてSD-CARDに保存します。

　起動させた機械がMZ-2000か、MZ-80Bか自動的に判断して「@BOOT-A MZ-2000.bin」、「@BOOT-A MZ-80B.bin」のどちらかを読み込まれます。

#### 「@BOOT-B MZ-xxxx.bin」を作成してSD-CARDに保存する(27512を使用する場合)
　後述の「BASICをEXT-ROMから起動させる」を参照してバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を作成し、出来上がったファイルの名前をMZ-2000用なら「@BOOT-B MZ-2000.bin」、MZ-80B用なら「@BOOT-B MZ-80B.bin」としてSD-CARDに保存します。

　起動させた機械がMZ-2000か、MZ-80Bか自動的に判断して「@BOOT-B MZ-2000.bin」、「@BOOT-B MZ-80B.bin」のどちらかを読み込まれます。

#### Arduinoプログラム
　この機能に対応させるためArduinoプログラムも更新しました。この機能を使いたい場合にはArduinoプログラムも書き込み直してください。

## Arduinoプログラム

　MZ-80K_SDと全く同じものを使用しています。

　MZ-80K_SDでソケットを使用して差込式にしているのであればそのままMZ-2000_SDに差して使えます。

　Arduino IDEを使ってMZ-80Kリポジトリ Arduinoフォルダ内のMZ-80K_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、MZ-2000本体とは接続を外し、74LS04を外したうえで書き込んでください。

## 接続
### MZ-80B、MZ-2000、MZ-2200、MZ-2500の拡張スロットに差し込む
　インタフェース基板は、安価に発注するために10cmx10cmで設計しているのでMZ-80B、MZ-2000、MZ-2200の拡張カードとしては寸足らずです。右側をガイドスロットに沿って差し込めるように設計しています。

　インタフェース基板からMZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

![EXT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_1.JPG)
![EXT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_2.JPG)
![EXT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_3.JPG)
![EXT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_4.JPG)
![EXT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_5.JPG)

### MZ-2200、MZ-80B、MZ-2500拡張スロットへの抜き差しに苦労する場合
　MZ-2200 EXPANSION UNITにインタフェース基板を挿入しようとしたところ、抜き差しが非常に硬く苦労する個体がありました。

　開発ではMZ-2000 EXPANSION UNITでのスムーズな抜き差しを確認していますが、抜き差しに苦労する場合には画像の部分をほんの少しヤスリ掛け(4～5回)するだけでかなりスムーズになりますのでお試しください。

![Adjustment](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/Adjustment%20place.jpg)

### MZ-2000、MZ-2200のEXPANSION UNITを使わずに接続する場合
　インタフェース基板のカードエッジ反対側のJ5と本体のカードエッジを接続します。

　インタフェース基板からMZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

![DIRECT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_1.JPG)
![DIRECT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_2.JPG)
![DIRECT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_3.JPG)
![DIRECT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_4.JPG)
![DIRECT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_5.JPG)
![DIRECT_CONNECT_6](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_6.JPG)

#### カードエッジコネクタを使う
　変則的ではありますが、インタフェース基板に基板用カードエッジコネクタのピンを曲げて付けてみました。

　カードエッジコネクタを基板にハンダ付けすると上面、下面が逆になってしまいますのでカードエッジコネクタは基板の裏面に付ける必要があります。

　カードエッジコネクタB列のピンは90度曲げることでそのままハンダ付けできますが、A列のピンは空中に浮いてしまいますので手配線する必要があります。

　また、MZ-2000本体のカードエッジに挿す時には、基板を逆さまに挿しますのでフラットケーブルが邪魔になって結構斜めになっています。

　ちょっと強引な付け方になりますので試される方は自己責任でお願いします。

![DIRECT_CONNECT_7](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_7.JPG)
![DIRECT_CONNECT_8](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_8.JPG)
![DIRECT_CONNECT_9](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_9.JPG)
![DIRECT_CONNECT_10](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_10.JPG)

### MZ-80Bの拡張I/Oポートを使わずに接続する場合
　MZ-80Bに拡張I/Oポートが装備されていない場合には、MZ-80B用のインタフェース基板を使用します。

[MZ-80Bインタフェース基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-80B_EXT-BOARD/mz-80b.pdf)
![MZ-80B_EXT-BOARD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT-BOARD_schematic.jpg)

|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
|J3|1Pinコネクタ|1|秋月電子通商 FHU-1x42SGなど|
|J4|DCジャック|1|秋月電子通商 MJ-179PHなど(J3により5Vを供給すれば特に必要はありません)|
|J5|2x20Pinソケット|1|秋月電子通商 FHU-2x42SGなど|
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など(J3により5Vを供給すれば特に必要はありません)|
||2.54mmピッチ2x25Pinフラットケーブル|1|長さは50～70cm(手に入れば2x22Pin)|

J5の2x20Pinソケットは基板裏側にハンダ付けします。

ケーブルはMZ-80Bインターフェース基板のJ3から一回反転させてMZ-8000_SDに繋ぎます。

![MZ-80B_EXT_BOARD(1)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(1).JPG)

MZ-80B本体後ろからカバーを開け、メインボードに二つ並んでいる2x20Pinコネクタのうち手前の2x20PinコネクタにMZ-80Bインターフェース基板を挿し込みます。ピンの位置を確認してずれて挿すことのないように装着します。

![MZ-80B_EXT_BOARD(2)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(2).JPG)

MZ-80B本体内部の拡張I/Oポート用電源から5V電源を供給すれば扱いが楽です。

![MZ-80B_EXT_BOARD(3)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(3).JPG)

![MZ-80B_EXT_BOARD(4)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(4).JPG)

![MZ-80B_EXT_BOARD(5)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(5).JPG)

MZ-80B用拡張I/Oポートが手に入ったときにはMZ-80Bインタフェース基板のカードエッジ側を拡張I/Oポートに挿してください。

![MZ-80B_EXT_BOARD(6)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(6).JPG)

### MZ-2500の拡張ユニットが無く、本体内部のコネクタに接続する場合
#### 2023.7.23追記 MZ-2500本体内部のコネクタに変換アダプタを挿し込む方法では正常に動作しない場合があるようです。正常に動作しない場合には、後述の変換アダプタをMZ-2000_SD基板側に装着する方法を試してください。
　MZ-2000_SDと本体内部のコネクタを単純にPinケーブルで接続するとA、B面が逆転してしまうため動作しません。MZ-2000_SDのコネクタを裏面にハンダ付けするか、変換アダプタを自作して接続してください。

![MZ-2500_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_1.jpg)
![MZ-2500_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_2.jpg)

　変換アダプタは、MZ-2000 EXT-BOARDか、MZ-80B EXT-BOARDのどちらかで自作できます。

　EXT-BOARD基板の長さではケースにあたってしまうので若干カットします。

　カードエッジ部を挟み込むように25x2PinピンソケットをEXT-BOARD基板の表面からみて左側に3x2Pinがはみ出すようにハンダ付けします。

　EXT-BOARD基板の裏面に22x2Pinピンヘッダをつけて出来上がりです。

![MZ-2500_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_3.jpg)
![MZ-2500_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_4.jpg)
![MZ-2500_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_5.jpg)

#### 作成した変換アダプタをMZ-2000_SD基板側に取り付ける場合
　MZ-2500本体内部のコネクタに変換アダプタを挿し込む方法で動作しない場合には、作成した変換アダプタをMZ-2000_SD基板側に取り付ける方法を試してみてください。

　信号的には同じ接続のはずですが、コネクタの挿し込み具合等により前述の方法では動作しない場合があるようです。

![MZ-2500_6](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_6.jpg)
![MZ-2500_7](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_7.jpg)

## 外部電源
　EXPANSION UNITを使わずにMZ-2000、MZ-2200本体に接続する場合は、本体側カードエッジには5Vが出ていないため、外部電源が必要となります。

　なお、MZ-2000_SD程度の消費電流であればMZ-2000本体内部から供給しても問題ないと思います。挑戦される方は自己責任でお願いします。

　拡張スロットに差す場合には外部電源は必要ありません。拡張スロットに差した状態で外部電源を供給すると故障の原因となる恐れがあります。拡張スロットに差す運用のみであればインタフェース基板にはDCジャック及びJ5ピンヘッダは取り付けないほうが無難です。
## SD-CARD
　FAT16又はFAT32が認識できます。

　ルートに置かれたMZTファイルのみ認識できます。(MZT以外のファイル、フォルダも表示されますがLOAD実行の対象になりません)

　ファイル名は「.MZT」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

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
