import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/asal_controller.dart';

class MenuAsal extends StatelessWidget {
  const MenuAsal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AsalController asalcontroller = Get.put(AsalController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DudeLoka",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      ),
      body: Obx(
        () => asalcontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: asalcontroller.dataasalist.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(15),
                                    child: DataTable(
                                      columns: const <DataColumn>[
                                        DataColumn(label: Text("No")),
                                        DataColumn(label: Text("Nama Kota")),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                            DataCell(Text(asalcontroller
                                                .dataasalist[index].id
                                                .toString())),
                                            DataCell(Text(asalcontroller
                                                .dataasalist[index].kotaAsal
                                                .toString())),
                                          ],
                                        ),
                                      ],
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              )),
      ),
    );
  }
}
