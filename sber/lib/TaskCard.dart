import 'package:flutter/material.dart';
import "AppBar.dart";
import "registration.dart";

// void main() {
//   runApp(
//     MaterialApp(
//       title: "TEST MENU",
//       home: MainTemplate(Container(color: Colors.white, child:TaskCard(
//         Navigation:Registration(),
//         thema: "Программирование Python",
//         subject: "Информатика",
//         number_tasks: "34 задания",
//         dedLine: "Сделать до 13:00",
//         )
//         ), "Работы")
//     )
//   );
// }

class TaskCard extends StatelessWidget{
  TaskCard({this.Navigation,this.thema, this.subject, this.number_tasks, this.dedLine});
  
  final String thema; //тема задания
  final String dedLine; //время исполнение (до) формат: "Сделать до: чч:мм"
  final String number_tasks; //количество заданий (текстом, 20 заданий,  1 задание)
  final String subject; //предмет
  final Widget Navigation; // виджет, куда попадаешь при нажатии на кнопку Сделать до



  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
      Container(height: 6,),
      Container(
  width: 317, 
  height: 81, 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5), 
    color: Color(0xfff6f6f6), 
    ), 
  child: Stack(
    children:[
      Positioned(
        left: 14,
         top: 11, 
         child: SizedBox(
           width: 211, 
           child: Text(
             thema, 
             style: TextStyle(
               color: Color(0xff282828), 
               fontSize: 14, 
               fontFamily: "SF Pro Display", 
               fontWeight: FontWeight.w500, 
               ), 
              ), 
            ),
          ),
          Positioned(
            left: 14,
            top: 31, 
            child: SizedBox(
              width: 108, 
              child: Text(
                subject, 
                style: TextStyle(
                  color: Color(0xff282828), 
                  fontSize: 10, 
                  fontFamily: "SF Pro Display", 
                  fontWeight: FontWeight.w400, ), 
                ), 
              ),
            ),
            Positioned(
              left: 14, 
              top: 52, 
              child: Container(
                width: 108, 
                height: 23, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), 
                  color: Color(0xff0ee271), 
                  ), 
                ),
              ),
              GestureDetector(
                onTap: (){
                   MaterialPageRoute(builder: (context) => Navigation);
                },
              child:Positioned(
                left: 56, 
                top: 24, 
                child: SizedBox(
                  width: 108, 
                  height: 20, 
                  child: Text(
                    dedLine, 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 10, 
                       fontFamily: "SF Pro Display", 
                       fontWeight: FontWeight.w500, 
                       ), 
                      ), 
                    ),
                  ),
                ),
                Positioned(
                  left: 122, 
                  top: 31, 
                  child: SizedBox(
                    width: 103, 
                    child: Text(
                      number_tasks, 
                      style: TextStyle(
                        color: Color(0xff969696),
                         fontSize: 10, 
                         fontFamily: "SF Pro Display", 
                         fontWeight: FontWeight.w500, 
                         ), 
                        ), 
                      ),
                    ),Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight, 
                        child: Container(
                          width: 92, 
                          height: 81, 
                          child: Image(image:AssetImage("assets/racketa.png")),
                          ),
                         ),
                        ),
                      ],
                    ),
                  ),

      ]);
  }
}

