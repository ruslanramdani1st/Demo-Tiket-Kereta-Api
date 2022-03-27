import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dudeloka/services/kereta_service.dart';
import 'package:get/get_rx/get_rx.dart';
import '../models/keretas_model.dart';

class KeretasController extends GetxController {
  var datakeretalist = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataKereta();
  }

  void fetchDataKereta() async {
    try {
      isLoading(true);
      var datakereta = await KeretaService.fetchDataAsal();
      datakeretalist.value = datakereta.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
