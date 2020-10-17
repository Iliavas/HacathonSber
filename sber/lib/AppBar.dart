import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainTemplate extends StatelessWidget {

  Widget Body = Container(), Name = Container();

  MainTemplate(Widget body, name) {this.Body = body; this.Name = name;}


  @override
  Widget build (BuildContext ctx) {
    return Scaffold(
      appBar: 
        AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 8),
            child:Image.asset('assets/3toch.png')
          ),
          title: Name
        ),
        body:  Body
      );
  }
}