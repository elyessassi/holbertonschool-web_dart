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