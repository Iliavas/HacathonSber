import 'package:flutter/material.dart';
import 'AppBar.dart';
import "MarkCard.dart";



void main() {
  runApp(
    MaterialApp(
      title: "TEST MENU",
      home: MarkWidget()
    )
  );
}

class MarkWidget extends StatelessWidget{

  @override
  Widget  build(BuildContext context){
    return MainTemplate(
      Align(alignment: Alignment.center,
      child: ListView(
        padding:EdgeInsets.only(left: 8),
        children: [
          MarksCard(
            subject: "Aнглийский",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),

          MarksCard(
            subject: "Русский язык",
            mark: "Оценка: 3",
            mark_color: Colors.orange,
          ),

          MarksCard(
            subject: "Алгебра",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),
          MarksCard(
            subject: "Геометерия",
            mark: "Оценка: 3",
            mark_color: Colors.orange,
          ),
          MarksCard(
            subject: "Литература",
            mark: "Оценка: 2",
            mark_color: Colors.red,
          ),
          MarksCard(
            subject: "Технология",
            mark: "Оценка: 5",
            mark_color: Color(0xff01c2ff),
          ),
          MarksCard(
            subject: "Мехатроника",
            mark: "Оценка: 5",
            mark_color: Color(0xff01c2ff),
          ),
          MarksCard(
            subject: "Aнглийский",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),
          MarksCard(
            subject: "Информатика",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),
          MarksCard(
            subject: "Биология",
            mark: "Оценка: 2",
            mark_color: Colors.red,
          ),
          MarksCard(
            subject: "Русский",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),
          MarksCard(
            subject: "Физика",
            mark: "Оценка: 4",
            mark_color: Color(0xff4edb75),
          ),
          MarksCard(
            subject: "Химия",
            mark: "Оценка: 5",
            mark_color: Color(0xff01c2ff),
          ),

        ],
      ),
      ),
      
      
      
      "Оценки");
  }
}