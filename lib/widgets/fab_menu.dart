// import 'package:flutter/material.dart';

// class FABMenu extends StatelessWidget {
//   const FABMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return    AnimatedOpacity(
//                     // If the widget is visible, animate to 0.0 (invisible).
//                     // If the widget is hidden, animate to 1.0 (fully visible).
//                     opacity: animateOpacity ? 1.0 : 0.0,
//                     duration: const Duration(milliseconds: 500),
//                     child: Visibility(
//                       visible: fabMenuOpacity,
//                       child: Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             SizedBox(height: 38 + 44),
//                             Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.all(30),
//                                     margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: AppColors.whiteColor,
//                                     ),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: TextButtonCustom(
//                                                   labelText:
//                                                       'Presensi Kehadiran',
//                                                   onPressed: () {
//                                                     _fabMenuPresensi();
//                                                   }),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 40),
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: TextButtonCustom(
//                                                 labelText: 'Perizinan kerja',
//                                                 onPressed: () {},
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 40),
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: TextButtonCustom(
//                                                   labelText: 'Reimburs',
//                                                   onPressed: () {}),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 40),
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: TextButtonCustom(
//                                                 labelText: 'Lembur',
//                                                 onPressed: () {},
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 38),
//                             GestureDetector(
//                               onTap: () {
//                                 _showFAB();
//                               },
//                               child: Container(
//                                 height: 52,
//                                 width: 52,
//                                 padding: EdgeInsets.all(12),
//                                 decoration: BoxDecoration(
//                                   color: AppColors.greyD9Color,
//                                   borderRadius: BorderRadius.circular(26),
//                                 ),
//                                 child: SizedBox(
//                                   height: 32,
//                                   width: 32,
//                                   child: CustomIcon(
//                                     iconName: 'icon_close',
//                                     size: 32,
//                                     color: AppColors.blackColor,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                ;
//   }
// }