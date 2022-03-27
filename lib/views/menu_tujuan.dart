import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/tujuan_controller.dart';

class MenuTujuan extends StatelessWidget {
  const MenuTujuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TujuansController tujuancontroller = Get.put(TujuansController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DudeLoka",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      ),
      body: Obx(() => tujuancontroller.isLoading()
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ListView.builder(
                itemCount: tujuancontroller.datatujuanlist.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text(
                              'No',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Nama Kota',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(tujuancontroller
                                .datatujuanlist[index].id
                                .toString())),
                            DataCell(Text(tujuancontroller
                                .datatujuanlist[index].kotaTujuan
                                .toString())),
                          ])
                        ],
                      ),
                    ),
                  );
                },
              ),
            )),
    );
  }
}
