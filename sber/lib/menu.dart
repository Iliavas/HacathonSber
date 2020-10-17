import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "TEST MENU",
      home: Scaffold(
        appBar: AppBar(title: Text("TEST MENU")),
        drawer: myDrawer,
        ),
    )
  );
}
Drawer myDrawer = Drawer(
  child:ListView(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child:Row(
                children:[
                  Container(width:36),
                  Image(image: AssetImage("assets/3toch.png"))
                    ]
                  )
              ),
            Container(height: 140),
            ListTile(
              leading: CircleAvatar(
                radius: 29,
                backgroundColor: Color(0xfff1f1f1),
                child: Image(image: AssetImage("assets/Mask Group.png"))
              ),
              title:Row(
              children:[
              Text("Firesieht", 
                style: TextStyle(color: Color(0xff282828), 
                fontSize: 16, fontFamily: "SF Pro Display Thin", 
                fontWeight: FontWeight.w500, 
                  ) ,
                ),
              Container(
                width: 10,
              ),
              Text("Ученик", 
                style: TextStyle(color:Colors.black26, 
                fontSize: 12, fontFamily: "SF Pro Display Thin", 
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic 
                  ) ,
                ),
              ]),
            subtitle: Text("5 LvL", 
              style: TextStyle(color: Color(0xff282828), 
              fontSize: 14, 
              fontWeight: FontWeight.w500, 
                )
              ),
            ),
            Container(height: 42),
            GestureDetector(
              onTap: (){
                //переход на вкладку Курсы
              },
      child:
      Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children:[SizedBox(width: 225, height: 43, child: Text("Курсы", style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ), ),
      Container(width: 225, height: 1, color: Color(0xfff3f3f3), ),], ), 
              ),

              GestureDetector(
                onTap:(){
                  //переход на кладку ДЗ
                },
                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children:[SizedBox(width: 225, height: 43, child: Text("Домашняя работа", style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ), ),
      Container(width: 225, height: 1, color: Color(0xfff3f3f3), ),], ), 
              ),
              GestureDetector(
                onTap:(){
                  //переход к оценкам
                },
                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children:[SizedBox(width: 225, height: 43, child: Text("Оценки", style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ), ),
      Container(width: 225, height: 1, color: Color(0xfff3f3f3), ),], ),
              ),
            Container(height: 261),
            Row(
              children: [
                Container(width:29,),
                SizedBox(width: 125, child: Text("Нужна помощь?", style: TextStyle(fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ), ),
              ]),
               Row(
              children: [
                Container(width:29,),
                SizedBox(width: 125, child: Text("тех.поддержка", style: TextStyle(color:Colors.black26 ,fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ), ),
              ]),
          ],
          )
);