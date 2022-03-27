import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dudeloka/services/asal_service.dart';
import 'package:get/get_rx/get_rx.dart';
import '../models/asals_model.dart';

class AsalController extends GetxController {
  var dataasalist = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataAsal();
  }

  void fetchDataAsal() async {
    try {
      isLoading(true);
      var datasal = await AsalService.fetchDataAsal();
      dataasalist.value = datasal.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
