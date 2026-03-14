// import 'package:flutter/material.dart';
// import 'package:beautiful_staggered_grid_view/beautiful_staggered_grid_view.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class Whishlist2 extends StatelessWidget {
//   const Whishlist2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.notification_important_rounded),
//           ),
//         ],
//         leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
//         centerTitle: true,
//         title: Text(
//           'My Wishlist',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: MediaQuery.sizeOf(context).height * 0.23,

//               child: Row(
//                 mainAxisAlignment: .spaceAround,
//                 children: [
//                   // Image.asset('assets/qiz1.png'),
//                   // Image.asset('assets/qiz1.png'),

//                   SizedBox(
//                     height: 400,
//                     child: MasonryGridView.count(
//                       crossAxisCount: 2, 
//                       mainAxisSpacing: 8,
//                       crossAxisSpacing: 8,
//                       itemCount: 4,
//                       itemBuilder: (context, index) {
//                         return ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Image.asset(
//                             'assets/qiz1.png',
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
