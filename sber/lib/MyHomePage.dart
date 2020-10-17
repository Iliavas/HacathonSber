import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  List tags = ['математика', 'физика', 'русский язык', 'химия'];
  List categories = ['Дизайн', 'Программирование', 'Обработка', 'Игры'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          elevation: 0,
          backgroundColor: Colors.black,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //name section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 7),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/avatar.jpeg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Демид Парфеньев",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.location_on,
                                color: Colors.black54, size: 27),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Санкт-Петербург",
                                  style: TextStyle(
                                      color: Colors.black,
                                      wordSpacing: 2,
                                      letterSpacing: 3)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            //students
            Padding(
              padding: const EdgeInsets.only(
                  right: 38.0, left: 33, top: 15, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "253K",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        "Ученики",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    width: 0.2,
                    height: 22,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "178",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        "Курсов",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    width: 0.2,
                    height: 22,
                  ),
                  Container(
                    padding:
                    EdgeInsets.only(left: 13, right: 13, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blueAccent],
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft)),
                    child: Text(
                      "Подписаться",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),

            //tags section
            Container(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          border: Border.all(color: Colors.black)),
                      margin: EdgeInsets.only(right: 13),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 11.0, bottom: 5, right: 20, left: 20),
                        child: Text(tags[index],
                            style: TextStyle(color: Colors.black)),
                      ),
                    );
                  }),
            ),

            //gallery section
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(34))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 25.0, right: 25, left: 25),
                      child: Text(
                        'Портфолио',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25, left: 25),
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                              const EdgeInsets.only(right: 17.0, top: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(categories[index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19)),
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.greenAccent,
                                  )
                                ],
                              ),
                            );

                          }
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
