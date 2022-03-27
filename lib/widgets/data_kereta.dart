import 'package:flutter/material.dart';

class DataPeserta extends StatelessWidget {
  const DataPeserta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Barang",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/smk3.jpg"), fit: BoxFit.cover)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1000,
                      height: 400,
                      margin: EdgeInsets.all(15),
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Id',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Nama',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tanggal Daftar',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'No pendaftaran',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tanggal Lahir',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tempat Lahir',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Asal Kota',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Resta')),
                              DataCell(Text('21-03-2022')),
                              DataCell(Text('01')),
                              DataCell(Text('30-10-2004')),
                              DataCell(Text('Bandung')),
                              DataCell(Text('Bandung')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('2')),
                              DataCell(Text('Deby')),
                              DataCell(Text('21-03-2022')),
                              DataCell(Text('02')),
                              DataCell(Text('30-11-2004')),
                              DataCell(Text('Bandung')),
                              DataCell(Text('Bandung')),
                            ],
                          ),
                        ],
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
