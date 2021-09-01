import 'package:flutter/material.dart';
import 'fontsManager.dart';
import 'getLocation.dart';
import 'levelScrap.dart';

class levelPage3 extends StatefulWidget {
  const levelPage3({Key? key}) : super(key: key);

  @override
  _levelPage3State createState() => _levelPage3State();
}

class _levelPage3State extends State<levelPage3> {
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
                    image: AssetImage('images/level3_message.png'),width: 200,
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
                      image: AssetImage('images/distance3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      '5인 이상 집합금지 (최대 4명)',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Image(
                      image: AssetImage('images/eat3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      '식당 22시 이후 포장배달만 가능',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Image(
                      image: AssetImage('images/drink3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      '유흥시설 22시 이후 이용X\n노래,춤추기 금지',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Image(
                      image: AssetImage('images/sing3.png'),width: 70,
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
                      image: AssetImage('images/PC3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      'PC방 이용제한 없음\n좌석 한 칸 띄우기',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Image(
                      image: AssetImage('images/movie3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      '영화관 이용제한 없음\n동행자 외 좌석 한 칸 띄우기',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Image(
                      image: AssetImage('images/activity3.png'),width: 70,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      '실내체육시설 이용제한 없음\n수영장은 22시 이후 이용X',style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: MyFontFamily.middleschool),
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