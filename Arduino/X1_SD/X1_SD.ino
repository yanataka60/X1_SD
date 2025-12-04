//2024. 3.13 sd-card再挿入時の初期化処理を追加
//2025.12. 4 mon_ldata処理で不要なaddx1tが入っていたため削除
//
#include "SdFat.h"
#include <SPI.h>
SdFat SD;
unsigned long m_lop=128;
char m_name[40];
byte s_data[260];
char f_name[40];
char c_name[40];
char name1[14];
char name2[4];

#define CABLESELECTPIN  (10)
#define CHKPIN          (15)
#define PB0PIN          (2)
#define PB1PIN          (3)
#define PB2PIN          (4)
#define PB3PIN          (5)
#define PB4PIN          (6)
#define PB5PIN          (7)
#define PB6PIN          (8)
#define PB7PIN          (9)
#define FLGPIN          (14)
#define PA0PIN          (16)
#define PA1PIN          (17)
#define PA2PIN          (18)
#define PA3PIN          (19)
// ファイル名は、ロングファイルネーム形式対応
boolean eflg;

void sdinit(void){
  // SD初期化
  if( !SD.begin(CABLESELECTPIN,8) )
  {
////    Serial.println("Failed : SD.begin");
    eflg = true;
  } else {
////    Serial.println("OK : SD.begin");
    eflg = false;
  }
////    Serial.println("START");
}

void setup(){
////  Serial.begin(9600);
// CS=pin10
// pin10 output

  pinMode(CABLESELECTPIN,OUTPUT);
  pinMode( CHKPIN,INPUT);  //CHK
  pinMode( PB0PIN,OUTPUT); //送信データ
  pinMode( PB1PIN,OUTPUT); //送信データ
  pinMode( PB2PIN,OUTPUT); //送信データ
  pinMode( PB3PIN,OUTPUT); //送信データ
  pinMode( PB4PIN,OUTPUT); //送信データ
  pinMode( PB5PIN,OUTPUT); //送信データ
  pinMode( PB6PIN,OUTPUT); //送信データ
  pinMode( PB7PIN,OUTPUT); //送信データ
  pinMode( FLGPIN,OUTPUT); //FLG

  pinMode( PA0PIN,INPUT_PULLUP); //受信データ
  pinMode( PA1PIN,INPUT_PULLUP); //受信データ
  pinMode( PA2PIN,INPUT_PULLUP); //受信データ
  pinMode( PA3PIN,INPUT_PULLUP); //受信データ

  digitalWrite(PB0PIN,LOW);
  digitalWrite(PB1PIN,LOW);
  digitalWrite(PB2PIN,LOW);
  digitalWrite(PB3PIN,LOW);
  digitalWrite(PB4PIN,LOW);
  digitalWrite(PB5PIN,LOW);
  digitalWrite(PB6PIN,LOW);
  digitalWrite(PB7PIN,LOW);
  digitalWrite(FLGPIN,LOW);

  sdinit();
}

//4BIT受信
byte rcv4bit(void){
//HIGHになるまでループ
  while(digitalRead(CHKPIN) != HIGH){
  }
//受信
  byte j_data = digitalRead(PA0PIN)+digitalRead(PA1PIN)*2+digitalRead(PA2PIN)*4+digitalRead(PA3PIN)*8;
//FLGをセット
  digitalWrite(FLGPIN,HIGH);
//LOWになるまでループ
  while(digitalRead(CHKPIN) == HIGH){
  }
//FLGをリセット
  digitalWrite(FLGPIN,LOW);
  return(j_data);
}

//1BYTE受信
byte rcv1byte(void){
  byte i_data = 0;
  i_data=rcv4bit()*16;
  i_data=i_data+rcv4bit();
  return(i_data);
}

