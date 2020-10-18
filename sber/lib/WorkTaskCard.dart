import 'package:flutter/material.dart';
import "AppBar.dart";
import "registration.dart";

// void main() {
//   runApp(
//     MaterialApp(
//       title: "TEST MENU",
//       home: MainTemplate( WorkTaskCard(
//         verdict: "Сделать работу над ошибками",
//         procents: "20% Верно",
//         mark:"2 Оценка",
//         number_tasks: "15 заданий",
//         mark_color: Colors.red,
//         subject: "Программирование",
//       ), "Работы")
//     )
//   );
// }

class WorkTaskCard extends StatelessWidget{
  WorkTaskCard({this.mark_color,this.mark,this.verdict, this.subject, this.number_tasks, this.procents});
  
  final String verdict; //вердикт проверки
  final String procents;  //правильность (проценты)
  final String number_tasks; //количество заданий (текстом, 20 заданий,  1 задание)
  final String subject; //предмет
  final String mark; //оценка (Формат:"Оценка: X")
  final Color mark_color;



  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children:[
    Container(height: 6),
    Container(width: 317, height: 81, 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5), 
      color: Color(0xfff6f6f6), 
      ), 
      child: 
      Stack(
        children:[
          Positioned(left: 14, top: 11, 
          child: SizedBox(
            width: 211, 
            child: Text(
              verdict, 
              style: TextStyle(color: Color(0xff282828), fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), 
              ), 
              ),
              ),
              Positioned(
                left: 14, top: 31, 
                child: SizedBox(width: 108, 
                child: Text(subject, style: TextStyle(color: Color(0xff282828), fontSize: 10, fontFamily: "SF Pro Display", fontWeight: FontWeight.w400, ),
                 ), 
                 ),
                 ),
                Positioned(left: 14, top: 52, 
                child: Visibility(visible: false, 
                child: Container(width: 108, height: 23, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), 
                  color: Color(0xff01c2ff), ), 
                  ),
                  ),
                  ),
                  
                  Positioned(left: 122, top: 31, 
                  child: SizedBox(width: 71, 
                  child: Text(number_tasks,
                  style: TextStyle(color: Color(0xff969696), fontSize: 10, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), 
                  ), 
                  ),
                  ),
                  Positioned(left: 14, top: 54, 
                  child: Text(procents, style: TextStyle(color:mark_color,fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ),
                   ), 
                   ),
                   Positioned(left: 122, top: 54, 
                   child: SizedBox(width: 103, 
                   child: Text(mark, 
                   style: TextStyle(color:mark_color,fontSize: 14, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ),
                    ),
                     ),
                     ),
                     Positioned.fill(
                       child: Align(
                         alignment: Alignment.topRight,
                          child: Container(width: 92, height: 81, child:Image(image: AssetImage("assets/ruka.png"),)),
                          ),
                          ),
                          ],
                          ),
                          )
      ]);
  }
}

