import 'package:flutter/material.dart';
import 'menu.dart';



class MainTemplate extends StatelessWidget {

  Widget Body = Container();
  String Name = "Sample App";

  MainTemplate(Widget body, String name) {this.Body = body; this.Name = name;}

  @override
  Widget build (BuildContext ctx) {
    return Scaffold(
      drawer: myDrawer,
      appBar: AppBar(
                backgroundColor: Colors.white,
          leading: Padding(
            
            padding: EdgeInsets.only(left: 10),
            child: Builder(
                builder: (BuildContext context) {
          return Align( alignment: Alignment.centerLeft,
              child:IconButton(
              onPressed: (){
                
                Scaffold.of(context).openDrawer();
              },
              icon:  Image(image: AssetImage("assets/3line.png"))
              )
              );
             }
            ),
            ),

        title: Row(
              children:[
            Image(image: AssetImage("assets/sber.png"))
          ]),
          actions: [
           Align(alignment: Alignment.centerRight,
          child:Text(Name,textAlign: TextAlign.right, style: TextStyle(color: Color(0xff5b5b5b), fontSize: 18, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), )),
          Container(width: 32,)
          ],
        
      ),
      body:  Body
    );
  }
}