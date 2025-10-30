

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Class_task_model.dart';
import 'Provider/addtocard.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Consumer<AddtoCard>(
        builder: (context, cart, child) {
          if (cart.addcardlist.isEmpty) {
            return Center(child: Text("Cart is empty"));
          }
          return ListView.builder(
            itemCount: cart.addcardlist.length,
            itemBuilder: (context, index) {
              final item = cart.addcardlist[index];
              final product = item['product'] as Prodected;
              final qty = item['quantity'] as int;
              return ListTile(
                title: Text(product.title),
                subtitle: Text("৳${product.price.toStringAsFixed(2)} x $qty"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => cart.removeItem(product.id),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer<AddtoCard>(
        builder: (context, cart, child) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Total: ৳${cart.totalPrice.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'Provider/addtocard.dart';
//
// class AddtoCardpage extends StatelessWidget {
//   const AddtoCardpage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AddtoCard>(
//       builder: (context, addtocardmodel, _) {
//         return Scaffold(
//           appBar: AppBar(
//             actions: [
//               ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)),
//             ],
//           ),
//           body: Container(
//             height: double.infinity,
//             child: Consumer<AddtoCard>(
//               builder: (context, addlistmode, child) {
//                 return ListView.builder(
//                   itemCount: addlistmode.addcardlist.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Card(
//                       elevation: 1,
//
//                       margin: const EdgeInsets.all(8),
//                       child: SizedBox(
//                         height: 120
//                         ,
//                         child: Row(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.symmetric(
//                                 vertical: 10,
//                                 horizontal: 5,
//                               ),
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.cyan,
//                               ),
//                             ),
//                             Expanded(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min, // ✅ Column নিজে height ঠিক করবে
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Tite: ",
//                                     style: TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     " ${addlistmode.addcardlist}",
//                                     style: TextStyle(fontWeight: FontWeight.w500),
//                                   ),
//
//                                   Row(children: [
//                                     // Text(
//                                     //   "Price ${post.price.toStringAsFixed(2)}",
//                                     //   style: TextStyle(
//                                     //     fontWeight: FontWeight.bold,
//                                     //     color: Colors.green,
//                                     //   ),
//                                     // ),
//                                    // SizedBox(width: 10,height: 10,),
//                                     // Consumer<AddtoCard>(builder: (context,addlistmode, child){
//                                     //   return ElevatedButton(onPressed: (){
//                                     //     addlistmode.setaddlist(post,quantity: 1,);
//                                     //
//                                     //
//                                     //   }, child: Text("Add to card"));
//                                     //
//                                     // })
//
//                                     Consumer<AddtoCard>(
//                                       builder: (context, addlistmode, child) {
//                                         return ElevatedButton(
//                                           onPressed: () {
//                                            // print("list${addlistmode.addcardlist}");
//
//
//                                            addlistmode.removeItem(productId)
//
//                                             // ScaffoldMessenger.of(context).showSnackBar(
//                                             //   SnackBar(
//                                             //     content: Text("${post.title} added to cart"),
//                                             //     duration: Duration(seconds: 1),
//                                             //   ),
//                                             // );
//                                           },
//                                           child: Text("Add to card"),
//                                         );
//                                       },
//                                     )
//
//
//
//
//
//
//
//
//
//                                     //
//                                     // ElevatedButton(onPressed: (){
//                                     //
//                                     //
//                                     // }, child: Text("Add to card "))
//                                   ],)
//
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
