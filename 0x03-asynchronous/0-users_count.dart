import '0-util.dart';

Future<void> usersCount() async{
  int x;
  x = await fetchUsersCount();
  print(x);
}
 