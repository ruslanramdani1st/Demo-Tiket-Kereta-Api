import 'package:flutter/material.dart';

class MenuTujuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DudeLoka'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Daftar Data Tujuan',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              margin: EdgeInsets.all(16),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
