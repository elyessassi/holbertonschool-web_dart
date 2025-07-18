class Password{
  String password = "default";

  // checking if the password is valid
  bool isValid(){
    bool upperCase = false, lowerCase = false, Num = false;
    if (this.password.length < 8 || this.password.length > 16){
      return(false);
    }
    for (var i = 0; i < this.password.length; i++){
      if (this.password.codeUnitAt(i) >= 65 &&  this.password.codeUnitAt(i) <= 90){
        upperCase = true;
      }
      if (this.password.codeUnitAt(i) >= 97 &&  this.password.codeUnitAt(i) <= 122){
        lowerCase = true;
      }
      if (this.password.codeUnitAt(i) >= 48 &&  this.password.codeUnitAt(i) <= 57){
        Num = true;
      }
    }
    if (upperCase == true && lowerCase == true && Num == true){
      return(true);
    }
    return(false);
  }
  // overriding toString()
  @override
  String toString(){
    return("Your Password is: ${this.password}");
  }
    
}