//1BYTE送信
void snd1byte(byte i_data){
//下位ビットから8ビット分をセット
  digitalWrite(PB0PIN,(i_data)&0x01);
  digitalWrite(PB1PIN,(i_data>>1)&0x01);
  digitalWrite(PB2PIN,(i_data>>2)&0x01);
  digitalWrite(PB3PIN,(i_data>>3)&0x01);
  digitalWrite(PB4PIN,(i_data>>4)&0x01);
  digitalWrite(PB5PIN,(i_data>>5)&0x01);
  digitalWrite(PB6PIN,(i_data>>6)&0x01);
  digitalWrite(PB7PIN,(i_data>>7)&0x01);
  digitalWrite(FLGPIN,HIGH);
//HIGHになるまでループ
  while(digitalRead(CHKPIN) != HIGH){
  }
  digitalWrite(FLGPIN,LOW);
//LOWになるまでループ
  while(digitalRead(CHKPIN) == HIGH){
  }
}

//小文字->大文字
char upper(char c){
  if('a' <= c && c <= 'z'){
    c = c - ('a' - 'A');
  }
  return c;
}

//ファイル名の最後が「.x1t」でなければ付加
void addx1t(char *f_name){
  unsigned int lp1=0;
  while (f_name[lp1] != 0x0D && f_name[lp1] != 0x00){
    lp1++;
  }
  if (f_name[lp1-4]!='.' ||
    ( f_name[lp1-3]!='X' &&
      f_name[lp1-3]!='x' ) ||
      f_name[lp1-2]!='1' ||
    ( f_name[lp1-1]!='T' &&
      f_name[lp1-1]!='t' ) ){
         f_name[lp1++] = '.';
         f_name[lp1++] = 'x';
         f_name[lp1++] = '1';
         f_name[lp1++] = 't';
  }
  f_name[lp1] = 0x00;
}

//SDカードから読込
void f_load(void){
//ファイルネーム取得
  for (unsigned int lp1 = 0;lp1 <= 32;lp1++){
    f_name[lp1] = rcv1byte();
////  Serial.print(f_name[lp1],HEX);
  }
////  Serial.println("");
////  Serial.println(f_name);
  addx1t(f_name);
////  Serial.println(f_name);
//ファイルが存在しなければERROR
  if (SD.exists(f_name) == true){
//ファイルオープン
    File file = SD.open( f_name, FILE_READ );
    if( true == file ){
//ファイル種類コードの判別を撤廃
//      if( file.read() == 0x01){
//状態コード送信(OK)
        snd1byte(0x00);
        byte wk1 = 0;
        wk1 = file.read();
        snd1byte(wk1);
        for (unsigned int lp1 = 0;lp1 <= 16;lp1++){
          wk1 = file.read();
          snd1byte(wk1);
        }
//ファイルサイズ取得
        byte f_length2 = file.read();
        byte f_length1 = file.read();
        unsigned int f_length = f_length1*256+f_length2;
        snd1byte(f_length2);
        snd1byte(f_length1);
//スタートアドレス取得
        byte s_adrs2 = file.read();
        byte s_adrs1 = file.read();
        unsigned int s_adrs = s_adrs1*256+s_adrs2;
        snd1byte(s_adrs2);
        snd1byte(s_adrs1);
//実行アドレス取得
        byte g_adrs2 = file.read();
        byte g_adrs1 = file.read();
        unsigned int g_adrs = g_adrs1*256+g_adrs2;
        snd1byte(g_adrs2);
        snd1byte(g_adrs1);

        for (unsigned int lp1 = 0;lp1 <= 7;lp1++){
          wk1 = file.read();
          snd1byte(wk1);
        }

//データ送信
        for (unsigned int lp1 = 0;lp1 < f_length;lp1++){
            byte i_data = file.read();
            snd1byte(i_data);
////  Serial.print(s_adrs+lp1,HEX);
////  Serial.println(i_data,HEX);
        }
        file.close();
//       } else {
//状態コード送信(ERROR)
//        snd1byte(0xF2);
          sdinit();
//      }  
     } else {
//状態コード送信(ERROR)
      snd1byte(0xFF);
      sdinit();
   }  
   } else {
//状態コード送信(FILE NOT FIND ERROR)
    snd1byte(0xF1);
    sdinit();
  }
}

