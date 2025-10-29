import 'package:class_task/Provider/Class_task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/addtocard.dart';
import 'Provider/class_task_funtion.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // API call safely using Future.microtask
    final future = Future.microtask(
      () => Provider.of<ClassTask>(context, listen: false).ProdectedFuntin(),
    );
    return Scaffold(
      appBar: AppBar(title: const Text("Provider API Demo")),
      body: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          return Consumer<ClassTask>(
            builder: (context, classmodel, child) {
              if (classmodel.ProdectedList.isEmpty) {
                return const Center(child: Text("No Data Found"));
              }
              return ListView.builder(
                itemCount: classmodel.ProdectedList.length,
                itemBuilder: (context, index) {
                  final id = classmodel.ProdectedList[index].id;
                  final post = classmodel.ProdectedList[index];
                  return Card(
                    elevation: 1,

                    margin: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Tite: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " ${post.title.toString()}",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                               Row(children: [
                                 Text(
                                   "Price ${post.price.toStringAsFixed(2)}",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.green,
                                   ),
                                 ),Spacer(),
                                 // Consumer<AddtoCard>(builder: (context,addlistmode, child){
                                 //   return ElevatedButton(onPressed: (){
                                 //     addlistmode.setaddlist(post);
                                 //   }, child: Text("Add to card"));
                                 //
                                 // })

                                 ElevatedButton(onPressed: (){

                                 }, child: Text("Add to card "))
                               ],)

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}




//
//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'Provider/class_task_funtion.dart';
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Consumer<ClassTask>(
//               builder: (context, classmodel, child) {
//                 if(classmodel.isloding){
//                   return Center(child: CircularProgressIndicator());
//                 }
//                 if(classmodel.ProdectedList.isEmpty){
//                   print("No Data Found");
//                   return Center(child: Text("No Data Found"));
//                 }
//                 return ListView.builder(
//                   itemCount: classmodel.ProdectedList.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: 200,
//                       width: 300,
//                       color: Colors.green,
//                       child:ListTile(title: Text(" naiem ${classmodel.ProdectedList![index].title}")),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
