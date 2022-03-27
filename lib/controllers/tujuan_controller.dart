import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dudeloka/services/tujuan_service.dart';
import 'package:get/get_rx/get_rx.dart';
import '../models/tujuans_model.dart';

class TujuansController extends GetxController {
  var datatujuanlist = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataTujuan();
  }

  void fetchDataTujuan() async {
    try {
      isLoading(true);
      var dataTujuan = await TujuanService.fetchDataTujuan();
      datatujuanlist.value = dataTujuan.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
