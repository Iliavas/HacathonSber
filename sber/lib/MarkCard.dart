import 'package:flutter/material.dart';
import 'AppBar.dart';
// void main() {
//   runApp(
//     MaterialApp(
//       title: "TEST MENU",
//       home: MainTemplate(
//         Align(
//           alignment:Alignment.center, 
//           child: MarksCard(
//           subject: "Информатика",
//           mark:"Оценка: 5",
//           mark_color:Color(0xff01c2ff)
//         )
//         ),
//         "Оценки"
//       )
//     )
//   );
// }


class MarksCard extends StatelessWidget{

MarksCard({this.subject, this.mark,this.mark_color});

final String mark; //str  вида "Оценка: X"
final Color mark_color; 
final String subject; //название предмета

@override
Widget build(BuildContext context){
    return Column(
      children:[
      Container(height: 6,),
      Container(
      width: 317, 
      height: 57, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), 
        color: Color(0xfff1f1f1), ), 
        child: Stack(
          children:[
            Positioned(
              left: 14, 
              top: 17, 
              child: SizedBox(
                width: 189, 
                child: Text(
                    mark,
                   style: TextStyle(
                     color: mark_color, 
                     fontSize: 22, 
                     fontFamily: "SF Pro Display", 
                     fontWeight: 
                     FontWeight.w500, 
                     ), 
                    ), 
                  ),
                ),
               Positioned(
                 left: 165, 
                 top: 19, 
                 child: Text(
                    subject, 
                   style: TextStyle(
                     color: Colors.black, 
                     fontSize: 18, 
                     fontFamily: "SF Pro Display", 
                     fontWeight: FontWeight.w400, 
                    ), 
                  ), 
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight, 
                    child: Opacity(
                      opacity: 0.50, 
                      child: Visibility(
                        visible: false, 
                        child: Container(
                          width: 35, 
                          height: 31, 
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xfff7ee1e), 
                              width: 1,
                              ), 
                            color: Color(0xfff7ee1e), 
                            ), 
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
      ]);
  }
}