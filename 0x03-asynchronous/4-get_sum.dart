import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async{
  var userID, response, orders;
  double Total = 0;
  try{
    response = await fetchUserData();
    userID = jsonDecode(response)["id"];
    orders = jsonDecode(await fetchUserOrders(userID));
    for(var i = 0; i < orders.length; i++ ){
      Total = Total + jsonDecode(await fetchProductPrice(orders[i]));
    }
    return(Total);
  }
  catch(e){
    return(-1);
  }
}  
