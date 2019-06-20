# button
processing button  
ボタンの実装例です。  
buttonクラスのメンバ関数としてrectButtonとcircleButtonを実装しています。  
引数は以下の通りです。  
  
```rectButton(左上x(float), 左上y(float), 幅(float), 高さ(float), 押している時の色(color型), 離している時の色（color型）, 押している時のテキスト(String), 離している時のテキスト(String), テキストのサイズ(int))```  
  
```circleButton(中心x(float), 中心y(float), 半径(float), 押している時の色(color型), 離している時の色（color型）, 押している時のテキスト(String), 離している時のテキスト(String), テキストのサイズ(int))```  
  
どちらともboolean型を返す関数で、ボタンが押されている時はtrue,　押されていなければfalseを返します。実装が面倒だったので、ellipseではなくcircleにしています。  

```
void draw(){
  if(rectBottun(/*arguments*/)){
    /*do something*/
  }
}
```
のように書けば、ボタンが押されている間`/*do something*/`の部分を実行することができます。
