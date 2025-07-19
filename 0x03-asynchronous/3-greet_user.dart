import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async{
  var user, response;
  try{
    response = await fetchUserData();
  }
  catch(e){
    return("error caught: $e");
  }
  user = jsonDecode(response)["username"];
  return("Hello $user");
}

Future<String> loginUser() async{
  var isUser;
  try{
    isUser = await checkCredentials();
  }
  catch(e){
    return("error caught: $e");
  }
  if (isUser == true){
    print("There is a user: true");
    return(greetUser());
  }
  else{
    print("There is a user: false");
    return("Wrong credentials");
  }

}