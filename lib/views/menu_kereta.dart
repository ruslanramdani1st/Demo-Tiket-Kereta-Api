import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/kereta_controller.dart';

class MenuKereta extends StatelessWidget {
  const MenuKereta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KeretasController keretacontroller = Get.put(KeretasController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DudeLoka",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      ),
      body: Obx(() => keretacontroller.isLoading()
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ListView.builder(
                itemCount: keretacontroller.datakeretalist.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text(
                              'Tanggal Berangkat',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Nomor Polisi',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Nama Kereta',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Kota Asal',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Kota Tujuan',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Harga Tiket',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].tanggalBerangkat
                                .toString())),
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].nomorPolisi
                                .toString())),
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].namaKereta
                                .toString())),
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].kotaAsal
                                .toString())),
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].kotaTujuan
                                .toString())),
                            DataCell(Text(keretacontroller
                                .datakeretalist[index].harga
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
