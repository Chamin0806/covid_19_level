import 'dart:convert';

import 'package:location/location.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:covid_19_level/permissionHandler.dart';
import 'permissionHandler.dart';
import 'homePage.dart';
import 'package:http/http.dart' as http;

bool isError = false;
String firstLoc = '';
String secLoc = '';
Future <String> GetLocation() async {

  permissionHandler permissionHandler1 = permissionHandler();
  Location location = permissionHandler1.location;
  permissionHandler1.GetNowLocation();
  // 나중에 php로 돌려서 서버에서 처리하기
  LocationData _locationData;
  String _locResult;
  List coordinate;
  _locationData = await location.getLocation();
  _locResult = _locationData.toString().replaceAll(", long: ", ",");
  _locResult = _locResult.replaceAll("LocationData<lat: ", "");
  _locResult = _locResult.replaceAll(">", "");
  coordinate = _locResult.split(',');
  String locationKR;



//183.106.2.104/readme_de.txt
// ############ parse json ############
// Url = http://apis.vworld.kr/coord2jibun.do?x=' + coordinate[1] + '&y=' + coordinate[0] + '&output=json&epsg=epsg:4326&apiKey='+key
  try{
    final response = await http.post(
      Uri.parse("http://182.211.44.132/test.php"),
      body: ({'lon': coordinate[1].toString(), "lat": coordinate[0].toString()}),
    );
    var jsondata = await jsonDecode(response.body);
    locationKR = jsondata["ADDR"].toString();
    List A;
    A = locationKR.split(' ');
    firstLoc = A[0]; //ex) 서울특별시
    secLoc = A[1];
    isError = false;
  }
  catch(e){
    locationKR = "error";
    isError = true;
  }

  //final webScraper = WebScraper('http://apis.vworld.kr');
  // if (await webScraper.loadWebPage('/coord2jibun.do?x='+coordinate[1]+'&y='+coordinate[0]+'&output=json&epsg=epsg:4326&apiKey='+key)) {
  //   List<Map<String, dynamic>> locationParse = webScraper.getElement(
  //       'html', ['Text']);
    //$lon = "127.1076814144916";
    //     $lat = "37.554898735737424";
// e)중구
    if(firstLoc.contains('특별') || firstLoc.contains('광역')){
      firstLoc = firstLoc.replaceAll('특별시', ''); // 서울특별시 -> 서울
      firstLoc = firstLoc.replaceAll('광역시', ''); // 인천광역시 -> 인천
      firstLoc = firstLoc.replaceAll('특별자치시',''); //세종특별자치시 -> 세종
      firstLoc = firstLoc.replaceAll('특별자치도', ''); // 제주특별자치도 -> 제주
      return firstLoc;

    }else if(isError == true){
      secLoc = "ERROR 2";
      return secLoc;
    }
    else{
      return secLoc;
    }
  // }else{
  //   return "error 4";
  // }
}
