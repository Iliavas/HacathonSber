import 'package:flutter/material.dart';
import 'package:sber/registration.dart';
import 'AppBar.dart';
import 'TaskCard.dart';
import 'WorkTaskCard.dart';

void main() {
  runApp(
    MaterialApp(
      title: "TEST MENU",
      home: MainTemplate(Works(), "Работы")
    )
  );
}


Container work_button = Container(width: 153, height: 34, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white ), child:  SizedBox(width: 153, height: 34, child: Align(alignment:Alignment.center, child:Text("Задано", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), ));
Container work_button_off = Container(width: 153, height: 34, child:  SizedBox(width: 153, height: 34, child: Align(alignment: Alignment.center,child:Text("Задано", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ), ));
  
Container unwork_button = Container(width: 153, height: 34, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white ), child:  SizedBox(width: 153, height: 34, child: Align(alignment: Alignment.center, child:Text("Выполнено", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ),) );
Container unwork_button_off = Container(width: 153, height: 34, child:  SizedBox(width: 153, height: 34, child: Align(alignment: Alignment.center ,child: Text("Выполнено", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ), ), ),));

List <Widget> workTaskList = 
[
  WorkTaskCard(
        verdict: "Сделать работу над ошибками",
        procents: "20% Верно",
        mark:"2 Оценка",
        number_tasks: "15 заданий",
        mark_color: Colors.red,
        subject: "Программирование",
      ),
  WorkTaskCard(
        verdict: "Все верно!",
        procents: "100% Верно",
        mark:"5 Оценка",
        number_tasks: "90 заданий",
        mark_color: Color(0xff01c2ff),
        subject: "Английский язык",
      ),
  WorkTaskCard(
        verdict: "Повторите материал!",
        procents: "85% Верно",
        mark:"4 Оценка",
        number_tasks: "33 задания",
        mark_color: Colors.orange,
        subject: "Геометрия",
      ),
];


List<Widget> workList = 
  [
    TaskCard(
      thema: "Пограммирование.Python",
      subject: "Информатика",
      dedLine: "Выполнить до 18:00",
      number_tasks: "100 заданий",
      Navigation: Registration(),
    ),
     TaskCard(
      thema: "Программирование. С++",
      subject: "Информатика",
      dedLine: "Выполнить до 18:00",
      number_tasks: "100 заданий",
      Navigation: Registration(),
    ),
     TaskCard(
      thema: "Теория чисел для развитых",
      subject: "Математика",
      dedLine: "Выполнить до 18:00",
      number_tasks: "26 заданий",
      Navigation: Registration(),
    ),
     TaskCard(
      thema: "Flutter. От Джуна до Сеньора",
      subject: "Жизнь",
      dedLine: "Выполнить до 18:00",
      number_tasks: "10000 заданий",
      Navigation: Registration(),
    ),
     TaskCard(
      thema: "Основы дизайна. Figma.",
      subject: "ИЗО",
      dedLine: "Выполнить до 18:00",
      number_tasks: "1 задание",
      Navigation: Registration(),
    ),
  ];




class Works extends StatefulWidget{

  
  @override
  _Works createState() => _Works();

}

class _Works extends State<StatefulWidget>{

  final Container background_button = Container(width: 317, height: 38, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xfff1f1f1), ));
  
  Container button_right = work_button;
  Container button_left = unwork_button_off;

  List <Widget> listView = workList;

  @override
  Widget build(BuildContext context){
    return ListView(
      padding: EdgeInsets.only(left: 8),
      children: [
        Container(height: 39),
        Row(
          children:[Container(width: 43),
            Stack(
          children:[
            background_button,
            Center( child: Row(children: [
              GestureDetector(
                onTap:(){setState(() {
                  button_right = work_button;
                  button_left = unwork_button_off;
                  listView = workList;
                });
                },
                child: button_right
              ),
              GestureDetector(
                onTap:(){setState(() {
                  button_right = work_button_off;
                  button_left = unwork_button;
                  listView = workTaskList;
                });
                },
                child: button_left,
              ),
            ],
          )
        )
        ])
      ])
      ] + listView,
    );
  }
}