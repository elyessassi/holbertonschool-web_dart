class Password{
  String _password = "default";

  // constructor
  Password({required String password}){
    this._password = password;
  }
 
  // checking if the password is valid
  

  bool isValid(){
    bool upperCase = false, lowerCase = false, Num = false;
    if (this._password.length < 8 || this._password.length > 16){
      return(false);
    }
    for (var i = 0; i < this._password.length; i++){
      if (this._password.codeUnitAt(i) >= 65 &&  this._password.codeUnitAt(i) <= 90){
        upperCase = true;
      }
      if (this._password.codeUnitAt(i) >= 97 &&  this._password.codeUnitAt(i) <= 122){
        lowerCase = true;
      }
      if (this._password.codeUnitAt(i) >= 48 &&  this._password.codeUnitAt(i) <= 57){
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
    return("Your Password is: ${this._password}");
  }
    
}