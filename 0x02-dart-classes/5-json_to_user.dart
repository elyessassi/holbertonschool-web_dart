class User{
  String? name;
  int? age;
  double? height;
  int? id;

  // constructor
  User({required String name,required int age,required double height, required int id}){
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
  }

  // method
  toJson(){
    Map? Representation = {};
    Representation["id"] = this.id;
    Representation["name"] = this.name;
    Representation["age"] = this.age;
    Representation["height"] = this.height;
    return(Representation);
  }

  static User fromJson(Map<dynamic, dynamic> userJson){
    User newInstance = User(id:userJson["id"], name:userJson["name"], age:userJson["age"], height:userJson["height"]);
    return(newInstance);
  }   

  // toString method
  @override
  String toString(){
    return("User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})");
  }
}