// SD-CARDのFILELIST
void dirlist(void){
//比較文字列取得 32+1文字まで
  for (unsigned int lp1 = 0;lp1 <= 32;lp1++){
    c_name[lp1] = rcv1byte();
////  Serial.print(c_name[lp1],HEX);
  }
////  Serial.println("");
////  Serial.println(c_name);
//
  File file = SD.open( "/" );
  File entry =  file.openNextFile();
  int cntl2 = 0;
  unsigned int br_chk =0;
  int page = 1;
//全件出力の場合には20件出力したところで一時停止、キー入力により継続、打ち切りを選択
  while (br_chk == 0) {
////  Serial.println("TEST0");
    if(entry){
      entry.getName(f_name,36);
////  Serial.println(f_name);
      unsigned int lp1=0;
//一件送信
//比較文字列でファイルネームを先頭10文字まで比較して一致するものだけを出力
      if (f_match(f_name,c_name)){
        while (lp1<=36 && f_name[lp1]!=0x00){
        snd1byte(upper(f_name[lp1]));
////  Serial.print(f_name[lp1],HEX);
        lp1++;
        }
        snd1byte(0x0D);
        snd1byte(0x00);
////  Serial.println("");
////  Serial.println(f_name);
        cntl2++;
      }
    }
    if (!entry || cntl2 > 19){
//継続・打ち切り選択指示要求
////  Serial.println("TEST1");
      snd1byte(0xfe);

//選択指示受信(0:継続 B:前ページ 以外:打ち切り)
      br_chk = rcv1byte();
//前ページ処理
      if (br_chk==0x42){
//先頭ファイルへ
        file.rewindDirectory();
//entry値更新
        entry =  file.openNextFile();
//もう一度先頭ファイルへ
        file.rewindDirectory();
        if(page <= 2){
//現在ページが1ページ又は2ページなら1ページ目に戻る処理
          page = 0;
        } else {
//現在ページが3ページ以降なら前々ページまでのファイルを読み飛ばす
          page = page -2;
          cntl2=0;
          while(cntl2 < page*20){
            entry =  file.openNextFile();
//          if (upper(f_name[0]) == pg0 || pg0 == 0x20){
            if (f_match(f_name,c_name)){
              cntl2++;
            }
          }
        }
        br_chk=0;
      }
      page++;
      cntl2 = 0;
    }
//ファイルがまだあるなら次読み込み、なければ打ち切り指示
    if (entry){
      entry =  file.openNextFile();
    }else{
      br_chk=1;
    }
//FDLの結果が20件未満なら継続指示要求せずにそのまま終了
    if (!entry && cntl2 < 20 && page ==1){
      break;
    }
  }
//処理終了指示
  snd1byte(0xFF);
  snd1byte(0x00);
}

//f_nameとc_nameをc_nameに0x00が出るまで比較
//FILENAME COMPARE
boolean f_match(char *f_name,char *c_name){
  boolean flg1 = true;
  unsigned int lp1 = 0;
  while (lp1 <=32 && c_name[0] != 0x00 && flg1 == true){
    if (upper(f_name[lp1]) != c_name[lp1+1]){
      flg1 = false;
    }
    lp1++;
    if (c_name[lp1+1]==0x00){
      break;
    }
  }
//  if (flg1){
//  }else{
//  }
  return flg1;
}

