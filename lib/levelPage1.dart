import 'package:covid_19_level/levelScrap.dart';
import 'package:flutter/material.dart';

import 'fontsManager.dart';

class levelPage1 extends StatefulWidget {
  const levelPage1({Key? key}) : super(key: key);

  @override
  _levelPage1State createState() => _levelPage1State();
}

class _levelPage1State extends State<levelPage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/main_background.png"), fit: BoxFit.cover,
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Icon(
                        Icons.location_on,
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Text(nowLocation_Output,style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('images/level1_message.png'),width: 200,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 80)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '아래로 스크롤',style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Icon(
                          Icons.arrow_downward
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/distance1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '방역수칙 준수 (집합 제한X)',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/eat1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '식당 이용제한 없음',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/drink1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '유흥시설 이용제한 없음\n노래,춤추기 금지',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/sing1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '노래방 이용제한 없음\n시설 내 음식 섭취 불가',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/PC1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        'PC방 이용제한 없음\n좌석 띄우기 없음',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/movie1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '영화관 이용제한 없음\n좌석 띄우기 없음',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/activity1.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '실내체육시설 이용제한 없음',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                ],
              )
          ),

        ),
      ),

    );
  }
}