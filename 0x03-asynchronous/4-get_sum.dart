import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async{
  var userID, response, orders;
  double Total = 0;
  
  try{
    response = await fetchUserData();
  }
  catch(e){
    return(-1);
  }
  userID = jsonDecode(response)["id"];
  try{
    orders = jsonDecode(await fetchUserOrders(userID));
  }
  catch(e){
    return(-1);
  }
  for(var i = 0; i < orders.length; i++ ){
    try{
      Total = Total + jsonDecode(await fetchProductPrice(orders[i]));
    }
    catch(e){
      return(-1);
    }
  }
  return(Total);
}