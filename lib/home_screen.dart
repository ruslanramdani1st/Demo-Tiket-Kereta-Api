import 'package:flutter/material.dart';
import 'widgets/index_screen.dart';

class HomeScreen extends StatelessWidget {
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
                'Selamat Datang',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              margin: EdgeInsets.all(16),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => IndexScreen(),
                  ),
                );
              },
              child: Text("M U L A I"),
            ),
          ],
        ),
      ),
    );
  }
}
