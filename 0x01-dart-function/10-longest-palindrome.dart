String longestPalindrome(String s){
  List<String> Palindromes = [];
  int max = -1;
  String longest = "none";


  for (var i = 0; i < s.length - 3; i++){
    for (var j = s.length - 1; j >= i + 2; j--){
      if (isPalindrome(s.substring(i, j + 1)) == true){
        Palindromes.add(s.substring(i, j + 1));
      }
    }
  }
  // in a list of palindromes we will search for the longest one
  for (var substr in Palindromes){
    if (max < substr.length){
      max = substr.length;
      longest = substr;
    }
  }
  return(longest);

}

bool isPalindrome(String s){
  int start = 0, end = s.length - 1;

  if (s.length < 3){
    return(false);
  }
  while (start < end){
    if (s[start] != s[end]){
      return(false);
    }
    start = start + 1;
    end = end - 1;
  }
  return(true);
}