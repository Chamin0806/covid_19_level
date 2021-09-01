import 'dart:ffi';

import 'package:covid_19_level/errorPage.dart';
import 'package:covid_19_level/fontsManager.dart';
import 'package:covid_19_level/levelPage1.dart';
import 'package:covid_19_level/levelPage2.dart';
import 'package:covid_19_level/levelPage3.dart';
import 'package:covid_19_level/levelPage4.dart';
import 'package:covid_19_level/permissionHandler.dart';
import 'getLocation.dart';
import 'package:flutter/material.dart';
import 'levelScrap.dart';
import 'dart:io';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  homePageState createState() => homePageState();
}

class homePageState extends State<homePage> {
  permissionHandler permissionHandler1 = permissionHandler();
  String textMain = '데이터 가져오기';
  late Future myfuture;

  void initState(){
    myfuture = permissionHandler1.GetNowLocation();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/intro_background.png"), fit: BoxFit.cover,
              )
          ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 180)),
                Center(
                  child: Image(
                      image: AssetImage('images/intro_message.png'),width: 300,fit: BoxFit.cover
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  child: Center(
                    child: Container(
                      child: IconButton(
                        icon: Image.asset(('images/mask.png'),width: 300,fit: BoxFit.fill),
                        iconSize: 200,
                        onPressed: RunApp,
                      ),
                    ),
                  ),

                ),

                Padding(padding: EdgeInsets.only(top: 150)),
                Center(
                  child: Text(
                    '이 어플리케이션은 코시국에 거리두기 단계를 쉽게 \n파악하기 위해 만들어졌습니다.\n 별점 5점과 리뷰는 제작자에게 큰 힘이 됩니다.',

                    style: TextStyle(fontSize: 20,color: Colors.teal,fontFamily: MyFontFamily.middleschool),
                  ),
                ),
              ],
            )

          ),
        ),
      ),
    );
  }
  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text("one Text",
                style: TextStyle(fontSize:24.0),
                )
              ],
            ),
          )
        )
      )
    );

  }


  Future<void> RunApp() async {
    await LevelScrap();
    if(nowLoationLevel_Output == '1'){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>levelPage1()));
    }
    if(nowLoationLevel_Output == '2'&&!nowLocation_Output.contains("ERROR")){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>levelPage2()));
    }
    if(nowLoationLevel_Output == '3'){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>levelPage3()));
    }
    if(nowLoationLevel_Output == '4'){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>levelpage4()));
    }
    if(nowLoationLevel_Output == '0'||isError == true){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>levelPage3()));
    }


  }

}





