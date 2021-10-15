import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: new MyStatefulWidget(),));
}

class MyStatefulWidget extends StatefulWidget{  // 定義有狀態的Widget
  @override
  State<StatefulWidget> createState() => 
       // 在StatefulWidget 中必須實作狀態方法
       DiceState();   // 狀態改變時執行此方法變更骰子狀態
}

class DiceState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // 當State狀態變更時，Flutter會重新繪製畫面
    return Scaffold(
        // 採用 Scaffold 框架
        appBar: new AppBar(
          title: Text('StatefulWidget'),
        ),
        body: Column(
          // Column 每列一行
          children: <Widget>[  // children 表示陣列
            Image(  // 圖片
              image: AssetImage(
               "images/dice_" + getDicePoint().toString() + ".jpg"    
              ),
              width: 400,
            ),

            TextButton(  // 按鈕
              child: Text("投擲骰子"),
              onPressed: (){
                setState(() {
                  // 通知系統狀態改變，並進行更新
                });
              },
            )
          ],
        ),
    );
  }

  int getDicePoint(){  // 呼叫擲骰子函數
    return Random().nextInt(6) + 1;
  }
  
}
