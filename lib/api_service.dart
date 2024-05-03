import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pro/model.dart';

class ApiService {

  Future<List<Users>?> fetchProducts() async{
    var resp = await http.get(Uri.parse("https://dummyjson.com/users"));
    if(resp.statusCode == 200){
      var json = jsonDecode(resp.body);
      var user = Model.fromJson(json);
      var list = user.users;
      return list;
    }else{
      throw Exception("err");
    }
  }

}