import 'dart:convert';

import 'package:http/http.dart' as http;

printRmCharacters() async{
  var data, parsed_url;
  for (var i = 1; i < 43; i++){
    try{
      parsed_url = Uri.parse("https://rickandmortyapi.com/api/character?page=${i}");
      data = await http.get(parsed_url);
    }
    catch(e){
      return("error caught: $e");
    }
    data = jsonDecode(data.body)["results"];
    for (var characterInfo in data){
      print(characterInfo["name"]);
    }
  }  
}
