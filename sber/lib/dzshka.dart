import 'package:flutter/material.dart';
import 'AppBar.dart';

void main() {
  runApp(
    MaterialApp(
      title: "TEST MENU",
      home: MainTemplate(Align(alignment: Alignment.bottomCenter ,child:Works()), "Работы")
    )
  );
}


Container work_button = Container(width: 153, height: 34, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white ), child:  SizedBox(width: 153, height: 34, child: Text("Задано", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), );
Container work_button_off = Container(width: 153, height: 34, child:  SizedBox(width: 153, height: 34, child: Text("Задано", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), );
  
Container unwork_button = Container(width: 153, height: 34, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white ), child:  SizedBox(width: 153, height: 34, child: Text("Выполнено", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), );
Container unwork_button_off = Container(width: 153, height: 34, child:  SizedBox(width: 153, height: 34, child: Text("Выполнено", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), );

class Works extends StatefulWidget{

  
  @override
  _Works createState() => _Works();

}

class _Works extends State<StatefulWidget>{

  final Container background_button = Container(width: 317, height: 38, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xfff1f1f1), ));
  
   Container button_right = work_button;
  Container button_left = unwork_button_off;

  @override
  Widget build(BuildContext context){
    return ListView(children: [
        Stack(
          children:[
            background_button,
            Row(children: [
              GestureDetector(
                onTap:(){
                  button_right = work_button_off;
                  button_left = unwork_button;
                },
                child: button_right
              ),
              GestureDetector(
                onTap:(){
                  button_right = work_button;
                  button_left = unwork_button;
                },
                child: button_left,
              )
            ],
          )
        ])
      ],
    );
  }
}