class User{
  String? name;
  int? age;
  double? height;

  // constructor
  User({required String name,required int age,required double height}){
    this.name = name;
    this.age = age;
    this.height = height;
  }

  // method
  toJson(){
    Map? Representation = {};
    Representation["name"] = this.name;
    Representation["age"] = this.age;
    Representation["height"] = this.height;
    return(Representation);
  }
}