import '6-password.dart';

class User extends Password{
  String name = "default";
  int age = 0;
  double height = 0;
  int id = 0;
  String user_password = "";

  // constructor
  User({required String name,required int age,required double height, required int id, required String user_password}) : super(password: user_password){
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
    this.user_password = password;
  }

  // method
  toJson(){
    Map? Representation = {};
    Representation["name"] = this.name;
    Representation["age"] = this.age;
    Representation["height"] = this.height;
    Representation["id"] = this.id;
    return(Representation);
  }

  static User fromJson(Map<dynamic, dynamic> userJson){
    User newInstance = User(name:userJson["name"], age:userJson["age"], height:userJson["height"], id:userJson["id"], user_password: userJson["user_password"]);
    return(newInstance);
  }   

  // toString method
  @override
  String toString(){
    password = this.user_password;
    return("User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${this.isValid()})");
  }
}
