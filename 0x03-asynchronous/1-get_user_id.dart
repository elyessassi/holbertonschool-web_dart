import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async{
  var str;
  Map<String, dynamic> theMap; 
  str = await fetchUserData();
  theMap = jsonDecode(str);
  return(theMap["id"]!);

}