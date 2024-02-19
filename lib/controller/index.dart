// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobi_agri/page/Adviser/controller.dart';
// import 'package:mobi_agri/widget/AdviserCard/index.dart';

// class Adviser extends StatelessWidget {
//   const Adviser({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final AdviserController c = Get.put(AdviserController());
//     return Container(
//       color: const Color.fromRGBO(242, 242, 242, 1),
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Obx(
//         () => ListView.builder(
//           itemCount: c.adviserData.value.length,
//           itemBuilder: (BuildContext context, int index) {
//             return AdviserCard(expertData: c.adviserData.value[index]);
//           },
//         ),
//       ),
//     );
//   }
// }
