import 'package:flutter/cupertino.dart';
import 'package:pro/api_service.dart';

import 'model.dart';

class pro with ChangeNotifier {
  ApiService service = ApiService();
  List<Users>userlist = [];
  Future<void>fetchData() async {
    userlist = (await service.fetchProducts())!;
    print("=====>${userlist}");
    notifyListeners();
  }
}