// import 'package:customer/select_order/select_order_controller.dart';
// import 'package:customer/shared/context_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:shared/shared.dart';

// class SelectSubCategoryWidget extends StatelessWidget {
//   final MainCategory mainCategory;
//   const SelectSubCategoryWidget({ Key? key,required this.mainCategory }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return GridView.count(
// crossAxisCount: 2,
//       children: mainCategory.children.map<Widget>((e) => InkWell(
//         onTap: (){
//           context.riverpod.read(selectOrderControllerProvider.notifier).selectMainCategory(e) ;
//         },
//         child: Card(
//           child: Column(
//             children: [
//               Text(e.title),
//             ],
//           ) ,
//         ),
//       )).toList() ,
//     );
//   }
// }