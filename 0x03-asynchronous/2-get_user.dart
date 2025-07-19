import '2-util.dart';

Future<void> getUser() async{
  var user;
  try{
    user = await fetchUser();
    return(user);
  }
  catch(e){
    print("error caught: $e");
  }
}