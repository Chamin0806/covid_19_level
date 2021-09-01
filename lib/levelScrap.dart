import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';
import 'homePage.dart';
import 'getLocation.dart';

String nowLocation_Output = "";
String nowLoationLevel_Output = '0';

Future<void> LevelScrap() async {
  final webScraper = WebScraper('http://ncov.mohw.go.kr');
  if (await webScraper.loadWebPage('/regSocdisBoardView.do')) {
    List<Map<String, dynamic>> _message = webScraper.getElement(
        'p.rssd_descript', ['button']);
    String cleanMessage;
    cleanMessage = _message.toString();
    cleanMessage = cleanMessage.replaceAll(', attributes: {Text: null}}, {title: ', '');
    cleanMessage = cleanMessage.replaceAll('[{title: ', '');
    cleanMessage = cleanMessage.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
    List levelList;
    levelList = cleanMessage.split(', attributes: {button: null}}, {title: ');
    //##### 스플릿 하는 과정 -> 꼭 정규 표현식으로 나중에 변경하기!! #####
    List splitLevel4 = levelList[0].split('\n');
    List splitLevel3 = levelList[1].split('\n');
    List splitLevel2 = levelList[2].split('\n');
    List splitLevel1 = levelList[3].split('\n');


    //###### loof 돌려야하는 부분 시작 ######
    //################ map으로 나중에 꼭 바꾸기 ################

    for(int a=1;a<splitLevel4.length-1;a++){
      List temporarilyLevel;
      temporarilyLevel = splitLevel4[a].split('(');
      temporarilyLevel[1] = temporarilyLevel[1].replaceAll(')','');
      splitLevel4[a] = temporarilyLevel[1];
      // for(int a = 0;a < splitLevel4.length;a++)splitLevel4 = splitLevel4[a].split(',');
    }
    for(int a=1;a<splitLevel3.length-1;a++){
      List temporarilyLevel;
      temporarilyLevel = splitLevel3[a].split('(');
      temporarilyLevel[1] = temporarilyLevel[1].replaceAll(')','');
      splitLevel3[a] = temporarilyLevel[1];
    }
    for(int a=1;a<splitLevel2.length-1;a++){
      List temporarilyLevel;
      temporarilyLevel = splitLevel2[a].split('(');
      temporarilyLevel[1] = temporarilyLevel[1].replaceAll(')','');
      splitLevel2[a] = temporarilyLevel[1];
    }
    for(int a=1;a<splitLevel1.length-1;a++){
      List temporarilyLevel;
      temporarilyLevel = splitLevel1[a].split('(');
      temporarilyLevel[1] = temporarilyLevel[1].replaceAll(')','');
      splitLevel1[a] = temporarilyLevel[1];
    }
    // ##############################
    //print(splitLevel1);  //현재 위치



    String nowLocation = await GetLocation();
    String nowLocation2 = await GetLocation();
    bool isFristCheck = false;
    String nowLoationLevel = '0';
    //print(nowLocation);  // 이 과정에서 메서드 호출하고 값 받는 시간보다 print가 더 빨리 실행됨.

    // 1레벨에 있는지 찾기
    // if(splitLevel1.contains(nowLocation)|| splitLevel2.contains(nowLocation)|| splitLevel3.contains(nowLocation)|| splitLevel4.contains(nowLocation)){
    //   //특정하게 지역명으로 되어있는것에 검색이 된다면
    //   print("찾음");
    // }else{
    //   List gyeonggi = ['경기','서울','인천','부천시','김포시','시흥시','광명시','안양시','수원시','과천시','의왕시','안양시','평택시','화성시','오산시','군포시','성남시','광주시','여주시','안성시','이천시','하남시','용인시','양평군','남양주시','구리시','의정부시','고양시','파주시','동두천시','연천군','가평군','양주시','포천시'];
    //   List gyeongnam = ['경남','부산','울산','거창군','함양군','합천군','산청군','창녕군','의령군','하동군','진주시','함안군','밀양시','양산시','김해시','창원시','고성군','사천시','고성군','남해군','통영시','거제시','의령군'];
    //   List gyeongbuk =['경북','대구','포항시','경주시','김천시','안동시','구미시','영주시','영천시','상주시','문경시','경산시','군위군','의성군','청송군','영양군','영덕군','청도군','고령군','성주군','칠곡군','에천군','봉화군','울진군','울릉군'];
    //   List chungbuk = ['충북','청주시','충주시','제천시','보은군','옥천군','영동군','증평군','진천군','괴산군','음성군','단양군'];
    //   List chungnam = ['충남','세종','대전','천안시','공주시','보령시','아산시','서산시','논산시','계룡시','당진시','금산군','부여군','서천군','청양군','홍성군','예산군','태안군'];
    //   List jeonnam = ['전남','광주','목포시','여수시','순천시','나주시','광양시','담양군','곡성군','구례군','고흥군','보성군','화순군','장흥군','강진군','해남군','영암군','무안군','함평군','영광군','장선군','완도군','진도군','신안군'];
    //   List jeonbuk = ['전북','군산시','익산시','완주군','전주시','정읍시','고창군','임실군','진안군','무주군','장수군','남원시','순창군'];
    //   //검색이 안된다면 -> 그 지역의 보다 큰 범위로 검색해야함.
    // }
    for(int a=0;a < splitLevel1.length;a++){

      if(splitLevel1[a].contains(nowLocation)){
        print(nowLocation + " -> 1단계");
        isFristCheck = true;
        nowLoationLevel = '1';
      }
    }
    // 2레벨에 있는지 찾기
    for(int a=0;a < splitLevel2.length;a++){

      if(splitLevel2[a].contains(nowLocation)){
        print(nowLocation + " -> 2단계");
        isFristCheck = true;
        nowLoationLevel = '2';
      }
    }
    // 3레벨에 있는지 찾기
    for(int a=0;a < splitLevel3.length;a++){

      if(splitLevel3[a].contains(nowLocation)){
        print(nowLocation + " -> 3단계");
        isFristCheck = true;
        nowLoationLevel = '3';
      }
    }
    // 4레벨에 있는지 찾기
    for(int a=0;a < splitLevel4.length;a++) {
      if (splitLevel4[a].contains(nowLocation)) {
        print(nowLocation + " -> 4단계");
        isFristCheck = true;
        nowLoationLevel = '4';
      }
    }
    List gyeonggi = ['경기','서울','인천','부천시','김포시','시흥시','광명시','안양시','수원시','과천시','의왕시','안양시','평택시','화성시','오산시','군포시','성남시','광주시','여주시','안성시','이천시','하남시','용인시','양평군','남양주시','구리시','의정부시','고양시','파주시','동두천시','연천군','가평군','양주시','포천시'];
    List gyeongnam = ['경남','부산','울산','거창군','함양군','합천군','산청군','창녕군','의령군','하동군','진주시','함안군','밀양시','양산시','김해시','창원시','고성군','사천시','고성군','남해군','통영시','거제시','의령군'];
    List gyeongbuk =['경북','문경','대구','포항시','경주시','김천시','안동시','구미시','영주시','영천시','상주시','문경시','경산시','군위군','의성군','청송군','영양군','영덕군','청도군','고령군','성주군','칠곡군','에천군','봉화군','울진군','울릉군'];
    List chungbuk = ['충북','청주시','충주시','제천시','보은군','옥천군','영동군','증평군','진천군','괴산군','음성군','단양군'];
    List chungnam = ['충남','세종','대전','천안시','공주시','보령시','아산시','서산시','논산시','계룡시','당진시','금산군','부여군','서천군','청양군','홍성군','예산군','태안군'];
    List jeonnam = ['전남','광주','목포시','여수시','순천시','나주시','광양시','담양군','곡성군','구례군','고흥군','보성군','화순군','장흥군','강진군','해남군','영암군','무안군','함평군','영광군','장선군','완도군','진도군','신안군'];
    List jeonbuk = ['전북','군산시','익산시','완주군','전주시','정읍시','고창군','임실군','진안군','무주군','장수군','남원시','순창군'];
    List gangwon = ['강원','원주시','춘천시','강릉시','동해시','속초시','삼척시','태백시','홍천군','철원군','횡성군','평창군','정선군','영월군','인제군','고성군','양양군','화천군','양구군'];
    if(gyeonggi.contains(nowLocation)) nowLocation2 = '경기';
    if(gyeongnam.contains(nowLocation)) nowLocation2 = '경남';
    if(gyeongbuk.contains(nowLocation)) nowLocation2 = '경북';
    if(chungbuk.contains(nowLocation)) nowLocation2 = '충북';
    if(chungnam.contains(nowLocation)) nowLocation2 = '충남';
    if(jeonnam.contains(nowLocation)) nowLocation2 = '전남';
    if(jeonbuk.contains(nowLocation)) nowLocation2 = '전북';
    if(gangwon.contains(nowLocation)) nowLocation2 = '강원';

    for(int a=0;a < splitLevel1.length;a++){

      if(splitLevel1[a].contains(nowLocation2)&&isFristCheck == false){
        print(nowLocation + " -> 1단계");
        nowLoationLevel = '1';
      }
    }
    // 2레벨에 있는지 찾기
    for(int a=0;a < splitLevel2.length;a++){

      if(splitLevel2[a].contains(nowLocation2)&&isFristCheck == false){
        print(nowLocation + " -> 2단계");
        nowLoationLevel = '2';
      }
    }
    // 3레벨에 있는지 찾기
    for(int a=0;a < splitLevel3.length;a++){

      if(splitLevel3[a].contains(nowLocation2)&&isFristCheck == false){
        print(nowLocation + " -> 3단계");
        nowLoationLevel = '3';
      }
    }
    // 4레벨에 있는지 찾기
    for(int a=0;a < splitLevel4.length;a++) {
      if (splitLevel4[a].contains(nowLocation2)&&isFristCheck == false) {
        print(nowLocation + " -> 4단계");
        nowLoationLevel = '4';
      }
    }
    if(nowLoationLevel != '1'&&nowLoationLevel != '2'&&nowLoationLevel != '3'&&nowLoationLevel != '4') nowLoationLevel = '0';
    print(nowLoationLevel);
    nowLoationLevel_Output = nowLoationLevel;
    nowLocation_Output = nowLocation;
    //nowLocation_Output nowLocationLevel_Output 가져가야함!!




    // print(splitLevel2);
    // print(splitLevel3);
    // print(splitLevel4);


    //###### loof 끝나는 부분 ######




    // cleanMessage = cleanMessage.replaceAll(', attributes: {button: null}}, {title: ', '@');
    //print(cleanMessage);
    //   return cleanMessage;
    //   String nowLoc = GetLocation() as String;
  }
}