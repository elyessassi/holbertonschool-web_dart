void outer(String name, String id){
  String inner(){
    String firstName = (name.split(" "))[0];
    String secondName = (name.split(" "))[1];
    return("Hello Agent ${secondName[0]}.$firstName your id is $id");
    
  }
  print(inner());
}

void main(){
  outer("elyes sassi", "12");
}