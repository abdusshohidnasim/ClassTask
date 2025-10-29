// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// class AddtoCard extends StatelessWidget {
//   const AddtoCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Container(
//         child: Consumer<AddtoCard>(builder: (context,addlistmode, child){
//           return ElevatedButton(onPressed: (){
//             addlistmode.;
//           }, child: Text("Add to card"));
//
//         }),
//       )
//
//   }
// }
//





//
//
// Consumer<AddtoCard>(builder: (context,addcardmodel,child){
// return Card(
// elevation: 1,
//
// margin: const EdgeInsets.all(8),
// child: SizedBox(
// height: 120,
// child: Row(
// children: [
// Text("${addcardmodel.add}")
// Container(
// margin: EdgeInsets.symmetric(
// vertical: 10,
// horizontal: 5,
// ),
// width: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.cyan,
// ),
// ),
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Text(
// "Tite: ",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// Text(
// " ${addcardmodel.}",
// style: TextStyle(fontWeight: FontWeight.w500),
// ),
// Spacer(),
// Row(children: [
// Text(
// "Price ${post.price.toStringAsFixed(2)}",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.green,
// ),
// ),Spacer(),
// Consumer<AddtoCard>(builder: (context,addlistmode, child){
// return ElevatedButton(onPressed: (){
// addlistmode.setaddlist(post);
// }, child: Text("Add to card"));
//
// })
//
// // ElevatedButton(onPressed: (){
// //
// // }, child: Text("Add to card "))
// ],)
//
// ],
// ),
// ),
// ],
// ),
// ),
// );
// })