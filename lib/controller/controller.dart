// import 'package:get/get.dart';
// import 'package:mobi_agri/model/expert_data.dart';
// import 'package:mobi_agri/provider/info_provider.dart';

// class Controller extends GetxController {
//   late final Rx<List<ExpertData>> adviserData;
//   late final InfoProvider _expertProvider;
//   @override
//   void onInit() {
//     adviserData = Rx<List<ExpertData>>([]);
//     _expertProvider = InfoProvider(receivedExpertData: loadCustomExpert);
//     _expertProvider.getExpertList(type: '3');
//     super.onInit();
//   }

//   Future<void> loadCustomExpert(List<ExpertData> data, bool success) async {
//     if (success) {
//       adviserData.value = data;
//     }
//   }
// }
