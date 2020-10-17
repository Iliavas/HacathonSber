import 'package:flutter/material.dart';

//сделай import виджетов, к которым должно все переходить

// void main() {
//   runApp(MaterialApp(
//     title: "Registration",
//     home:Scaffold(
//        body:Registration()
//       )
//     )
//    );
// }

class Registration extends StatelessWidget{

  Container zone = Container(height: 20, width: 257);

  @override
  Widget build(BuildContext  context){

    Container changeCont(Color clr , String text ){
      return Container(
              width:297,
              height: 57,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
              color: clr, ), 
              padding: const EdgeInsets.only(left: 85, right: 84), 
              child: Center(
                child: Text(text, 
              style: TextStyle(color: Color(0xff282828), 
              fontSize: 18, fontFamily: "SF Pro Display Thin", 
              fontWeight: FontWeight.w500, 
              ) 
            )
          ) 
        );
    }

    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Цель использования", textAlign: TextAlign.center, style: TextStyle(color: Color(0xff282828), fontSize: 20, fontFamily: "SF Pro Display", fontWeight: FontWeight.w500, ), ),
        Image(image: AssetImage("assets/sampleMenMenu.png"), height:415),

          GestureDetector(
            onTap: (){
                //  Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ), //вставляешь имя виджета, к которому надо перейти (не забудь сделать import)
                // );
            },
            child: changeCont(Color(0xfff8ef1f), "Ученик"),
        ),
        zone,
        GestureDetector(
            onTap: (){
              //  Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ),
              //   );
            },
            child: changeCont(Color(0xfff1f1f1), "Учитель")
        ),
        zone,
        GestureDetector(
            onTap: (){
              //  Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ),
              //   );
            },
            child: changeCont(Color(0xfff8ef1f), "Художник")
        ),
        zone,
            GestureDetector(
            onTap: (){
              //  Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ),
              //   );
            },
            child: changeCont(Color(0xfff1f1f1), "Эксперт")
            )
        
      ],
    )
    );
  }
}