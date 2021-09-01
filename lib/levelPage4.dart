import 'package:flutter/material.dart';

import 'fontsManager.dart';
import 'levelScrap.dart';

class levelpage4 extends StatefulWidget {
  const levelpage4({Key? key}) : super(key: key);

  @override
  _levelpage4State createState() => _levelpage4State();
}

class _levelpage4State extends State<levelpage4> {
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
                      image: AssetImage('images/level4_message.png'),width: 200,
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
                        image: AssetImage('images/distance4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '18시 이후 3인이상 집합금지\n(최대 2명)',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/eat4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '식당 21시 이후 포장배달만 가능',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/drink4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '유흥시설 집합금지 (이용X)',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/sing4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '노래방 22시 이후 이용X\n시설 내 음식 섭취 불가',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/PC4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        'PC방 22시 이후 이용X\n좌석 한 칸 띄우기',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/movie4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '영화관 22시 이후 이용X\n동행자 외 좌석 한 칸 띄우기',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image(
                        image: AssetImage('images/activity4.png'),width: 70,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        '실내체육시설 22시 이후 이용X',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
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