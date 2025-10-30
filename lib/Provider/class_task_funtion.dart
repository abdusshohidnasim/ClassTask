import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import 'Class_task_model.dart';
import 'package:http/http.dart' as http;

class ClassTask with ChangeNotifier {

  List <Prodected> _ProdectedList = [];
  bool _isloding = false;
  bool get isloding => _isloding;
  List<Prodected> get ProdectedList => _ProdectedList;
  Future<void> ProdectedFuntin() async {
    try {
      _isloding = true;
      notifyListeners();
      Response response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      );

      if(response.statusCode==200){
        print(response.statusCode.toString());
        //final  responsbody = Prodected.fromJson(response.body as Map<String, dynamic>) ;
        _ProdectedList = prodectedFromJson(response.body);
       //debugprint(_ProdectedList);
        debugPrint("edebar ${_ProdectedList}");
      }
      else{
        print(" else statusCode ${response.statusCode}");
      }
    } catch (e) {
    print("Exception Throw $e");
    }finally{
      _isloding = false;
      notifyListeners();
    }
  }
}
