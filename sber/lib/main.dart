import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Matr",
    home: Scaffold(
      appBar: AppBar(title: Text("  dfwefwef")),
       body: RaisedButton(
          
         onPressed: null,
            child: Container(
              width: 297,
              height: 57,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
              color: Color(0xfff1f1f1), ), 
              padding: const EdgeInsets.only(left: 85, right: 84, ), 
              child: Center( 
                child: Text("Учитель", 
                style: TextStyle(color: Color(0xff282828), 
                fontSize: 18, fontFamily: "SF Pro Display Thin", 
                fontWeight: FontWeight.w500, 
              ), 
            ),
            ) 
          )
        ),
    )
   )
  );
}