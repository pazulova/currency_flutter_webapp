

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/currency_model.dart';

class UrlConst {

   String urlApi = "https://nbu.uz/uz/exchange-rates/json/";
   String imageUrl = "https://countryflagsapi.com/png/";
 

}
   
class FetchAllCurrency{
 var data = [];
 
 List<CurrencyModel> result = [];


    // ignore: non_constant_identifier_names
    Future<List<CurrencyModel>> getListAllCurrency ({String? querrr}) async {
    var  url = Uri.parse(UrlConst().urlApi);
    var response = await http.get(url);
   try {
  if( response.statusCode == 200 ){
     data = json.decode(response.body);
  
    result = data.map((e) => CurrencyModel.fromJson(e)).toList();
    if (querrr != null) {
       result = result.where((element) =>
      element.code!.toLowerCase().contains(querrr.toLowerCase())).toList();
    
    } 
    
   }else {
     print ('api erorrrrrrrrrr');
   } 
} on Exception catch (e) {
print('error: $e');
}
return result;
 
  } 
}
  
//   // ignore: non_constant_identifier_names
//     Future<List<CurrencyModel>> getListAllCurrencyImage ({String? querrr}) async {
//     var  url = Uri.parse(imageUrl);
//     var response = await http.get(url);
//    try {
//   if( response.statusCode == 200 ){
//      data = json.decode(response.body);
  
//     result = data.map((e) => CurrencyModel.fromJson(e)).toList();
//     if (querrr != null) {
//        result = result.where((element) =>
//       element.code!.toLowerCase().contains(querrr.toLowerCase())).toList();
    
//     } 
    
//    }else {
//      print ('api erorrrrrrrrrr');
//    } 
// } on Exception catch (e) {
// print('error: $e');
// }
// return result;
 
//   }

// }


