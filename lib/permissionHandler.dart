import 'package:permission_handler/permission_handler.dart';
import 'package:location/location.dart';
import 'package:covid_19_level/getLocation.dart';
import 'getLocation.dart';
import 'main.dart';


class permissionHandler{
  Location location = new Location();
  Future <String> GetNowLocation() async{
    var status = await Permission.location.status;
    bool _serviceEnabled;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return "error 1";
      }
    }
    if (status.isDenied) {
      Permission.location.request();
      if (!status.isGranted) {
        return "ERROR 3";
      }
    }
    return '123';
  }
}