//91hでMSHED ライト インフォメーション代替処理
void mon_whead(void){
char m_info[130];
unsigned int lp1,lp2;
unsigned int n_len,e_len;
//インフォメーションブロック受信
  for (lp1 = 0;lp1 < 32;lp1++){
    m_info[lp1] = rcv1byte();
////  Serial.println(m_info[lp1],HEX);
  }
//ファイルネーム部分(13文字)取り出し
  for (lp1 = 0;lp1 < 13;lp1++){
    name1[lp1] = m_info[lp1+1];
  }
  name1[13]=0x00;
  lp1=13;
  n_len=13;
  while((lp1!=0) && (name1[lp1-1]==0x20)){
    n_len=lp1-1;
    lp1--;
  }

//拡張子部分(3文字)取り出し
  for (lp1 = 0;lp1 < 3;lp1++){
    name2[lp1] = m_info[lp1+14];
  }
  name2[3]=0x00;

  lp1=3;
  e_len=3;
  while((lp1!=0) && (name2[lp1-1]==0x20)){
    e_len=lp1-1;
    lp1--;
  }

  if (e_len!=0){
//拡張子部分(3文字)がある場合の処理(filename.ext)
    for (lp1=0;lp1<n_len;lp1++){
      m_name[lp1]=name1[lp1];
    }
    m_name[n_len]=0x2e;
    for (lp2=0;lp2<e_len;lp2++){
      m_name[n_len+1+lp2]=name2[lp2];
    }
    m_name[n_len+e_len+1]=0x0d;
    m_name[n_len+e_len+2]=0x00;
  } else{
//拡張子部分(3文字)が無い場合の処理(filename)
    for (lp1=0;lp1<n_len;lp1++){
      m_name[lp1]=name1[lp1];
    }
    m_name[n_len]=0x0d;
    m_name[n_len+1]=0x00;
  }

//DOSファイルネーム用に.X1Tを付加
  addx1t(m_name);
////  Serial.println(m_name);
//  m_info[16] = 0x0d;
//ファイルが存在すればdelete
  if (SD.exists(m_name) == true){
    SD.remove(m_name);
  }
//ファイルオープン
  File file = SD.open( m_name, FILE_WRITE );
  if( true == file ){
//状態コード送信(OK)
    snd1byte(0x00);
//インフォメーションブロックwrite
    for (lp1 = 0;lp1 < 32;lp1++){
      file.write(m_info[lp1]);
    }
    file.close();
////  Serial.println("Infomation Block Write OK");
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF1);
    sdinit();
////  Serial.println("Infomation Block Write ERROR");
  }
}

//92hでMSDAT ライト データ代替処理
void mon_wdata(void){
//ファイルサイズ取得
  int f_length1 = rcv1byte();
  int f_length2 = rcv1byte();
//ファイルサイズ算出
  unsigned int f_length = f_length1+f_length2*256;
////  Serial.print("Write Size :");
////  Serial.println(f_length,HEX);
//ファイルオープン
  File file = SD.open( m_name, FILE_WRITE );
  if( true == file ){
//状態コード送信(OK)
    snd1byte(0x00);
//実データ
    long lp1 = 0;
    while (lp1 <= f_length-1){
      int i=0;
      while(i<=255 && lp1<=f_length-1){
        s_data[i]=rcv1byte();
        i++;
        lp1++;
      }
      file.write(s_data,i);
    }
    file.close();
////  Serial.println("Data Block Write OK");
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF1);
    sdinit();
////  Serial.println("Data Block Write ERROR");
  }
}

