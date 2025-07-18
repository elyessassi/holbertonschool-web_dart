String longestUniqueSubstring(String str){
  List<String> saved = [], uniqueSubs = [];
  int start = 0, max = -1;
  String longest = "";

  for(var i = 0; i < str.length; i++){
    if (!saved.contains(str[i])){
      saved.add(str[i]);
    }
    else if (saved.contains(str[i])){
      uniqueSubs.add(str.substring(start, i));
      saved = [str[i]];
      start = i;
    }
    if (i == str.length - 1){
      uniqueSubs.add(str.substring(start, str.length));
    }

  }
  for (var substr in uniqueSubs){
    if (max < substr.length){
      max = substr.length;
      longest = substr;
    }
  }
  return(longest);
}
