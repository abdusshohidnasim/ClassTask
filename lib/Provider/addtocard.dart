import 'package:flutter/cupertino.dart';

import 'Class_task_model.dart';

class AddtoCard with ChangeNotifier {
  final List<Map<String, dynamic>> _addcardlist = [];

  List<Map<String, dynamic>> get addcardlist => _addcardlist;

  void setaddlist(Prodected product, {int quantity = 1}) {
    final index = _addcardlist.indexWhere(
          (item) => item['product'].id == product.id,
    );

    if (index >= 0) {
      _addcardlist[index]['quantity'] += quantity;
    } else {
      _addcardlist.add({
        'product': product,
        'quantity': quantity,
      });
    }

    notifyListeners();
  }

  double get totalPrice {
    double total = 0;
    for (var item in _addcardlist) {
      final product = item['product'] as Prodected;
      final qty = item['quantity'] as int;
      total += product.price * qty;
    }
    return total;
  }

  void removeItem(int productId) {
    _addcardlist.removeWhere((item) => item['product'].id == productId);
    notifyListeners();
  }

  void clearCart() {
    _addcardlist.clear();
    notifyListeners();
  }
}

//
//
//
//







//
//
//
// import 'package:flutter/widgets.dart';
//
// import 'Class_task_model.dart';
//
// class AddtoCard with ChangeNotifier{
//   List<Map<String,dynamic>> _addcardlist = [];
//   List<Map<String,dynamic>> get addcardlist => _addcardlist;
//  void setaddlist(dynamic listitem,{required quantity}){
//     _addcardlist.add(listitem);
//     notifyListeners();
//   }
// }