//MLHED リード インフォメーション代替処理
void mon_lhead(void){
//リード データ POINTクリア
  m_lop=32;
//ファイルネーム取得
  for (unsigned int lp1 = 0;lp1 <= 32;lp1++){
    byte i_data = rcv1byte();
    if (i_data==0x00){i_data=0x0d;}
    m_name[lp1] = i_data;

////  Serial.println(m_name[lp1],HEX);
  }
  addx1t(m_name);
////  Serial.println(m_name);
//ファイルが存在しなければERROR
  if (SD.exists(m_name) == true){
    snd1byte(0x00);
//ファイルオープン
    File file = SD.open( m_name, FILE_READ );
    if( true == file ){
      snd1byte(0x00);
      for (unsigned int lp1 = 0;lp1 < 32;lp1++){
          byte i_data = file.read();
          snd1byte(i_data);
      }
      file.close();
      snd1byte(0x00);
////  Serial.println("Infomation Block Read OK");
    } else {
//状態コード送信(ERROR)
      snd1byte(0xFF);
      sdinit();
////  Serial.println("Infomation Block Read Error");
    }  
  } else {
//状態コード送信(FILE NOT FIND ERROR)
    snd1byte(0xF1);
    sdinit();
////  Serial.println("Infomation Block Read Error");
  }
}

//MLDAT リード データ代替処理
void mon_ldata(void){
// 2025.12.4 addx1tが不要な処理であったため削除
//  addx1t(m_name);
//ファイルが存在しなければERROR
  if (SD.exists(m_name) == true){
    snd1byte(0x00);
//ファイルオープン
    File file = SD.open( m_name, FILE_READ );
    if( true == file ){
      snd1byte(0x00);
      file.seek(m_lop);
//読み出しサイズ取得
      int f_length2 = rcv1byte();
      int f_length1 = rcv1byte();
      unsigned int f_length = f_length1*256+f_length2;
      for (unsigned int lp1 = 0;lp1 < f_length;lp1++){
        byte i_data = file.read();
        snd1byte(i_data);
      }
      file.close();
      m_lop=m_lop+f_length;
      snd1byte(0x00);
////  Serial.println("Data Block Read OK");
    } else {
//状態コード送信(ERROR)
      snd1byte(0xFF);
////  Serial.println("Data Block Read Error");
    }  
  } else {
//状態コード送信(FILE NOT FIND ERROR)
    snd1byte(0xF1);
    sdinit();
////  Serial.println("Data Block Read Error");
  }
}

void loop()
{
  digitalWrite(PB0PIN,LOW);
  digitalWrite(PB1PIN,LOW);
  digitalWrite(PB2PIN,LOW);
  digitalWrite(PB3PIN,LOW);
  digitalWrite(PB4PIN,LOW);
  digitalWrite(PB5PIN,LOW);
  digitalWrite(PB6PIN,LOW);
  digitalWrite(PB7PIN,LOW);
  digitalWrite(FLGPIN,LOW);
//コマンド取得待ち
////  Serial.print("cmd:");
  byte cmd = rcv1byte();
////  Serial.println(cmd,HEX);
  if (eflg == false){
    switch(cmd) {
//81hでSDカードからload
      case 0x81:
////  Serial.println("LOAD START");
//状態コード送信(OK)
        snd1byte(0x00);
        f_load();
        break;
//83hでファイルリスト出力
      case 0x83:
////  Serial.println("FILE LIST START");
//状態コード送信(OK)
        snd1byte(0x00);
////  Serial.println("START");
        sdinit();
        dirlist();
        break;
      case 0x91:
//91hでMSHED ライト インフォメーション代替処理
////  Serial.println("Wright Infomation START");
//状態コード送信(OK)
        snd1byte(0x00);
        mon_whead();
        break;
//92hでMSDAT ライト データ代替処理
      case 0x92:
////  Serial.println("Wright Data START");
//状態コード送信(OK)
        snd1byte(0x00);
        mon_wdata();
        break;
//93hでMLHED リード インフォメーション代替処理
      case 0x93:
////  Serial.println("Read Infomation START");
//状態コード送信(OK)
        snd1byte(0x00);
        mon_lhead();
        break;
//94hでMLDAT リード データ代替処理
      case 0x94:
////  Serial.println("Read Data START");
//状態コード送信(OK)
        snd1byte(0x00);
        mon_ldata();
        break;
      default:
//状態コード送信(CMD ERROR)
        snd1byte(0xF4);
    }
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF0);
    sdinit();
  }
}
